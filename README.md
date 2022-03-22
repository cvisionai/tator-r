# tator-r

[R](https://www.r-project.org) client for [Tator](https://github.com/cvisionai/tator).

## Example usage
```
library(tator)

api <- get_api(host = 'https://cloud.tator.io', token = 'MY_TOKEN')
api$get_media_list(1) # Pass a project ID
```

Visit the [examples](tests/examples) for more.

## Installation

### From GitHub
Download from [Releases](https://github.com/cvisionai/tator-r/releases)

Installation instructions for R packages can be found [here](https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/install.packages)

### From source
Requires Make and Docker with docker image `openapitools/openapi-generator-cli:latest`

```
# Generate openapi code
$ make r-bindings
# Build and install tator-r
$ ./build.sh 
# OR use "Install and Restart" in RStudio
```

## API documentation

Documentation for all API functions and models can be found in the [OpenAPI documentation](https://tator.io/api/0).

## Authors

Tator and tator-r are developed by [CVision AI](https://cvisionai.com).
