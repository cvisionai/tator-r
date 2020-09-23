test_that("Temporary file", {
  tator_api <- get_api(host, token)
  
  all_temps <- tator_api$GetTemporaryFileList(project_id)
  expect_true(is.list(all_temps))
  expect_false(is.null(all_temps))
  initial_len <- length(all_temps)
  
  temp <- tempfile(fileext = ".txt")
  f <- file(temp, open = "w")
  write("foo", file = f)
  close(f)
  
  response <- upload_temporary_file(tator_api, project_id, temp)
  expect_equal(class(response)[1], "CreateResponse")
  print(response$message)
  
  all_temps <- tator_api$GetTemporaryFileList(project_id)
  expect_equal(length(all_temps), (initial_len + 1))
  
  td <- tempdir()
  temp_fp <- paste0(td, "foo.txt")
  temp_element <- all_temps[[1]]
  download_temporary_file(tator_api, temp_element, temp_fp)
  contents <- readChar(temp_fp, file.info(temp_fp)$size)
  expect_equal(contents, "foo\n")
})