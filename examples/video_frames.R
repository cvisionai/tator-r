#!/usr/bin/env Rscript

#' This example shows how to get video frames from a video.

# ./build.sh
# Rscript examples/video_frames.R --host="https://xxx.tator.dev" --token="xxx" --video_id 123

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
              help="Media ID for a video.", metavar="character")
)
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE)
opt = parse_args(opt_parser)

# Create the api.
tator_api <- get_api(opt$host, opt$token)

# Get some video frames. The path to a local image that contains the tiled
# frames.
image_path <- tator_api$GetFrame(opt$video_id, frames = "0,50,100,150")