test_that("Download media", {
  tator_api <- get_api(host, token)
  video_obj <- tator_api$GetMedia(video_id)
  video_path <- paste0("testdownloads/", video_obj$name)
  if (file.exists(video_path)) {
    if (file.remove(video_path)) {
      download_media(tator_api, video_obj, video_path)
    } else {
      fail("Old video file was not removed")
    }
  }
  expect_true(file.exists(video_path))
  expect_equal(file.info(video_path)$size, 2299653)
})