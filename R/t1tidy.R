#' Tidy tableone output
#'
#' @param x A tableone object
#' @param newcol name for the column of variables
#' @param ... Other arguments passed to broom::fix_data_frame()
#'
#' @return A tibble
#' @export
#' @importFrom broom fix_data_frame
#' @importFrom utils capture.output

t1tidy <- function(x, newcol = "Variable", ...) {
  capture.output(x <- print(x))
  fix_data_frame(x, newcol=newcol, ...)
}
