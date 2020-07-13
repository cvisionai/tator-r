#' @docType class
#' @title TusClient
#' @description TusClient Class
#' @export
TusClient <- R6::R6Class(
  "TusClient",
  public = list(
    url = "http://localhost/files",
    headers = NULL,
    initialize = function(url = NULL, headers = NULL) {
      if (!is.null(url)) {
        self$url <- url
      }
      
      if (!is.null(headers)) {
        self$headers <- headers
      }
    },
    SetHeaders = function(headers = list()) {
      self$headers <- c(self$headers, headers)
    },
    Uploader = function(file_path = NULL, chunk_size = NULL, retries = 10, retry_delay = 15) {
      return(TusUploader$new(
        client = self,
        file_path = file_path, 
        chunk_size = chunk_size, 
        retries = retries, 
        retry_delay = retry_delay)
      )
    },
    AsyncUploader = function() {
      return(TusAsyncUploader$new(client=self))
    }
  )
)