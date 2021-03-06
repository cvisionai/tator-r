test_that("download media", {
  skip_on_cran()
  # Get project and video.
  tator_api = get_api(host, token)
  video_obj = tator_api$get_media(video_id)
  project_obj = tator_api$get_project(project_id)

  cmd <- paste(
    "$R_HOME/bin/Rscript ../examples/download_media.R",
    "--host", host,
    "--token", token,
    "--media_name", video_obj$name,
    "--project_name", project_obj$name,
    '--save_path', '/tmp',
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})