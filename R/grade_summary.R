#Check_grade_column()”, internally checks to see if a given table has
#an appropriate grade column. This summary also includes a few other
#estimates of coverage of the grade column (i.e. total number of
#non-missing values, mean, min, max value).

#After generating these basic summaries, we return the generated
#summaries using the S3 class "grade_summary" because it provides a simple way for us
#to define and provide custom print methods for our objects.
#Therefore, the overall System is very easy to use for beginners.

grade_summary <- function(df, grade_col) {
  x <- check_grade_column(df, grade_col)

  x_ok <- x[!is.na(x)]

  out <- list(
    column = grade_col,
    n      = length(x_ok),
    mean   = mean(x_ok),
    min    = min(x_ok),
    max    = max(x_ok)
  )

  class(out) <- "grade_summary"
  out
}

#' @export
print.grade_summary <- function(x, ...) {
  cat("Summary for grade column:", x$column, "\n")
  cat("Number of grades:", x$n, "\n")
  cat("Mean grade:", round(x$mean, 2), "\n")
  cat("Min grade:", x$min, "\n")
  cat("Max grade:", x$max, "\n")
  invisible(x)
}
