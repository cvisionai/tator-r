host <- Sys.getenv("TATOR_HOST")
token <- Sys.getenv("TATOR_TOKEN")
test_that("project creates", {
  project_id <- project_fixture(host, token)
  on.exit(project_cleanup(host, token, project_id), add = TRUE)
  expect_true(is.numeric(project_id))
  
  image_type_id <- image_type_fixture(host, token, project_id)
  expect_true(is.numeric(image_type_id))
  
  image_path <- image_file_fixture()
  on.exit(image_file_cleanup(image_path))
  expect_true(file.exists(image_path))

  root_image_path <- unlist(strsplit(tools::file_path_as_absolute(image_path), ":"))[[1]]
  resp <- image_fixture(host, token, project_id, image_type_id, root_image_path)
  expect_equal(resp$message, "Image saved successfully!")
})