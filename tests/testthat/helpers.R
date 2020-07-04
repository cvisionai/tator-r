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