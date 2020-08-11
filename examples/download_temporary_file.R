#!/usr/bin/env Rscript

#' This example shows how to download a file as a temporary file. The 
#' file may be an output from an algorithm or similar.

# ./build.sh
# Rscript examples/download_media.R --host="https://xxx.tator.dev" --token="xxx" --temporary_file_id 123 --file_path '/tmp'

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
  make_option(c("", "--temporary_file_id"), type="character", default=NULL, 
              help="Temporary file ID.", metavar="character"),
  make_option(c("", "--file_path"), type="character", default=NULL, 
              help="Save path for the file.", metavar="character")
);
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE);
opt = parse_args(opt_parser);

tator_api <- get_api(opt$host, opt$token)

# Get the temporary file object.
temporary_file <- tator_api$GetTemporaryFile(opt$temporary_file_id)

# Download the file.
loginfo(sprintf("Downloading to %s ...", opt$file_path))
download_temporary_file(tator_api, temporary_file, opt$file_path)
