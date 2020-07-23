#' @export
TusBaseRequest <- R6::R6Class(
 "TusBaseRequest",
 public = list(
   url = NULL,
   response_headers = list(),
   status_code = NULL,
   response_content = NULL,
   file = NULL,
   request_headers = NULL,
   content_length = NULL,
   upload_checksum = NULL,
   checksum_algorithm = NULL,
   checksum_algorithm_name = NULL,
   initialize = function(uploader) {
     self$url <- uploader$url
     self$response_headers <- list()
     self$file <- uploader$GetFileStream()
     seek(self$file, where = uploader$offset, origin = "start")
     self$request_headers <- list(
       "upload-offset" = toString(uploader$offset),
       "Content-Type" = "application/offset+octet-stream",
       uploader$GetHeaders()
     )
     self$content_length <- uploader$GetRequestLength()
     self$upload_checksum <- uploader$upload_checksum
     self$checksum_algorithm <- uploader$checksum_algorithm
     self$checksum_algorithm_name <- uploader$checksum_algorithm_name
   },
   AddChecksum = function(chunk) {
     if (!is.null(self$upload_checksum)) {
       self$request_headers["upload-checksum"] <- paste(
         self$checksum_algorithm_name, 
         iconv(jsonlite::base64_enc(
                digest::digest(
                  chunk, 
                  self$checksum_algorithm_name, 
                  serialize = FALSE
                )
              ), to = "ascii"
         )
       )
     }
   }
 )
)