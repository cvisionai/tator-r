#' @docType class
#' @title TusBaseUploader
#' @description TusBaseUploader Class
#' @export
TusBaseUploader <- R6::R6Class(
  "TusBaseUploader",
  public = list(
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
    retry_delay = NULL,
    store_url = FALSE,
    url_storage = NULL,
    fingerprinter = NULL,
    log_func = NULL,
    upload_checksum = NULL,
    initializer = function(file_path = NULL, file_stream = NULL, url = NULL, client = NULL,
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
      self$stop_at <- NULL # self$get_file_size()
      self$client <- client
      self$metadata <- metadata
      self$store_url <- store_url
      self$url_storage <- url_storage
      self$fingerprinter <- fingerprinter # || fingerprinter$Fingerprint()
      self$offset <- 0
      self$url <- NULL
      # self.__init_url_and_offset(url)
      self$chunk_size <- chunk_size
      self$retries <- retries
      self$request <- NULL
      # self._retried = 0
      self$retry_delay <- retry_delay
      self$upload_checksum <- upload_checksum
      # self.__checksum_algorithm_name, self.__checksum_algorithm = self.CHECKSUM_ALGORITHM_PAIR
    },
    GetHeaders <- function() {
      
    }
  )
)