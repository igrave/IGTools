#' Make a regular table from a dataframe with some easy formatting
#'
#' @param x data frame
#' @param ... additional arguments to flextable::regulartable
#' @param FONT A fontname, default Cambria or whatever is available
#' @param autofit Autofit column widths? (default TRUE)
#'
#' @return A regulartable object with selected font, bold header and (possibly) autofit widths
#' @export
#' @import flextable
quick_regular_table <- function(x, ..., FONT = check_font("Cambria"), autofit=TRUE) {
  temp <- regulartable(x,...)
  temp <- font(temp, part="all", fontname = FONT)
  temp <- bold(temp, part="header")
  if(autofit) autofit(temp) else temp
}
