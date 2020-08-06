#!/usr/bin/env Rscript

#' This example shows how to download media.

# ./build.sh
# Rscript examples/activities.R --host="https://xxx.tator.dev" --token="xxx" --video_type_id 123 --video_id 456

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
  make_option(c("", "--media_name"), type="character", default=NULL, 
              help="Name of media to download.", metavar="character"),
  make_option(c("", "--project_name"), type="character", default=NULL, 
              help="Name of project.", metavar="character"),
  make_option(c("", "--save_path"), type="character", default=NULL, 
              help="Directory to save the media.", metavar="character")
);
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE);
opt = parse_args(opt_parser);

tator_api <- get_api(opt$host, opt$token)

# Find the project.
projects <- tator_api$GetProjectList()
project <- NULL
for (p in projects) {
  if (p$name == opt$project_name) {
    project <- p
    break
  } 
}
if (is.null(project) || project$name != opt$project_name) {
  loginfo(sprintf("Could not find project with name %s", opt$project_name))
  quit(status = 1)
}

# Find the media.
media_list <- tator_api$GetMediaList(project$id, name = opt$media_name)
loginfo(sprintf("Found %d media matching name %s.", length(media_list), opt$media_name))

# Download the media.
for (media in media_list) {
  loginfo(sprintf("Downloading %s...", media$name))
  file_path <- file.path(opt$save_path, media$name)
  loginfo(file_path) #TODO: download_media()!
}