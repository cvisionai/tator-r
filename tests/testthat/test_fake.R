test_that("project creates", {
  project_id <- project_fixture(host="https://xxx.tator.dev", token="xxx")
  expect_true(is.numeric(project_id))
  Sys.sleep(10)
  project_cleanup(host="https://xxx.tator.dev", token="xxx", project_id)
})