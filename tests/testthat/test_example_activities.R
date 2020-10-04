test_that("activities create", {
  cmd <- paste(
    "$R_HOME/bin/Rscript ../examples/activities.R",
    "--host", host,
    "--token", token,
    "--video_type_id", video_type_id,
    "--video_id", video_id,
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})