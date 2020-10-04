#' @title get_api
#' @description Retrieves a TatorAPI instance using the given host and token.
#' @param host URL of host. Default is https://www.tatorapp.com.
#' @param token API token.
#' @return TatorApi object
#' @export
get_api = function(host = "https://www.tatorapp.com", token = Sys.getenv("TATOR_TOKEN")) {
  instance <- TatorApi$new()
  instance$apiClient$apiKeys["Authorization"] <- stringr::str_interp("Token ${token}")
  instance$apiClient$basePath <- host
  return(instance)
}

#' @title chunked_create
#' @description Breaks a create_*_list operation into chunks.
#' @param FUN Function to call on each chunk.
#' @param project Unique integer identifying a project.
#' @param spec_list A list of spec entities.
#' @return Generator that yields a response.
#' @export
chunked_create = function(FUN, project, spec_list) {
  ret <- list()
  for (idx in seq(1, length(spec_list), 500)) {
    response <- FUN(project, purrr::compact(spec_list[idx:(idx+499)]))
    ret <- c(ret, response)
  }
  return(ret)
}

#' @title upload_media
#' @description Uploads a single media file.
#' @param api TatorApi object
#' @param type_id Unique integer identifying a media type.
#' @param path Path to the media file.
#' @param md5 md5 sum of the media.
#' @param section Media section to upload to.
#' @param fname Filename to use for upload.
#' @param upload_gid Group ID of the upload.
#' @param upload_uid Unique ID of the upload.
#' @param chunk_size Chunk size in bytes. Default is 2MB.
#' @export
upload_media = function(api, type_id, path, md5 = NULL, section = NULL, fname = NULL,
                        upload_gid = NULL, upload_uid = NULL, chunk_size = 2*1024*1024) {
  if (is.null(md5)) {
    md5 <- tools::md5sum(path)
  }
  
  if (is.null(upload_uid)) {
    upload_uid <- uuid::UUIDgenerate()
  }
  
  if (is.null(upload_gid)) {
    upload_gid <- uuid::UUIDgenerate()
  }
  
  if (is.null(fname)) {
    fname <- basename(path)
  }
  
  if (is.null(section)) {
    section <- "New Files"
  }
  
  host <- api$apiClient$basePath
  tusURL <- paste(host, "files/", sep = "/")
  tus <- TusClient$new(tusURL)
  tus$SetHeaders(api$apiClient$apiKeys['Authorization'])
  tus$SetHeaders(list("Upload-Uid" = upload_uid))
  uploader <- tus$Uploader(file_path = path, chunk_size = chunk_size, retries = 10, retry_delay = 15)
  num_chunks <- ceiling(uploader$GetFileSize()/chunk_size)
  
  last_progress <- 0
  print(last_progress)
  
  for (chunk_count in range(num_chunks)) {
    uploader$UploadChunk()
    this_progress <- round((chunk_count/num_chunks)*100, 1)
    if (this_progress != last_progress) {
      print(this_progress)
      last_progress <- this_progress
    }
  }
  
  mime_type <- mime::guess_type(fname)
  response <- api$GetMediaType(type_id)
  project_id <- response$project
  
  if (grepl("video", mime_type)) {
    response <- api$Transcode(project_id, TranscodeSpec$new(
      type = type_id,
      uid = upload_uid,
      gid = upload_gid,
      url = uploader$url,
      name = fname,
      section = section,
      md5 = md5
    ))
  } else {
    response <- api$CreateMedia(project_id, MediaSpec$new(
      type = type_id,
      uid = upload_uid,
      gid = upload_gid,
      url = uploader$url,
      name = fname,
      section = section,
      md5 = md5
    ))
  }
  return(response)
}

#' @title upload_media_archive
#' @description Uploads multiple media files as an archive.
#' @param api TatorApi object.
#' @param project_id Unique integer identifying a project.
#' @param paths Path to a media archive or list of paths to media files.
#' @param section Media section to upload to.
#' @param chunk_size Chunk size in bytes. Default is 2MB.
#' @returns Generator that yields tuple containing progress (0-100) and a
#'        response. The response is `None` until the last yield, when the response 
#' @export
upload_media_archive = function(api, project_id, paths, section = "Test Section", chunk_size = 2*1024*1024) {
  upload_uid <- uuid::UUIDgenerate()
  upload_gid <- uuid::UUIDgenerate()

  host <- api$apiClient$basePath
  tusURL <- paste(host, "files/", sep = "/")
  tus <- TusClient$new(tusURL)
  tus$SetHeaders(api$apiClient$apiKeys['Authorization'])
  tus$SetHeaders(list("Upload-Uid" = upload_uid))

  if (is.vector(paths)) {
    fn <- tempfile()
    utils::tar(fn, paths, compression = "gzip")
    uploader <- tus$Uploader(file_path = fn, chunk_size = chunk_size, retries = 10, retry_delay = 15)
  } else {
    uploader <- tus$Uploader(file_path = paths, chunk_size = chunk_size, retries = 10, retry_delay = 15)
  }

  num_chunks <- ceiling(uploader$GetFileSize()/chunk_size)
  
  last_progress <- 0
  print(last_progress)
  
  for (chunk_count in range(num_chunks)) {
    uploader$UploadChunk()
    this_progress <- round((chunk_count/num_chunks)*100, 1)
    if (this_progress != last_progress) {
      print(this_progress)
      last_progress <- this_progress
    }
  }
  
  # Initiate transcode.
  response <- api$Transcode(project_id, TranscodeSpec$new(
    type = -1, #Tar-based import
    uid = upload_uid,
    gid = upload_gid,
    url = uploader$url,
    name = "archive.tar",
    section = section,
    md5 = "N/A"
  ))
  return(response)
}

