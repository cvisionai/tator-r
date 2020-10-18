test_that("project setup", {
  skip_on_cran()
  cmd <- paste(
    "$R_HOME/bin/Rscript ../examples/setup_project.R",
    "--host", host,
    "--token", token,
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
  api <- get_api(host, token)
  projects <- api$get_project_list()
  success <- FALSE
  for (project in projects) {
    if (project$name == "Test Project") {
      success <- TRUE
      project_id <- project$id
      break
    }
  }
  api$delete_project(project_id)
  expect_true(success)
})