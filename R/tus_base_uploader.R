#' @docType class
#' @title TusBaseUploader
#' @description TusBaseUploader Class
#' @field file_path File path
#' @field file_stream File stream
#' @field url URL
#' @field client TusClient
#' @field chunk_size Chunk size
#' @field metadata Metadata
#' @field retries Retry limit
#' @field retried Boolean if the request was retried
#' @field retry_delay Retry delay
#' @field store_url Store URL
#' @field url_storage URL storage
#' @field fingerprinter Fingerprinter
#' @field upload_checksum Upload checksum
#' @field default_headers Default headers
#' @field offset Offset
#' @field stop_at Stop at
#' @field request Request
#' @field checksum_algorithm_name Checksum algorithm name
#' @field checksum_algorithm Checksum algorithm
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
    upload_checksum = NULL,
    checksum_algorithm_name = NULL,
    checksum_algorithm = NULL,
    #' @description initialization method
    #' @param file_path File path
    #' @param file_stream File stream
    #' @param url URL
    #' @param client TusClient
    #' @param chunk_size Chunk size
    #' @param metadata Metadata
    #' @param retries Retry limit
    #' @param retry_delay Retry delay
    #' @param store_url Store URL
    #' @param url_storage URL storage
    #' @param fingerprinter Fingerprinter
    #' @param upload_checksum Upload checksum
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
      self$stop_at <- self$get_file_size()
      self$client <- client
      self$metadata <- metadata
      self$store_url <- store_url
      self$url_storage <- url_storage
      self$fingerprinter <- fingerprinter # || fingerprinter$Fingerprint()
      self$offset <- 0
      self$url <- NULL
      self$init_url_and_offset(url)
      self$chunk_size <- chunk_size
      self$retries <- retries
      self$request <- NULL
      self$retried <- 0
      self$retry_delay <- retry_delay
      self$upload_checksum <- upload_checksum
      self$checksum_algorithm_name <- "sha1"
      self$checksum_algorithm <- "sha1"
    },
    #' @description Get headers
    get_headers = function() {
      client_headers <- self$client$headers
      return(c(self$default_headers, client_headers))
    },
    #' @description Get URL creation headers
    get_url_creation_headers = function() {
      headers <- self$get_headers()
      headers <- c(headers, "upload-length" = toString(self$get_file_size()))
      headers <- c(headers, "upload-metadata" = paste(self$encode_metadata(), collapse = ","))
      return(headers)
    },
    #' @description Get checksum algorithm
    get_checksum_algorithm = function() {
      return(self$checksum_algorithm)
    },
    #' @description Get checksum algorithm name
    get_checksum_algorithm_name = function() {
      return(self$checksum_algorithm_name)
    },
    #' @description Get tus upload offset header 
    get_offset = function() {
      resp <- httr::HEAD(self$url, add_headers(unlist(self$get_headers())))
      offset <- resp$headers["upload-offset"]
      if (is.null(offset)) {
        stop(paste("Could not get offset, response status code", resp$status_code))
      }
      return(strtoi(offset))
    },
    #' @description Encode metadata 
    encode_metadata = function() {
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
    #' @description Init URL and offset
    #' @param url URL
    init_url_and_offset = function(url = NULL) {
      if (!is.null(url)) {
        self$set_url(url)
      }
      
      if (self$store_url && !is.null(self$url_storage)) {
        key <- self$fingerprinter$get_finger_print(self$get_file_stream())
        self$set_url(self$url_storage[key])
      }
      
      if (!is.null(self$url)) {
        self$offset <- self$get_offset()
      }
    },
    #' @description Set URL
    #' @param url URL
    set_url = function(url) {
      self$url <- url
      
      if (self$store_url && !is.null(self$url_storage)) {
        key <- self$fingerprinter$get_finger_print(self$get_file_stream())
        self$set_url(self$url_storage[key])
      }
    },
    #' @description Get request length
    get_request_length = function() {
      remainder <- self$stop_at - self$offset
      if (remainder > self$chunk_size) {
        return(self$chunk_size)
      } else {
        return(remainder)
      }
    },
    #' @description Get file stream 
    get_file_stream = function() {
      if (!is.null(self$file_stream)) {
        seek(self$file_stream, where = 0, origin = "start")
        return(self$file_stream)
      }
      
      if (file.exists(self$file_path)) {
        return(file(self$file_path, open = "rb"))
      }
      
      stop(paste("invalid file", self$file_path))
    },
    #' @description Get file size 
    get_file_size = function() {
      stream <- self$get_file_stream()
      count <- 0
      while (TRUE) {
        old_count <- count
        count <- count + length(readBin(stream, raw(), n = 1000))
        if (old_count >= count) {
          break
        }
      }
      close(stream)
      return(count)
    }
  )
)