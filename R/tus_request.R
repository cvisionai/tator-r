#' @docType class
#' @title TusRequest
#' @description TusRequest Class
#' @export
TusRequest <- R6::R6Class(
  "TusRequest",
  inherit = TusBaseRequest,
  public = list(
    #' @description Perform the tus request
    perform = function() {
      tryCatch({
        chunk <- readBin(self$file, 
                         what = "raw", 
                         n = self$content_length)
        close(self$file)
        self$add_checksum(chunk)
        resp <- httr::PATCH(self$url, config = c(add_headers(unlist(self$request_headers))), body = chunk)
        self$status_code <- resp$status_code
        self$response_content <- resp$content
        self$response_headers <- resp$headers
      }, error = function(e) {
        stop(paste("Error performing request:", e))
      })
    }
  )
)