#' @docType class
#' @title TusBaseUploader
#' @description TusBaseUploader Class
#' @export
TusBaseUploader <- R6::R6Class(
  "TusBaseUploader",
  public = list(
    default_headers = list("Tus-Resumable" = "1.0.0"),
    file_path = NULL,
    file_stream = NULL,
    url = NULL,
    client = NULL,
    chunk_size = NULL,
    metadata = NULL,
    offset = NULL,
    stop_at = NULL,
    request = NULL,
    retries = NULL,
    retried = 0,
    retry_delay = NULL,
    store_url = FALSE,
    url_storage = NULL,
    fingerprinter = NULL,
    log_func = NULL,
    upload_checksum = NULL,
    checksum_algorithm_name = NULL,
    checksum_algorithm = NULL,
    initialize = function(file_path = NULL, file_stream = NULL, url = NULL, client = NULL,
                          chunk_size = NULL, metadata = NULL, retries = 0, retry_delay = 30,
                          store_url = FALSE, url_storage = NULL, fingerprinter = NULL, 
                          upload_checksum = FALSE) {
      if (is.null(file_path) && is.null(file_stream)) {
        stop("file_path and file_stream are both null - one of these must be provided")
      }
      
      if (is.null(url) && is.null(client)) {
        stop("url and client are both null - one of these must be provided")
      }
      
      if(store_url && is.null(url_storage)) {
        stop("store_url is true but no url_storage instance was provided")
      }
      
      self$file_path <- file_path
      self$file_stream <- file_stream
      self$stop_at <- self$GetFileSize()
      self$client <- client
      self$metadata <- metadata
      self$store_url <- store_url
      self$url_storage <- url_storage
      self$fingerprinter <- fingerprinter # || fingerprinter$Fingerprint()
      self$offset <- 0
      self$url <- NULL
      self$InitURLAndOffset(url)
      self$chunk_size <- chunk_size
      self$retries <- retries
      self$request <- NULL
      self$retried <- 0
      self$retry_delay <- retry_delay
      self$upload_checksum <- upload_checksum
      self$checksum_algorithm_name <- "sha1"
      self$checksum_algorithm <- "sha1"
    },
    GetHeaders = function() {
      client_headers <- self$client$headers
      return(c(self$default_headers, client_headers))
    },
    GetURLCreationHeaders = function() {
      headers <- self$GetHeaders()
      headers <- c(headers, "upload-length" = toString(self$GetFileSize()))
      headers <- c(headers, "upload-metadata" = paste(self$EncodeMetadata(), collapse = ","))
      return(headers)
    },
    ChecksumAlgorithm = function() {
      return(self$checksum_algorithm)
    },
    ChecksumAlgorithmName = function() {
      return(self$checksum_algorithm_name)
    },
    GetOffset = function() {
      resp <- httr::HEAD(self$url, add_headers(unlist(self$GetHeaders())))
      offset <- resp$headers["upload-offset"]
      if (is.null(offset)) {
        stop(paste("Could not get offset, response status code", resp$status_code))
      }
      return(strtoi(offset))
    },
    EncodeMetadata = function() {
      encoded_list <- list()
      for (key in names(self$metadata)) {
        key_str <- toString(key)
        
        if (str_detect(key_str, regex("^$|[\\s,]+"))) {
          stop(paste("upload-metadata key", key_str, "cannot be empty or contain spaces or commas."))
        }
        
        value_bytes <- iconv(self$metadata[key], to = "latin1")
        encoded_list <- c(encoded_list, key_str = iconv(jsonlite::base64_enc(value_bytes), to = "ascii"))
      }
      return(encoded_list)
    },
    InitURLAndOffset = function(url = NULL) {
      if (!is.null(url)) {
        self$SetURL(url)
      }
      
      if (self$store_url && !is.null(self$url_storage)) {
        key <- self$fingerprinter$GetFingerPrint(self$GetFileStream())
        self$SetURL(self$url_storage[key])
      }
      
      if (!is.null(self$url)) {
        self$offset <- self$GetOffset()
      }
    },
    SetURL = function(url) {
      self$url <- url
      
      if (self$store_url && !is.null(self$url_storage)) {
        key <- self$fingerprinter$GetFingerPrint(self$GetFileStream())
        self$SetURL(self$url_storage[key])
      }
    },
    GetRequestLength = function() {
      remainder <- self$stop_at - self$offset
      if (remainder > self$chunk_size) {
        return(self$chunk_size)
      } else {
        return(remainder)
      }
    },
    GetFileStream = function() {
      if (!is.null(self$file_stream)) {
        seek(self$file_stream, where = 0, origin = "start")
        return(self$file_stream)
      }
      
      if (file.exists(self$file_path)) {
        return(file(self$file_path, open = "rb"))
      }
      
      stop(paste("invalid file", self$file_path))
    },
    GetFileSize = function() {
      stream <- self$GetFileStream()
      count <- 0
      while (TRUE) {
        old_count <- count
        count <- count + length(readBin(stream, raw(), n = 1000))
        if (old_count >= count) {
          break
        }
      }
      seek(stream, where = 0, origin = "start")
      return(count)
    }
  )
)