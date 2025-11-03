# R/plot_bar.R
#' Create a bar plot
#'
#' This function creates a bar plot using ggplot2.
#'
#' @param data A data frame
#' @param x Categorical variable (string)
#' @param y Numerical variable (string)
#' @return A ggplot2 bar chart
#' @export
plot_bar <- function(data, x, y) {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x, y = y)) +
    ggplot2::geom_col(fill = "#0073C2FF") +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      title = paste("Bar plot of", y, "by", x),
      x = x, y = y
    )
}
