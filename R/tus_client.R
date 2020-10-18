#' @docType class
#' @title TusClient
#' @description TusClient Class
#' @field url URL
#' @field headers HTTP headers
#' @export
TusClient <- R6::R6Class(
  "TusClient",
  public = list(
    url = "http://localhost/files",
    headers = NULL,
    #' @description initialization method
    #' @param url URL
    #' @param headers Headers
    initialize = function(url = NULL, headers = NULL) {
      if (!is.null(url)) {
        self$url <- url
      }
      
      if (!is.null(headers)) {
        self$headers <- headers
      }
    },
    #' @description Set headers
    #' @param headers Headers to set
    set_headers = function(headers = list()) {
      self$headers <- c(self$headers, headers)
    },
    #' @description Get the uploader
    #' @param file_stream File stream 
    #' @param file_path File path 
    #' @param chunk_size Chunk size 
    #' @param retries Retry limit 
    #' @param retry_delay Retry delay 
    uploader = function(file_stream = NULL, file_path = NULL, chunk_size = NULL, retries = 10, retry_delay = 15) {
      return(TusUploader$new(
        client = self,
        file_stream = file_stream,
        file_path = file_path, 
        chunk_size = chunk_size, 
        retries = retries, 
        retry_delay = retry_delay)
      )
    }
  )
)