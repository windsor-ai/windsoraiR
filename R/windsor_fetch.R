#' Windsor fetch
#' A function to fetch data from the Windsor.ai API
#'
#' @param api_key Your api key to access Windsor.ai API
#' @param connector A connector for the data source.
#' The connector "all" connector blends data from all sources
#' See https://www.windsor.ai/api-fields/ for details.
#' @param date_preset the period for which data is fetched from the API.
#' See https://www.windsor.ai/api-fields/ for details
#' @param fields The fields fetched from the API for a given connector
#' See https://www.windsor.ai/api-fields/ for details.
#'
#' @return A data frame containing the desired data.
#' @export
#'
#' @examples
#' \dontrun{
#' windsor_fetch <- (api_key = "your api key",
#' connector = "all",
#' date_preset = "last_7d",
#' fields = c("source", "campaign", "clicks",
#'            "medium", "sessions", "spend"))
#' }
windsor_fetch <-
  function(api_key,
           connector = "all",
           date_preset = "last_7d",
           fields = c("source", "campaign", "clicks",
                      "medium", "sessions", "spend")) {
    json_data <- jsonlite::fromJSON(
      paste0(
        "https://connectors.windsor.ai/",
        connector,
        "?api_key=",
        api_key,
        "&date_preset=",
        date_preset,
        "&fields=",
        paste(fields, collapse = ",")
      )
    )

    as.data.frame(json_data)

}
