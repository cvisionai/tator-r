project_fixture <- function(host, token) {
  api <- get_api(host, token)
  current_dt <- Sys.time()
  dt_str <- strftime(current_dt, format="%Y_%m_%d__%H_%M_%S")
  response <- api$CreateProject(ProjectSpec$new(
    name = paste("test_project_", dt_str, sep=""),
    summary = paste("Test project created by tator-r unit tests on", current_dt)
  ))
  return(response$id)
}

project_cleanup <- function(host, token, project_id) {
  api <- get_api(host, token)
  api$DeleteProject(project_id)
}

image_type_fixture <- function(host, token, project_id) {
  api <- get_api(host, token)
  response <- api$CreateMediaType(project_id, MediaTypeSpec$new(
    name = "image_type",
    description = "Test image type",
    dtype = "image"
  ))
  return(response$id)
}

image_file_fixture <- function() {
  out_path <- "test1.jpg"
  if (!file.exists(out_path)) {
    file.create(out_path)
    url <- "https://www.gstatic.com/webp/gallery/1.jpg"
    download.file(url, out_path, "auto", quiet = TRUE)
  }
  return(out_path)
}

image_file_cleanup <- function(out_path) {
  file.remove(out_path)
}

image_fixture <- function(host, token, project_id, image_type_id, image_file_path) {
  api <- get_api(host, token)
  response <- upload_media(api, image_type_id, image_file_path)
  return(response$id)
}

image_set_fixture <- function() {
  out_path <- "../../tmp/lfw.tgz"
  extract_path <- "../../tmp/lfw"
  
  if (!file.exists(out_path)) {
    file.create(out_path)
    url <- "http://vis-www.cs.umass.edu/lfw/lfw.tgz"
    download.file(url, out_path, "auto", quiet = TRUE)
  }
  
  if (!file.exists(extract_path)) {
    untar(out_path, exdir = extract_path)
  }
  
  image_path <- file.path(extract_path, "lfw")
  return(image_path)
}

image_set_cleanup <- function(image_path) {
  file.remove(image_path)
}

video_type_fixture <- function(host, token, project_id) {
  api <- get_api(host, token)
  response <- api$CreateMediaType(project_id, MediaTypeSpec$new(
    name = "video_type",
    description = "Test video type",
    dtype = "video"
  ))
  return(response$id)
}

video_file_fixture <- function() {
  out_path <- "../../tmp/ForBiggerEscapes.mp4"
  if (!file.exists(out_path)) {
    file.create(out_path)
    url <- "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
    download.file(url, out_path, "auto", quiet = TRUE)
  }
  return(out_path)
}

video_file_cleanup <- function(out_path) {
  file.remove(out_path)
}

video_fixture <- function(host, token, video_type_id, video_file_path) {
  api <- get_api(host, token)
  response <- upload_media(api, video_type_id, video_file_path)
  return(response$id)
  # ADD WAIT HERE
}

dot_type_fixture <- function(host, token, project_id, video_type_id, image_type_id) {
  api <- get_api(host, token)
  response <- api$CreateLocalizationType(project_id, LocalizationTypeSpec$new(
    name = "dot_type",
    description = "Test dot type",
    media_types = list(video_type_id, image_type_id),
    dtype = "dot",
    attribute_types = make_attribute_types()
  ))
  return(response$id)
}

line_type_fixture <- function(host, token, project_id, video_type_id, image_type_id) {
  api <- get_api(host, token)
  response <- api$CreateLocalizationType(project_id, LocalizationTypeSpec$new(
    name = "line_type",
    description = "Test line type",
    media_types = list(video_type_id, image_type_id),
    dtype = "line",
    attribute_types = make_attribute_types()
  ))
  return(response$id)
}

box_type_fixture <- function(host, token, project_id, video_type_id, image_type_id) {
  api <- get_api(host, token)
  response <- api$CreateLocalizationType(project_id, LocalizationTypeSpec$new(
    name = "box_type",
    description = "Test box type",
    media_types = list(video_type_id, image_type_id),
    dtype = "box",
    attribute_types = make_attribute_types()
  ))
  return(response$id)
}

state_type_fixture <- function(host, token, project_id, video_type_id) {
  api <- get_api(host, token)
  response <- api$CreateStateType(project_id, StateTypeSpec$new(
    name = "state_type",
    description = "Test state type",
    media_types = list(video_type_id),
    association = "Frame",
    attribute_types = make_attribute_types()
  ))
  return(response$id)
}

track_type_fixture <- function(host, token, project_id, video_type_id) {
  api <- get_api(host, token)
  response <- api$CreateStateType(project_id, StateTypeSpec$new(
    name = "track_type",
    description = "Test track type",
    media_types = list(video_type_id),
    association = "Localization",
    attribute_types = make_attribute_types()
  ))
  return(response$id)
}

make_attribute_types <- function() {
  attribute_types = list(
    AttributeType$new(
      name = "test_bool",
      dtype = "bool",
      default = FALSE
    ),
    AttributeType$new(
      name = "test_int",
      dtype = "int",
      default = 0,
      minimum = -1000,
      maximum = 1000
    ),
    AttributeType$new(
      name = "test_float",
      dtype = "float",
      default = 0.0,
      minimum = -1000.0,
      maximum = 1000.0
    ),
    AttributeType$new(
      name = "test_enum",
      dtype = "enum",
      choices = list("a", "b", "c"),
      default = "a"
    ),
    AttributeType$new(
      name = "test_string",
      dtype = "string",
      default = "asdf"
    ),
    AttributeType$new(
      name = "test_datetime",
      dtype = "datetime",
      use_current = TRUE
    ),
    AttributeType$new(
      name = "test_geopos",
      dtype = "geopos",
      default = list(-179.0, -89.0)
    )
  )
  return(attribute_types)
}

