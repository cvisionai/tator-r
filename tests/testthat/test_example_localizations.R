test_that("localizations", {
  cmd <- paste(
    "$R_HOME/bin/Rscript ../../examples/localizations.R",
    "--host", host,
    "--token", token,
    "--video_id", video_id,
    "--type_id", box_type_id,
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})