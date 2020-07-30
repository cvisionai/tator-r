#!/usr/bin/env Rscript

#' This example shows how to create activities.

# ./build.sh
# Rscript examples/activities.R --host="https://xxx.tator.dev" --token="xxx"

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
  make_option(c("", "--video_type_id"), type="numeric", default=NULL, 
              help="Video type ID.", metavar="character"),
  make_option(c("", "--video_id"), type="numeric", default=NULL, 
              help="Video ID.", metavar="character")
);
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE);
opt = parse_args(opt_parser);

tator_api <- get_api(opt$host, opt$token)

# Get the video object and video type object.
video <- tator_api$GetMedia(opt$video_id)
video_type <- tator_api$GetMediaType(opt$video_type_id)

# Create a new state type for the project to represent activities. Activities will
# have a user-defined attribute called "Something in view" to indicate whether
# an object of interest is visible in the video during that frame. The interpolation
# parameter indicates that the latest update to this value should be used for
# visual indication in the UI.
response <- tator_api$CreateStateType(video_type$project, StateTypeSpec$new(
  name = "Activity Change",
  association = "Frame",
  media_types = c(video_type$id),
  attribute_types = c(
    AttributeType$new(
      name = "Something in view",
      dtype = "bool"
    )
  )
))

state_type_id <- response$id
loginfo(state_type_id)

# Create activity change every 10 frames with "Something in view" indicator
# switching between true and false.

states <- list()
for (frame in range(0, video$num_frames, 10)) {
  states <- c(states,
    StateSpec$new(
      type = state_type_id,
      frame = frame,
      media_ids = list(opt$video_id),
      "Something in view" = (frame %% 20) == 0
    )
  )
}
state_ids <- c()
for (response in chunked_create(tator_api$CreateStateList, video_type&project, states)) {
  state_ids <- c(state_ids, response$id)
}
loginfo(paste("Created", length(state_ids), "activity changes!"))