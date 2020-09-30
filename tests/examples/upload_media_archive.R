#!/usr/bin/env Rscript

#' This example shows how to upload multiple media files as an archive.

# ./build.sh
# Rscript examples/upload_media_archive.R --host="https://xxx.tator.dev" --token="xxx" --project_id 123 --media_dir=/tmp/media

library(tator)
library(optparse)
library(logging)

basicConfig()
logger <- getLogger()

option_list = list(
  make_option(c("-h", "--host"), type="character", default="https://adamant.duckdns.org",
              help="Tator host", metavar="character"),
  make_option(c("-t", "--token"), type="character", default=NULL, 
              help="API token", metavar="character"),
  make_option(c("", "--project_id"), type="numeric", default=NULL, 
              help="Project ID for upload.", metavar="character"),
  make_option(c("", "--media_dir"), type="character", default=NULL, 
              help="Directory containing media files.", metavar="character")
)
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE)
opt = parse_args(opt_parser)

# Create the api.
tator_api <- get_api(opt$host, opt$token)

# Construct list of files.
paths <- dir(opt$media_dir)
paths <- sapply(paths, function(p) { file.path(opt$media_dir, p) })
paths <- paths[1:1000] # Only upload the first 1000 files.

# Upload the media.
batch_num <- 1
for (batch_start in seq(1, length(paths), 100)) {
  batch <- paths[batch_start:(batch_num*100)]
  response <- upload_media_archive(tator_api, opt$project_id, batch)
  loginfo(response$message)
  batch_num <- batch_num + 1
}
