# R/run_app.R
#' Launch the Shiny App
#'
#' This function launches the interactive Shiny application included in the package.
#' @export
run_app <- function() {
  shiny::runApp(system.file("app", "app.R", package = "zzysdata"))
}
