#' @docType class
#' @title TusUploader
#' @description TusUploader Class
#' @export
TusUploader <- R6::R6Class(
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