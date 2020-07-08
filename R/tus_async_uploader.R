#' @docType class
#' @title TusAsyncUploader
#' @description TusAsyncUploader Class
#' @export
TusAsyncUploader <- R6::R6Class(
  "TusUploader",
  inherit = TusBaseUploader,
  public = list(
    client = NULL,
    initialize = function(client = NULL) {
      if (!is.null(client)) {
        self$client <- client
      }
    }
  )
)