## In the [R Console](https://cran.r-project.org/mirrors.html):

```shell
> install.packages('devtools')
> devtools::install_github("cvisionai/tator-r")
> library(tator)
> api.instance <- TatorApi$new()
> api.instance$apiClient$apiKeys['Authorization'] <- 'Token xxxx'
> api.instance$apiClient$basePath <- 'https://xxxx.tator.dev'
> api.instance$GetProjectList()
```