test_that("Version CRUD", {
  skip_on_cran()
  tator_api <- get_api(host, token)
  
  # Test single create.
  spec <- VersionSpec$new(name = "Test Version", description = "A version for testing")
  response <- tator_api$create_version(
    project = project_id,
    version.spec = spec
  )
  expect_equal(class(response)[1], "CreateResponse")
  print(response$message)
  pk <- response$id
  
  # Test patch
  response <- tator_api$update_version(pk, version.update = VersionUpdate$new(name = "Updated Version"))
  expect_equal(class(response)[1], "MessageResponse")
  print(response$message)
  
  # Compare with get results.
  updated <- tator_api$get_version(pk)
  expect_equal(class(updated)[1], "Version")
  expect_equal(updated$name, "Updated Version")
  
  # Test delete.
  response <- tator_api$delete_version(pk)
  expect_equal(class(response)[1], "MessageResponse")
  print(response$message)
})