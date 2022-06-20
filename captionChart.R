library(lubridate)

makeCaption <- function(captionText = "") {
  chartCaption <- paste(captionText,"#onlyfacts @DeadInLongRun", format(today(),"%d %b")) 
  return(chartCaption)
}