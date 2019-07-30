#' Check font is usable
#'
#' @param fontname A fontname to check for availablility
#'
#' @return The name of a font available to your R installation: Either the font given as fontname or the first available.
#' @export
#'
#' @examples check_font("Cambria")
#'
#' @importFrom gdtools font_family_exists sys_fonts
check_font <- function(fontname){
  if( !font_family_exists(fontname) ){
    # if fontname is not available, we will use the first available
    font_list <- sys_fonts()
    fontname <- as.character(font_list$family[1])
  }
  fontname
}
