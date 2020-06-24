#!/usr/bin/env Rscript

# This example demonstrates how to create a project and configure media
# and metadata type definitions.

# ./build.sh
# Rscript examples/setup_project.R --host="https://xxx.tator.dev" --token="xxx"

library(tator)
library(optparse)
library(logging)

basicConfig()
logger <- getLogger()

option_list = list(
  make_option(c("-h", "--host"), type="character", default="https://adamant.duckdns.org",
              help="Tator host", metavar="character"),
	make_option(c("-t", "--token"), type="character", default=NULL, 
              help="API token", metavar="character")
);
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE);
opt = parse_args(opt_parser);

tator_api <- get_api(opt$host, opt$token)

# Create the project.
result <- tator_api$CreateProject(ProjectSpec$new("Test Project", "A test project."))
project <- result$id
loginfo(result$message)

# Create image type.
result <- tator_api$CreateMediaType(project, MediaTypeSpec$new(
  name = "Test Images",
  description = "A test image type.",
  dtype = "image",
  attribute_types = c(
    AttributeType$new(
      name = "Test Bool",
      dtype = "bool",
      order = 0,
      default = FALSE
    ),
    AttributeType$new(
      name = "Test Int",
      dtype = "int",
      order = 1,
      default = 0,
      minimum = 0,
      maximum = 1000
    ),
    AttributeType$new(
      name = "Test Float",
      dtype = "float",
      order = 2,
      default = 0.0,
      minimum = -1000.0,
      maximum = 1000.0
    ),
    AttributeType$new(
      name = "Test String",
      dtype = "string",
      order = 3
    ),
    AttributeType$new(
      name = "Test Enum",
      dtype = "enum",
      order = 4,
      choices = c("Test Choice 1", "Test Choice 2", "Test Choice 3"),
      labels = c("Test Choice 1", "Test Choice 2", "Test Choice 3"),
      default = "Test Choice 1"
    ),
    AttributeType$new(
      name = "Test Datetime",
      dtype = "datetime",
      order = 5,
      use_current = TRUE
    ),
    AttributeType$new(
      name = "Test Geoposition",
      dtype = "geopos",
      order = 6,
      default = c(-71.05674, 42.35866)
    )
  )
))
image_type <- result$id
loginfo(result)