#' @title download_media
#' @description Download a media file from Tator to an off-line location.
#' @param api TatorApi object.
#' @param media tator.Media object.
#' @param out_path Path to where to download.
#' @returns Generator the yields progress (0-100).
#' @export
download_media = function(api, media, out_path) {
  auth_value <- api$apiClient$apiKeys['Authorization']
  host <- api$apiClient$basePath
  if (!is.null(media$media_files)) {
    archival <- media$media_files$archival
    streaming <- media$media_files$streaming
    if (length(archival) > 0) {
      url <- paste(host, archival[[1]]$path, sep = "")
    } else if (length(streaming) > 0) {
      url <- paste(host, streaming[[1]]$path, sep = "")
    }
  } else {
    # Legacy way of using streaming prior to streaming
    # and images
    uri <- paste("media", media$file, sep = "/")
    if (media$original) {
      uri <- paste("data/raw", media$original, sep = "/")
    }
    url <- paste(host, uri, sep = "/")
  }
  
  # Supply token here for eventual media authorization
  headerParams <- c()
  headerParams['Authorization'] <- auth_value
  headerParams['Content-Type'] <- "application/json"
  headerParams['Accept-Encoding'] <- "application/gzip"
  
  resp <- httr::GET(url, config = c(add_headers(unlist(headerParams))))
  if (resp$status_code != 200) {
    stop(paste("Download request returned", resp$status_code, sep = " "))
  }
  f <- file(out_path, open = "wb")
  writeBin(resp$content, f)
  close(f)
}

#' @title download_temporary_file
#' @description Download a temporary file from Tator to an off-line location.
#' @param api TatorApi object.
#' @param temporary_file TemporaryFile` object.
#' @param out_path  Path to where to download.
#' @export
download_temporary_file = function(api, temporary_file, out_path) {
  auth_value <- api$apiClient$apiKeys['Authorization']
  host <- api$apiClient$basePath
  url <- temporary_file$path
  
  # Supply token here for eventual media authorization
  headerParams <- c()
  headerParams['Authorization'] <- auth_value
  headerParams['Content-Type'] <- "application/json"
  headerParams['Accept-Encoding'] <- "application/gzip"
  
  resp <- httr::GET(url, config = c(httr::add_headers(unlist(headerParams))))
  if (resp$status_code != 200) {
    stop(paste("Download request returned", resp$status_code, sep = " "))
  }
  f <- file(out_path, open = "wb")
  writeBin(resp$content, f)
  close(f)
}

#' @title upload_file
#' @description Uploads a file to tator.
#' @param api TatorApi object.
#' @param path Path to the file. 
#' @export
upload_file = function(path, api) {
  host <- api$apiClient$basePath
  upload_uid <- uuid::UUIDgenerate()
  tusURL <- paste(host, "files/", sep = "/")
  tus <- TusClient$new(tusURL)
  tus$SetHeaders(api$apiClient$apiKeys['Authorization'])
  tus$SetHeaders(list("Upload-Uid" = upload_uid))
  chunk_size <- 1*1024*1024 # 1 Mb
  uploader <- tus$Uploader(file_path = path, chunk_size = chunk_size, retries = 10, retry_delay = 15)
  num_chunks <- ceiling(uploader$GetFileSize()/chunk_size)
  last_progress <- 0
  print(last_progress)
  for (chunk_count in range(num_chunks)) {
    uploader$UploadChunk()
    this_progress <- round((chunk_count/num_chunks)*100, 1)
    if (this_progress != last_progress) {
      print(this_progress)
      last_progress <- this_progress
    }
  }
  return(uploader$url)
}

#' @title upload_temporary_file
#' @description Upload a file to the temporary file storage location.
#' @param api TatorApi object.
#' @param project Unique integer identifying a project.
#' @param path Path to the file.
#' @param lookup md5hash of lookup parameters.
#' @param hours Number of hourse file is kept alive. Default is 24.
#' @param name Name of temporary file in database. Defaults to basename of path.
#' @param chunk_size Chunk size in bytes. Default is 100MB.
#' @returns Generator that yields tuple containing progress (0-100) and a
#'        response. The response is `None` until the last yield, when the response
#'        is the response object from :meth:`tator.util.TatorApi.create_temporary_file`.
#' @export
upload_temporary_file = function(api, project, path, lookup = NULL, hours = 24, name = NULL, chunk_size = 100*1024*1024) {
  if (is.null(name)) {
    name <- basename(path)
  }
  
  if (is.null(lookup)) {
    lookup <- name
  }
  
  upload_uid <- uuid::UUIDgenerate()
  
  host <- api$apiClient$basePath
  tusURL <- paste(host, "files/", sep = "/")
  tus <- TusClient$new(tusURL)
  tus$SetHeaders(api$apiClient$apiKeys['Authorization'])
  tus$SetHeaders(list("Upload-Uid" = upload_uid))
  uploader <- tus$Uploader(file_path = path, chunk_size = chunk_size, retries = 10, retry_delay = 15)
  num_chunks <- ceiling(uploader$GetFileSize()/chunk_size)
  
  last_progress <- 0
  print(last_progress)
  
  for (chunk_count in range(num_chunks)) {
    uploader$UploadChunk()
    this_progress <- round((chunk_count/num_chunks)*100, 1)
    if (this_progress != last_progress) {
      print(this_progress)
      last_progress <- this_progress
    }
  }
  
  response <- api$CreateTemporaryFile(project, TemporaryFileSpec$new(
    url = uploader$url,
    name = name,
    lookup = lookup,
    hours: 24
  ))
  return(response)
}
