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
    Uploader = function() {
      return(TusUploader$new(client=self))
    },
    AsyncUploader = function() {
      return(TusAsyncUploader$new(client=self))
    }
  )
)