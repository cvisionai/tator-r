#!/usr/bin/env Rscript

#' This example shows how to make a summary.

# ./build.sh
# Rscript examples/activities.R --host="https://xxx.tator.dev" --token="xxx" \
# --project_id=123 --section_name="MySection" --output=/tmp/MySectionSummary \
# --disable-thumbnails --thumbnail-filename-pattern=media_name:frame_number

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
              help="Unique project id.", metavar="character"),
  make_option(c("", "--section_name"), type="character", default=NULL, 
              help="Optional section name to process.", metavar="character"),
  make_option(c("", "--output"), type="character", default=NULL, 
              help="Filename of section csv report. Only use if section was provided.", metavar="character"),
  make_option(c("", "--disable_thumbnails"), action="store_true", 
             default=FALSE, help="Ignore thumbnail creation, no thumbnails reported."),
  make_option(c("", "--thumbnail_filename_pattern"), type="character", default=NULL, 
              help=paste('Default thumbnail filename is just the localization id. Use this string to specify otherwise.',
             'Use <all> to use "media-name_frame-num_localization-id_all-attributes.png"',
             'Specify a specific set with: "media_name:frame_number:localization_id:Attribute Name 1:Attribute Name 2"',
             'Note: media_name, frame_number, localization_id are the only parameters that can be used (outside of attributes).',
             'Split up the set with the colon',
             'Extension of media_name is not included.',
             'Entire string needs to be encapsulated in double quotes.',
             'This argument is ignored if disable_thumbnails is true. ', sep = "\n"), metavar="character")
);
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE)
opt = parse_args(opt_parser)

getAttributeTypeData = function(localization_types_df) {
  return(TRUE)
}

processProject = function(
  host,
  token,
  project_id, 
  section_name = NULL,
  summary_filename = NULL,
  disable_thumbnails = FALSE,
  thumbnail_filename_pattern = NULL
) {
  tator_api <- get_api(host, token)
  project_response <- tator_api$GetProject(project_id)
  if (is.null(project_response$content)) {
    stop(sprintf("Invalid project ID provided: %s", project_id))
  }
  project <- project_response$content
  
  # Report column names will always have the following.
  # Additional column names will be added based on the project
  column_names = list(
    'section','media_id','media','thumbnail','id',
    'user_id','frame','dtype','x','y','width','height','url')
  
  # Get the attributes associated with the localizations in this project
  # and save them as a report column
  localization_types <- tator_api$GetLocalizationTypeList(project = project_id)
  
  for (loc_type in localization_types) {
    for (attr in loc_type$attribute_types) {
      if (!(attr$name %in% names(column_names))) {
        column_names <- c(column_names, attr$name)
      }
    }
  }
  
  # Grab the localization types again associated with this section.
  # Convert this to a dataframe to make it easier to use.
  localization_types_df <- data.frame(localization_types, row.names = names(localization_types[[1]]))
  
  # Get the ordered attribute information per localization dtype.
  attribute_types_info <- getAttributeTypeData(localization_types_df)
  
  # TODO: Stopping here because there is no test for this yet.
}

processProject(
  opt$host,
  opt$token,
  opt$project_id, 
  opt$section_name, 
  opt$summary_filename, 
  opt$disable_thumbnails, 
  opt$thumbnail_filename_pattern
)

