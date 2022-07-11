library(lubridate)

makeCaption <- function(captionText = "") {
  chartCaption <- paste(captionText,"CC4BY @DeadInLongRun", format(today(),"%d %b")) 
  return(chartCaption)
}
