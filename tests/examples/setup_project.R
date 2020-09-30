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

stopifnot("Project was not created"=is.numeric(project))

# Create image type.
result <- tator_api$CreateMediaType(project, MediaTypeSpec$new(
  name = "Test Images",
  description = "A test image type.",
  dtype = "image",
  attribute_types = list(
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
      choices = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
      labels = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
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
      default = list(-71.05674, 42.35866)
    )
  )
))
image_type <- result$id
loginfo(result$message)


# Create video type.
result <- tator_api$CreateMediaType(project, MediaTypeSpec$new(
  name = "Test Videos",
  description = "A test video type.",
  dtype = "video",
  default_volume = 50,
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
      choices = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
      labels = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
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
      default = list(-71.05674, 42.35866)
    )
  )
))
video_type <- result$id
loginfo(result$message)

# Get baseline version.
baseline_version <- tator_api$GetVersionList(project)[1]$id

# Create additional version.
result <- tator_api$CreateVersion(project, VersionSpec$new(
  name = "Test Version",
  description = "A test version.",
  show_empty = TRUE,
  bases = c(baseline_version)
))
version <- result$id
loginfo(result$message)

# Create box type.
result <- tator_api$CreateLocalizationType(project, LocalizationTypeSpec$new(
  name = "Test Boxes",
  description = "A test box type.",
  dtype = "box",
  media_types = list(image_type, video_type),
  colorMap = ColorMap$new(
    default = list(255, 0, 0),
    key = "Test Enum",
    map = list(
        "Test Choice 1" = list(0, 255, 0),
        "Test Choice 2" = list(0, 0, 255)
    )
  ),
  attribute_types = list(
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
      choices = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
      labels = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
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
      default = list(-71.05674, 42.35866)
    )
  )
))
box_type <- result$id
loginfo(result$message)

# Create line type.
result <- tator_api$CreateLocalizationType(project, LocalizationTypeSpec$new(
  name = "Test Lines",
  description = "A test line type.",
  dtype = "line",
  media_types = c(image_type, video_type),
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
      choices = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
      labels = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
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
      default = list(-71.05674, 42.35866)
    )
  )
))
line_type <- result$id
loginfo(result$message)

# Create dot type.
result <- tator_api$CreateLocalizationType(project, LocalizationTypeSpec$new(
  name = "Test Dots",
  description = "A test dot type.",
  dtype = "dot",
  media_types = c(image_type, video_type),
  colorMap = ColorMap$new(
    default = list(255, 0, 0),
    version = list(
        baseline_version = c(0, 255, 0),
        version = c(0, 0, 255)
    )
  ),
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
      choices = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
      labels = list("Test Choice 1", "Test Choice 2", "Test Choice 3"),
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
      default = list(-71.05674, 42.35866)
    )
  )
))
dot_type <- result$id
loginfo(result$message)
loginfo("Test project setup complete!")