test_that("video clips download", {
  cmd <- paste(
    "$R_HOME/bin/Rscript ../examples/video_clips.R",
    "--host", host,
    "--token", token,
    "--video_id", video_id,
    '--file_path', '/tmp/asdf',
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})