#' @details Create a set of analyses objects using the POST operation
#' Retrieve the set of analyses objects
#' Update the analysis object
#' Get the object and make sure it was updated
#' Delete the object
#' Retrieve the set of analyses objects and make sure that object was deleted
test_that("Create a set of analyses objects using the POST operation", {
  skip_on_cran()
  # Setup the interface to tator
  tator_api <- get_api(host, token)
  
  # Create the analysis records
  name <- "TestAnalysis"
  number_of_analyses <- 10
  existing_num_of_analyses <- length(tator_api$get_analysis_list(project = project_id))
  for (count in seq(number_of_analyses)) {
    data_query <- paste0("random_query:", count)
    spec <- AnalysisSpec$new(name = name, data_query = data_query)
    tator_api$create_analysis(project = project_id, analysis.spec = spec)
  }
  
  # Retrieve the analyses and verify the count matches
  analyses <- tator_api$get_analysis_list(project = project_id)
  expect_equal(length(analyses), (existing_num_of_analyses + number_of_analyses))
  
  # Update the analysis object
  obj <- analyses[[1]]
  test_obj_id <- obj$id
  spec <- AnalysisSpec$new(name = "TestAnalysis2", data_query = "another_random_query:0")
  tator_api$update_analysis(id = test_obj_id, analysis.spec = spec)
  response <- tator_api$get_analysis(id = test_obj_id)
  expect_equal(test_obj_id, response$id)
  expect_equal(spec$name, response$name)
  expect_equal(spec$data_query, response$data_query)
  
  # Remove the analysis object
  tator_api$delete_analysis(id = test_obj_id)
  analyses <- tator_api$get_analysis_list(project = project_id)
  analysis_is_gone <- TRUE
  for (obj in analyses) {
    if (obj$id == test_obj_id) {
      analysis_is_gone <- FALSE
      break
    }
  }
  expect_true(analysis_is_gone)
  expect_equal(length(analyses), (existing_num_of_analyses + number_of_analyses - 1))
})