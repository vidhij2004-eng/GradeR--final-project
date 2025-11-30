#Validation of grade numbers in the DataFrame
#'
#' A function that illustrates defensive programming.
#' A helper function that confirms that the input DataFrame has the
#' expected column name and is numeric. If there is an issue, it will
#' provide an error message for clarity, instead of producing an unclear
#' failure later on.

check_grade_column <- function(df, grade_col) {
  # Defensive programming: basic type checks
  if (!is.data.frame(df)) {
    stop("`df` must be a data.frame.", call. = FALSE)
  }

  if (!is.character(grade_col) || length(grade_col) != 1L) {
    stop("`grade_col` must be a single character string.", call. = FALSE)
  }

  if (!grade_col %in% names(df)) {
    stop(
      sprintf("Column '%s' was not found in the data.", grade_col),
      call. = FALSE
    )
  }

  x <- df[[grade_col]]

  if (!is.numeric(x)) {
    stop(
      sprintf("Column '%s' must be numeric (grades).", grade_col),
      call. = FALSE
    )
  }

  invisible(x)
}
