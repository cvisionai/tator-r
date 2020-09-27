test_that("download media", {
  # Get project and video.
  tator_api = get_api(host, token)
  video_obj = tator_api$GetMedia(video_id)
  project_obj = tator_api$GetProject(project_id)

  cmd <- paste(
    "$R_HOME/bin/Rscript ../../examples/download_media.R",
    "--host", host,
    "--token", token,
    "--media_name", video_obj$name,
    "--project_name", project_obj$name,
    '--save_path', '/tmp',
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})