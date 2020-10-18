#!/usr/bin/env Rscript

#' This example shows how to create localizations.

# ./build.sh
# Rscript examples/localizations.R --host="https://xxx.tator.dev" --token="xxx" --type_id 123 --video_id 456

#' @description Returns random localization spec for given video object.
#' @param video tator Media object.
#' @param type_id Localization type ID.
#' @return Random LocalizationSpec.
random_box = function(video, type_id) {
  x <- runif(1, 0.0, 1.0)
  y <- runif(1, 0.0, 1.0)
  return(LocalizationSpec$new(
    x = x, y = y,
    width = runif(1, 0.0, 1.0 - x),
    height = runif(1, 0.0, 1.0 - y),
    frame = floor(runif(1, 0, video$num_frames)),
    media_id = video$id,
    type = type_id
  ))
}

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
              help="Localization type ID.", metavar="character"),
  make_option(c("", "--video_id"), type="numeric", default=NULL, 
              help="Video ID.", metavar="character")
);
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE);
opt = parse_args(opt_parser);

tator_api <- get_api(opt$host, opt$token)

# Get the video object.
video <- tator_api$get_media(opt$video_id)

# Get the type object.
loc_type <- tator_api$get_localization_type(opt$type_id)
project <- loc_type$project

# Create a list of random box localizations.
localizations <- list()
count <- 0
repeat {
  if (count >= 5000) {
    break
  }
  
  localizations <- c(localizations, random_box(video, opt$type_id))
  count <- count + 1
}

# Create the localizations. A maximum of 500 localizations can be created 
# per request, so we use `chunked_create` to break up our large list.
created_ids <- chunked_create(tator_api$create_localization_list, project, localizations)
loginfo(paste("Created", length(localizations), "localizations!"))

# Get all localizations for this video. The `media_id` parameter accepts a list
# of IDs.
localizations <- tator_api$get_localization_list(project, media.id = opt$video_id)
loginfo(paste("Found", length(localizations), "localizations in this video!"))

# Get the localizations with left edge on the left side of the image.
# Geometry fields are indexed in elasticsearch with a leading underscore
# appended before their name.
localizations <- tator_api$get_localization_list(project, media.id = opt$video_id, search = "_x:<0.5")
loginfo(paste("Found", length(localizations), "localizations on left side of video!"))

# Get the localizations with normalized width less than 0.25.
localizations <- tator_api$get_localization_list(project, media.id = opt$video_id, search = "_width:<0.25")
loginfo(paste("Found", length(localizations), "localizations with width < 0.25!"))

# Get the localizations between frames 100-200.
# Frame is also indexed in elasticsearch under the name _frame.
localizations <- tator_api$get_localization_list(project, media.id = opt$video_id, search = "_frame:>=100 AND _frame:<=200")
loginfo(paste("Found", length(localizations), "localizations between frames 100-200!"))

# Delete localizations between frames 100-200.
response <- tator_api$delete_localization_list(project, media.id = opt$video_id, search = "_frame:>=100 AND _frame:<=200")
loginfo(response$message)

# Suppose we want to shrink the first 10 boxes by 50% in each dimension. This
# can be done by iterating over them and patching them.
localizations <- tator_api$get_localization_list(project, media.id = opt$video_id)
for (loc in localizations[1:10]) {
  update <- LocalizationUpdate$new(width = loc$width * 0.5, height = loc$height * 0.5)
  response <- tator_api$update_localization(loc$id, localization.update = update)
  loginfo(response$message)
}