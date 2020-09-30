test_that("project setup", {
  cmd <- paste(
    "$R_HOME/bin/Rscript ../examples/setup_project.R",
    "--host", host,
    "--token", token,
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
  api <- get_api(host, token)
  projects <- api$GetProjectList()
  success <- FALSE
  for (project in projects) {
    if (project$name == "Test Project") {
      success <- TRUE
      project_id <- project$id
      break
    }
  }
  api$DeleteProject(project_id)
  expect_true(success)
})