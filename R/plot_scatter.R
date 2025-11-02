plot_scatter <- function(data, x, y) {
  # Ensure required package
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package 'ggplot2' is required but not installed.")
  }

  ggplot2::ggplot(data, ggplot2::aes(x = .data[[x]], y = .data[[y]])) +
    ggplot2::geom_point(color = "steelblue", size = 3, alpha = 0.7) +
    ggplot2::labs(
      title = paste("Scatter Plot of", y, "vs", x),
      x = x,
      y = y
    ) +
    ggplot2::theme_minimal()
}
