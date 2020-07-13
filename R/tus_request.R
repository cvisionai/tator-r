#' @export
TusRequest <- R6::R6Class(
  "TusRequest",
  inherit = TusBaseRequest,
  public = list(
    Perform = function() {
      tryCatch({
        chunk <- readChar(self$file, self$content_length, useBytes = TRUE)
        self$AddChecksum(chunk)
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