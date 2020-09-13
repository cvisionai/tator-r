random_localization = function(box_type_id, video_obj, post = FALSE) {
  x <- runif(1, 0.0, 1.0)
  y <- runif(1, 0.0, 1.0)
  w <- runif(1, 0.0, 1.0 - x)
  h <- runif(1, 0.0, 1.0 - y)
  attributes <- list(
    "test_bool" = sample(c(FALSE, TRUE), 1),
    "test_int" = sample(-1000:1000, 1),
    "test_float" = runif(1, -1000.0, 1000.0),
    "test_enum" =  sample(c("a", "b", "c"), 1),
    "test_string" = uuid::UUIDgenerate(),
    "test_datetime" = strftime(as.POSIXlt(Sys.time(), "UTC", "%Y-%m-%dT%H:%M:%S"), "%Y-%m-%d %H:%M:%OS6"),
    "test_geopos" = paste(runif(1, -90.0, 90.0), runif(1, -180.0, 180.0), sep = "_")
  )
  if (post) {
    return(do.call(LocalizationSpec$new, as.list(c(
      x = x,
      y = y,
      width = w,
      height = h,
      type = box_type_id, 
      media_id = video_obj$id,
      frame = sample(0:(video_obj$num_frames -1), 1),
      attributes))
    ))
  } else {
    return(LocalizationUpdate$new(
      x = x,
      y = y,
      width = w,
      height = h,
      type = box_type_id,
      media_id = video_obj$id,
      frame = sample(0:(video_obj$num_frames - 1), 1),
      attributes = attributes
    ))
  }
}

test_that("Localization CRUD", {
  tator_api <- get_api(host, token)
  video_obj <- tator_api$GetMedia(video_id)
  
  # These fields will not be checked for object equivalence after patch.
  exclude <- c('project', 'type', 'media_id', 'id', 'meta', 'user')
  
  # Test bulk create.
  num_localizations <- sample(2000:10000, 1)
  boxes <- c()
  for (i in 1:num_localizations) {
    boxes <- c(boxes, random_localization(box_type_id, video_obj, post = TRUE))
  }
  box_ids <- c()
  responses <- chunked_create(tator_api$CreateLocalizationList, project_id, spec_list = boxes)
  for (response in responses) {
    box_ids <- c(box_ids, response$id)
  }
  expect_equal(length(box_ids), length(boxes))
  print(paste("Created", length(box_ids), "boxes!"))
  
  # Test single create.
  box <- random_localization(box_type_id, video_obj, post = TRUE)
  response <- tator_api$CreateLocalizationList(project_id, localization.spec = list(box))
  expect_equal(class(response)[1], "CreateListResponse")
  box_id <- response$id[[1]]

  # Patch single box.
  patch <- random_localization(box_type_id, video_obj)
  response <- tator_api$UpdateLocalization(box_id, localization.update = patch)
  expect_equal(class(response)[1], "ApiResponse")
  print(response$message)
  
  # Get single box.
  updated_box <- tator_api$GetLocalization(box_id)
  expect_close_enough(patch, updated_box, exclude)
  
  # Delete single box.
  response <- tator_api$DeleteLocalization(box_id)
  expect_equal(class(response)[1], "ApiResponse")
  print(response$message)
  
})