test_that("media uploads", {
  skip_on_cran()
  cmd <- paste(
    "$R_HOME/bin/Rscript ../examples/upload_media.R",
    "--host", host,
    "--token", token,
    "--type_id", video_type_id,
    "--media_path", video_file_path,
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})