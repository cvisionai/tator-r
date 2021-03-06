test_that("media archive uploads", {
  skip_on_cran()
  cmd <- paste(
    "$R_HOME/bin/Rscript ../examples/upload_media_archive.R",
    "--host", host,
    "--token", token,
    "--project_id", project_id,
    "--media_dir", image_set_path,
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})