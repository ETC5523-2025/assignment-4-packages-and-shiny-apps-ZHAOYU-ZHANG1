#' Plot a histogram
#'
#' This function creates a histogram of a numeric variable.
#'
#' @param data A data frame containing the variable to plot.
#' @param var The variable to plot (unquoted).
#' @param fill_color Color to fill the bars. Default is "skyblue".
#'
#' @return A ggplot object.
#' @export
#'
#' @examples
#' plot_histogram(mtcars, mpg)
plot_histogram <- function(data, var, fill_color = "skyblue") {
  ggplot2::ggplot(data, ggplot2::aes({{ var }})) +
    ggplot2::geom_histogram(
      fill = fill_color,
      color = "white",
      bins = 30,
      alpha = 0.8
    ) +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      title = paste("Histogram of", deparse(substitute(var))),
      x = deparse(substitute(var)),
      y = "Count"
    )
}
