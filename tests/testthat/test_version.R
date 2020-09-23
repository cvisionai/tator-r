test_that("Version CRUD", {
  tator_api <- get_api(host, token)
  
  # Test single create.
  spec <- VersionSpec$new(name = "Test Version", description = "A version for testing")
  response <- tator_api$CreateVersion(
    project = project_id,
    version.spec = spec
  )
  expect_equal(class(response)[1], "CreateResponse")
  print(response$message)
  pk <- response$id
  
  # Test patch
  response <- tator_api$UpdateVersion(pk, version.update = VersionUpdate$new(name = "Updated Version"))
  expect_equal(class(response)[1], "MessageResponse")
  print(response$message)
  
  # Compare with get results.
  updated <- tator_api$GetVersion(pk)
  expect_equal(class(updated)[1], "Version")
  expect_equal(updated$name, "Updated Version")
  
  # Test delete.
  response <- tator_api$DeleteVersion(pk)
  expect_equal(class(response)[1], "MessageResponse")
  print(response$message)
})