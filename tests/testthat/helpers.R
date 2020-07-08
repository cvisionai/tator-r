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
  
}