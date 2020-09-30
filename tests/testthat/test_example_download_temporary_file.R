test_that("download temporary file", {
  # Get project and video.
  tator_api = get_api(host, token)

  t <- tempfile(fileext = ".txt")
  write("foo", file = t)
  
  response <- upload_temporary_file(tator_api, project_id, t)
  temporary_file_id = response$id
  
  cmd <- paste(
    "$R_HOME/bin/Rscript ../examples/download_temporary_file.R",
    "--host", host,
    "--token", token,
    "--temporary_file_id", temporary_file_id,
    '--file_path', '/tmp/asdf',
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})