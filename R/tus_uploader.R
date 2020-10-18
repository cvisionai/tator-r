#' @docType class
#' @title TusUploader
#' @description TusUploader Class
#' @field client The TusClient instance
#' @export
TusUploader <- R6::R6Class(
  "TusUploader",
  inherit = TusBaseUploader,
  public = list(
    client = NULL,
    #' @description Upload a chunk
    upload_chunk = function() {
      if (is.null(self$url)) {
        self$set_url(self$create_url())
        self$offset <- 0
      }
      self$do_request()
      self$offset <- strtoi(self$request$response_headers["upload-offset"])
    },
    #' @description Create the upload URL
    create_url = function() {
      resp <- httr::POST(self$client$url, config = c(add_headers(unlist(self$get_url_creation_headers()))))
      url <- resp$headers["location"]
      if (is.null(url) || url == "NULL") {
        stop(paste("Could not request create file url, response status", resp$status_code))
      }
      return(paste(url))
    },
    #' @description Execute the request
    do_request = function() {
      self$request <- TusRequest$new(self)
      self$request$perform()
      if (self$request$status_code != 204) {
        self$retry()
      }
    },
    #' @description Retry the upload
    retry = function() {
      if (self$retries > self$retried) {
        Sys.sleep(self$retry_delay)
        self$retried <- self$retried + 1
        self$offset <- self$get_offset()
        self$do_request()
      } else {
        stop(paste("Upload failed after", self$retries, "retries: status code", self$request$status_code, ", body ", self$request$content))
      }
    }
  )
)