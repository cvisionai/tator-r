test_that("localizations", {
  cmd <- paste(
    "Rscript ../../examples/localizations.R",
    "--host", host,
    "--token", token,
    "--video_id", video_id,
    "--type_id", box_type_id,
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})