#!/usr/bin/env Rscript

#' This example shows how to upload a media file.

# ./build.sh
# Rscript examples/upload_media.R --host="https://xxx.tator.dev" --token="xxx" --type_id 123 --media_path=/tmp/media

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
  make_option(c("", "--type_id"), type="numeric", default=NULL, 
              help="Media type ID for upload.", metavar="character"),
  make_option(c("", "--media_path"), type="character", default=NULL, 
              help="Path to media file.", metavar="character")
)
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE)
opt = parse_args(opt_parser)

tator_api <- get_api(opt$host, opt$token)

response <- upload_media(tator_api, opt$type_id, opt$media_path)
loginfo(response$message)