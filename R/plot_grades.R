#' Plot a histogram of student grades

#Using ggplot2 to create a very simple visual representation is the purpose of this function. 
#The function first uses [check_grade_column()] to validate the grade column, and then it generates 
# histogram that illustrates how grades are distributed across all grades. The objective is to provide a very basic, 
#beginner-friendly version of this functionality, which meets the expectations for the project and module.

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

