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

#' Breaks a create_*_list operation into chunks.
#'
#'   Example:
#'
#'\code{} 
#'         created_ids = c()
#'         for (response in chunked_create(api$CreateLocalizationList,1, localization_spec=my_long_list) {
#'             created_ids <- c(created_ids, response.id)
#'         }
#' }
#'  @param func Function to call on each chunk.
#'  @param project Unique integer identifying a project.
#'  @return Generator that yields a response.
#' @export
chunked_create <- function(FUN, project, spec_list) {
  for (idx in range(0, length(spec_list), 500)) {
    response <- FUN(project, spec_list[idx:(idx+500)])
    return(response) # THIS SHOULD BE A YIELD
  }
}