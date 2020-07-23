# tator-r

NOTE: This package is in development and not ready for use. It will be available on CRAN when it is release-ready.

[R](https://www.r-project.org) client for [Tator](https://github.com/cvisionai/tator).

## Installation

### From CRAN
Not yet available

### From source
Requires Make and Docker with docker image `openapitools/openapi-generator-cli:latest`

```shell
# Generate openapi code
$ make r-bindings
# Build and install tator-r
$ ./build.sh 
# OR use "Install and Restart" in RStudio
```

## API documentation

Documentation for all API functions and models can be found in the [OpenAPI documentation](docs/TatorApi.md).

## Authors

Tator and tator-r are developed by [CVision AI](https://www.cvisionai.com).
