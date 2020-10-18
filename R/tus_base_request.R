#' @docType class
#' @title TusBaseRequest
#' @description TusBaseRequest Class
#' @field url The request URL
#' @field response_headers Response headers
#' @field status_code HTTP response status code
#' @field response_content Response content
#' @field file File to upload
#' @field request_headers Request headers
#' @field content_length Content length
#' @field upload_checksum Upload checksum
#' @field checksum_algorithm Checksum algorithm
#' @field checksum_algorithm_name Checksum algorithm name 
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
   #' @description initialization method
   #' @param uploader The TusUploader instance
   initialize = function(uploader) {
     self$url <- uploader$url
     self$response_headers <- list()
     self$file <- uploader$get_file_stream()
     seek(self$file, where = uploader$offset, origin = "start")
     self$request_headers <- list(
       "upload-offset" = toString(uploader$offset),
       "Content-Type" = "application/offset+octet-stream",
       uploader$get_headers()
     )
     self$content_length <- uploader$get_request_length()
     self$upload_checksum <- uploader$upload_checksum
     self$checksum_algorithm <- uploader$checksum_algorithm
     self$checksum_algorithm_name <- uploader$checksum_algorithm_name
   },
   #' @description add_checksum Add the upload checksum header for the chunk
   #' @param chunk The chunk to digest.
   add_checksum = function(chunk) {
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