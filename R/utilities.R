#' Retrieves a `TatorAPI` instance using the given host and token.

#'  @param host URL of host. Default is https://www.tatorapp.com.
#'  @param token API token.
#'  @return TatorApi object
#' @export
get_api <- function(host = "https://www.tatorapp.com", token = Sys.getenv("TATOR_TOKEN")) {
  instance <- TatorApi$new()
  instance$apiClient$apiKeys["Authorization"] <- stringr::str_interp("Token ${token}")
  instance$apiClient$basePath <- host
  return(instance)
}