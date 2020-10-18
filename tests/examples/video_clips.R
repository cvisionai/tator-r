#!/usr/bin/env Rscript

#' This example shows how to get a video clip from a video.

# ./build.sh
# Rscript examples/video_clips.R --host="https://xxx.tator.dev" --token="xxx" --video_id 123 --file_path=/tmp/media

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
  make_option(c("", "--video_id"), type="numeric", default=NULL, 
              help="Media ID for a video.", metavar="character"),
  make_option(c("", "--file_path"), type="character", default=NULL, 
              help="Save path for the clip.", metavar="character")
)
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE)
opt = parse_args(opt_parser)

# Create the api.
tator_api <- get_api(opt$host, opt$token)

# Get the video clip.
clip_info <- tator_api$get_clip(opt$video_id, frame.ranges = "0:30,50:90")
temporary_file <- clip_info$file

# Download the file.
download_temporary_file(tator_api, temporary_file, opt$file_path)
