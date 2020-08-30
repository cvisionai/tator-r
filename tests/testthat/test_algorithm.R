#' @description Creates an argo manifest file used by the unit tests in this file
create_yaml_file_str = function() {
  manifest_yaml <- "apiVersion: argoproj.io/v1alpha1
kind: Workflow
metadata:
  generateName: test-algorithm-launcher-
spec:
  entrypoint: pipeline
  ttlStrategy:
    secondsAfterCompletion: 300 # Time to live after workflow is completed, replaces ttlSecondsAfterFinished
    secondsAfterSuccess: 300 # Time to live after workflow is successful
    secondsAfterFailure: 600 # Time to live after workflow fails
  volumeClaimTemplates:
  - metadata:
      name: workdir
    spec:
      accessModes: [ \"ReadWriteOnce\" ]
      storageClassName: nfs-client
      resources:
        requests:
          storage: 100Mi
  templates:
  - name: pipeline
    steps:
    - - name: test
        template: test
  - name: test
    script:
      image: cvisionai/tator_transcoder #localhost:5000/tator_transcoder
      env:
      - name: TATOR_MEDIA_IDS
        value: \"{{workflow.parameters.media_ids}}\"
      - name: TATOR_API_SERVICE
        value: \"{{workflow.parameters.rest_url}}\"
      - name: TATOR_AUTH_TOKEN
        value: \"{{workflow.parameters.rest_token}}\"
      - name: TATOR_PROJECT_ID
        value: \"{{workflow.parameters.project_id}}\"
      - name: TATOR_WORK_DIR
        value: \"/work\"
      resources:
        limits:
          cpu: 1000m
          memory: 500Mi
      volumeMounts:
      - name: workdir
        mountPath: /work
      command: [python3]
      source: |
        #!/usr/bin/env python3

        import os
        import tator

        def main():
            host = os.path.dirname(os.getenv('TATOR_API_SERVICE'))
            token = os.getenv('TATOR_AUTH_TOKEN')
            project = int(os.getenv('TATOR_PROJECT_ID'))
            media_ids = os.getenv('TATOR_MEDIA_IDS')
            media_ids = [int(m) for m in media_ids.split(',')]

            tator_api = tator.get_api(host=host, token=token)

            print(f'{host} {token} {project} {media_ids}')

            for media in media_ids:
                name = f'test_media_{media}'
                dq = f'test_media_id:{media}'
                spec = tator.models.AnalysisSpec(name=name, data_query=dq)
                _ = tator_api.create_analysis(project=project, analysis_spec=spec)

        if __name__ == '__main__':
            main()
  "
  return(manifest_yaml)
}

#' @description Test missing upload file for SaveAlgorithManifest endpoint
missing_upload_file = function(host, token, project_id) {
  tator_api <- get_api(host, token)
  caught_exception <- tryCatch({
    spec <- tator::AlgorithmManifestSpec$new(name = "test.yaml", upload_url = "not_there")
    tator_api$SaveAlgorithmManifest(project = project_id, algorithm.manifest.spec = spec)
    return(FALSE)
  }, error = function(e) {
    expect_equal(e$message, "missing value where TRUE/FALSE needed")
    return(TRUE)
  })
  expect_true(caught_exception)
}

#' @description Uploads the provided manifest file
upload_test_algorithm_manifest = function(
  host,
  token,
  project_id,
  manifest_name = "test_manifest.yaml",
  break_yaml_file = FALSE) {
  
  # Setup the interface to tator
  tator_api <- get_api(host, token)
  
  # Create the temporary manifest file
  local_yaml_file <- tempfile(fileext = ".yaml")
  tryCatch({
    if (break_yaml_file) {
      body <- paste(create_yaml_file_str(), "RANDOM_TEXT!!!!!", sep="")
    } else {
      body <- create_yaml_file_str()
    }
    write(body, file = local_yaml_file)
    
    # Upload the manifest file with tus first
    print(paste0("Created temporary manifest file: ", local_yaml_file))
    url <- upload_file(local_yaml_file, host)
    
    # Save the uploaded file using the save algorithm manifest endpoint
    spec <- tator::AlgorithmManifestSpec$new(name = manifest_name, upload_url = url)
    response <- tator_api$SaveAlgorithmManifest(project = project_id, algorithm.manifest.spec = spec)
  }, finally = function() {
    file.remove(local_yaml_file)
  })

  return(response)
}

#' @details Unit test for the SaveAlgorithmManifest endpoint
# Unit testing of the save algorithm endpoint involves the following:
#   - Provide something where the upload file doesn't exist
#   - Upload two of the same files (have the same name, but will result in two separate files)
test_that("Unit test for the SaveAlgorithManifest endpoint", {
  missing_upload_file(host = host, token = token, project_id = project_id)

  response_1 <- upload_test_algorithm_manifest(
    host = host, token = token, project_id = project_id, manifest_name = "test.yaml")
  expect_equal(basename(response_1$url), "test.yaml")

  response_2 <- upload_test_algorithm_manifest(
    host = host, token = token, project_id = project_id, manifest_name = "test.yaml")
  expect_equal(basename(response_2$url), "test_0.yaml")
})

#' @details Unit test for the RegisterAlgorithm endpoint
# Unit testing of the algorithm registration endpoint involves the following:
#   - Create a request body that's fine, but has bad syntax for the .yaml file
#   - Create a request body for a .yaml file that doesn't exist
#   - Normal request body
test_that("Unit test for the RegisterAlgorithm endpoint", {
  # Create a randomized unique algorithm name (that we'll end up deleting later anyway)
  algo_name <- uuid::UUIDgenerate()
  
  # Get the user ID
  tator_api <- get_api(host, token)
  user <- tator_api$Whoami()
  user_id <- user$id
  
  # Create a request body that's fine but has bad syntax for the .yaml file
  caught_exception <- FALSE
  tryCatch({
    response <- upload_test_algorithm_manifest(
      host = host, token = token, project_id = project_id, manifest_name = "test.yaml", break_yaml_file = TRUE)
    
    spec <- tator::AlgorithmSpec$new(
      name = algo_name,
      user = user_id,
      description = "test_description",
      manifest = response$url,
      cluster = NULL,
      files_per_job = 1
    )
    
    response <- tator_api$RegisterAlgorithm(project = project_id, algorithm.spec = spec)
    if (response$content == "API client error") {
      caught_exception <- TRUE
    }
  }, error = function(e) {
    expect_null(e$message)
  })
  
  expect_true(caught_exception)
  
  # Create a request body for a .yaml file that doesn't exist
  caught_exception <- FALSE
  tryCatch({
    spec <- tator::AlgorithmSpec$new(
      name = algo_name,
      user = user_id,
      description = "test_description",
      manifest = "ghost",
      cluster = NULL,
      files_per_job = 1
    )
    
    response <- tator_api$RegisterAlgorithm(project = project_id, algorithm.spec = spec)
    if (response$content == "API client error") {
      caught_exception <- TRUE
    }
  }, error = function(e) {
    expect_null(e$message)
  })
  
  # Create a normal algorithm workflow
  response <- upload_test_algorithm_manifest(
    host = host, token = token, project_id = project_id, manifest_name = "test.yaml")
  
  spec <- tator::AlgorithmSpec$new(
    name = algo_name,
    user = user_id,
    description = "test_description",
    manifest = response$url,
    cluster = NULL,
    files_per_job = 1
  )
  
  response <- tator_api$RegisterAlgorithm(project = project_id, algorithm.spec = spec)
  
  # Get the algorithm info
  algorithm_id <- response$id
  algorithm_info <- tator_api$GetAlgorithm(id)
  expect_equal(spec$name, algorithm_info$name)
  expect_equal(spec$user, algorithm_info$user)
  expect_equal(spec$description, algorithm_info$description)
  
  # Attempt to patch the algorithm info and make sure it has been updated
  # Note: the cluster field is ignored in the patch operation
  # TODO: TBC
})