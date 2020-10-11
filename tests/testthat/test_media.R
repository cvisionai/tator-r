test_that("Get file", {
  skip_on_cran()
  tator_api <- get_api(host, token)
  video_obj <- tator_api$GetMedia(video_id)
  
  tempfile <- tempfile()
  out_path <- paste0(dirname(tempfile), "/video.mp4")
  download_media(tator_api, video_obj, out_path)
  expect_true(file.exists(out_path))
})

test_that("Get audio", {
  skip_on_cran()
  tator_api <- get_api(host, token)
  video_obj <- tator_api$GetMedia(video_id)
  
  audio <- video_obj$media_files$audio
  expect_true(length(audio) > 0)
  expect_equal(audio[[3]]$codec, "aac")
})