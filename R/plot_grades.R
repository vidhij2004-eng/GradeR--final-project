#' Plot a histogram of student grades

#' This function provides a very simple visualization using ggplot2.
#' It uses [check_grade_column()] to ensure the grade column is valid,
#' then creates a histogram to show the distribution of grades. This is
#' intentionally simple and beginner-friendly, matching the goals of the
#' project and the course modules.

plot_grades <- function(df, grade_col) {
  x <- check_grade_column(df, grade_col)

  ggplot2::ggplot(data.frame(grades = x), ggplot2::aes(x = grades)) +
    ggplot2::geom_histogram(binwidth = 1, color = "black", fill = "lightblue") +
    ggplot2::labs(
      title = paste("Distribution of", grade_col),
      x = "Grade",
      y = "Count"
    ) +
    ggplot2::theme_minimal()
}

