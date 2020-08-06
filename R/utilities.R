#' Retrieves a `TatorAPI` instance using the given host and token.

#'  @param host URL of host. Default is https://www.tatorapp.com.
#'  @param token API token.
#'  @return TatorApi object
#' @export
get_api = function(host = "https://www.tatorapp.com", token = Sys.getenv("TATOR_TOKEN")) {
  instance <- TatorApi$new()
  instance$apiClient$apiKeys["Authorization"] <- stringr::str_interp("Token ${token}")
  instance$apiClient$basePath <- host
  return(instance)
}

#' Breaks a create_*_list operation into chunks.
#'
#'   Example:
#'
#'\code{} 
#'         created_ids = c()
#'         for (response in chunked_create(api$CreateLocalizationList,1, localization_spec=my_long_list) {
#'             created_ids <- c(created_ids, response.id)
#'         }
#' }
#'  @param func Function to call on each chunk.
#'  @param project Unique integer identifying a project.
#'  @return Generator that yields a response.
#' @export
chunked_create = function(FUN, project, spec_list) {
  ret <- list()
  for (idx in seq(0, length(spec_list), 500)) {
    response <- FUN(project, purrr::compact(spec_list[idx:(idx+500)]))
    ret <- c(ret, response)
  }
  return(ret)
}

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
  uploader <- tus$Uploader(file_path = path, chunk_size = chunk_size, retries = 10, retry_delay = 15)
  num_chunks <- ceiling(uploader$GetFileSize()/chunk_size)
  
  last_progress <- 0
  print(last_progress) # THIS SHOULD BE A YIELD
  
  for (chunk_count in range(num_chunks)) {
    uploader$UploadChunk()
    this_progress <- round((chunk_count/num_chunks)*100, 1)
    if (this_progress != last_progress) {
      print(this_progress) # THIS SHOULD BE A YIELD
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