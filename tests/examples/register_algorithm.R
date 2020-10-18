#!/usr/bin/env Rscript

#' Registers an algorithm argo workflow using the provided parameters

#' This will upload the given manifest file, save it to tator, and the new
#' server side URL will be used when registering the workflow. This may change
#' the filename of the manifest file.

# ./build.sh
# Rscript examples/register_algorithm.R --host="https://xxx.tator.dev" --token="xxx" \
# --project_id 123 --manifest=/tmp/myManifest.yaml --algorithm_name=MyAlgo \
# --files_per_job=5 --description='A saved algorithm workflow' \
# --cluster_id=123

library(tator)
library(optparse)
library(logging)

basicConfig()
logger <- getLogger()

option_list = list(
  make_option(c("-h", "--host"), type="character", default="https://adamant.duckdns.org",
              help="Host URL", metavar="character"),
  make_option(c("-t", "--token"), type="character", default=NULL, 
              help="User token used for connecting to the host", metavar="character"),
  make_option(c("", "--project_id"), type="numeric", default=NULL, 
              help="Unique identifier of project associated with algorithm.", metavar="character"),
  make_option(c("", "--manifest"), type="character", default=NULL, 
              help="Local path to argo workflow manifest file to upload, save, and register the algorithm with", metavar="character"),
  make_option(c("", "--algorithm_name"), type="character", default=NULL, 
              help="Unique name of the workflow", metavar="character"),
  make_option(c("", "--files_per_job"), type="numeric", default=NULL, 
              help="Number of media to process per workflow created", metavar="character"),
  make_option(c("", "--description"), type="character", default=NULL, 
              help="Optional description of workflow", metavar="character"),
  make_option(c("", "--cluster_id"), type="character", default=NULL, 
              help="Optional unique integer identifying the job cluster", metavar="character")
)
opt_parser = OptionParser(option_list=option_list, add_help_option=FALSE)
opt = parse_args(opt_parser)

# Create the interface
tator_api <- get_api(opt$host, opt$token)
user <- tator_api$whoami()
user_id <- user$id

# Upload the manifest file
tus_url <- paste(opt$host, '/files/', sep = "")
loginfo(sprintf("Uploading file %s...", opt$manifest))
tus <- TusClient$new(tus_url)
tus$set_headers(tator_api$api_client$apiKeys['Authorization'])
tus$set_headers(list("Upload-Uid" = uuid::UUIDgenerate()))
chunk_size <- 1 * 1024 * 1024
uploader <- tus$uploader(file_path = opt$manifest, chunk_size = chunk_size)
num_chunks <- ceiling(uploader$get_file_size()/chunk_size)
for (i in 1:num_chunks) {
  uploader$upload_chunk()
}
manifest_upload_url <- uploader$url

# Save the uploaded file using the save algorithm manifest endpoint
spec <- AlgorithmManifestSpec$new(
  name = basename(opt$manifest),
  upload_url = manifest_upload_url
)
response <- tator_api$save_algorithm_manifest(project = opt$project_id, algorithm.manifest.spec = spec)

# Register the algorithm argo workflow
spec <- Algorithm$new(
  name = opt$algorithm_name,
  project = opt$project_id,
  user = user_id,
  description = opt$description,
  manifest = response$url,
  cluster = opt$cluster_id,
  files_per_job = opt$files_per_job
)
response <- tator_api$register_algorithm(project = opt$project_id, algorithm.spec = spec)

loginfo(sprintf("Algorithm registered with ID: %s", response$id))



