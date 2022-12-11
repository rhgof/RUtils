#' @title makeCaption
#' @description standardise making captions for charts
#' @param captionText Text to appear in the caption
#' @export
makeCaption <- function(captionText = "") {
  chartCaption <- paste(captionText,"CC4BY @DeadInLongRun", format(lubridate::today(),"%d %b"))
  return(chartCaption)
}
