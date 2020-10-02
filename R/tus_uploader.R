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
    UploadChunk = function() {
      if (is.null(self$url)) {
        self$SetURL(self$CreateURL())
        self$offset <- 0
      }
      self$DoRequest()
      self$offset <- strtoi(self$request$response_headers["upload-offset"])
    },
    #' @description Create the upload URL
    CreateURL = function() {
      resp <- httr::POST(self$client$url, config = c(add_headers(unlist(self$GetURLCreationHeaders()))))
      url <- resp$headers["location"]
      if (is.null(url) || url == "NULL") {
        stop(paste("Could not request create file url, response status", resp$status_code))
      }
      return(paste(url))
    },
    #' @description Execute the request
    DoRequest = function() {
      self$request <- TusRequest$new(self)
      self$request$Perform()
      if (self$request$status_code != 204) {
        self$Retry()
      }
    },
    #' @description Retry the upload
    Retry = function() {
      if (self$retries > self$retried) {
        Sys.sleep(self$retry_delay)
        self$retried <- self$retried + 1
        self$offset <- self$GetOffset()
        self$DoRequest()
      } else {
        stop(paste("Upload failed after", self$retries, "retries: status code", self$request$status_code, ", body ", self$request$content))
      }
    }
  )
)