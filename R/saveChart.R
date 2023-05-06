#' save a chart in a standard way
#' @export
#' @param fileName Leading part of file name
#' @param chart a ggplot2 chart
#' @param theDate data of chart - defaults to today()
#' @param onlyLatest ignores the data parameter and overwrites chart
saveChart <- function(fileName = "Chart", chart, theDate = NULL, onlyLatest = TRUE) {
  scaleFactor = 0.5
  if (is.null(theDate)) theDate = lubridate::today()

  if (!onlyLatest) {
    ggplot2::ggsave(
      outputFile(paste(format.Date(theDate,"%Y-%m-%d-"),fileName,".png",sep = "")),
      chart,
      device = "png",
      width = 16 / scaleFactor,
      height = 9 / scaleFactor,
      units = "cm",
    )
  }
  ggplot2::ggsave(
    outputFile(paste("Latest-",fileName,".png",sep = "")),
    chart,
    device = "png",
    width = 16 / scaleFactor,
    height = 9 / scaleFactor,
    units = "cm",
  )
}

#' save a chart in a standard way - vertical orientation
#' @export
#' @param fileName Leading part of file name
#' @param chart a ggplot2 chart
#' @param theDate data of chart - defaults to today()
#' @param onlyLatest ignores the data parameter and overwrites chart
saveVertChart <- function(fileName = "Chart", chart, theDate = NULL, onlyLatest = TRUE) {
  scaleFactor = 0.5
  if (is.null(theDate)) theDate = lubridate::today()
  if (!onlyLatest) {
    ggplot2::ggsave(
      outputFile(paste(format.Date(theDate,"%Y-%m-%d-"),fileName,".png",sep = "")),
      chart,
      device = "png",
      width = 8 / scaleFactor,
      height = 11 / scaleFactor,
      units = "cm",
    )
  }
  # The Latest file
  ggplot2::ggsave(
    outputFile(paste("Latest-",fileName,".png",sep = "")),
    chart,
    device = "png",
    width = 8 / scaleFactor,
    height = 11 / scaleFactor,
    units = "cm",
  )
}


#' save a chart in a standard way - horizontal orientation
#' @export
#' @param fileName Leading part of file name
#' @param chart a ggplot2 chart
#' @param theDate data of chart - defaults to today()
#' @param onlyLatest ignores the data parameter and overwrites chart
saveHorizChart <- function(fileName = "Chart", chart ,theDate = NULL, onlyLatest = TRUE) {
  scaleFactor = 0.5
  if (is.null(theDate)) theDate = lubridate::today()

  if (!onlyLatest) {
    ggplot2::ggsave(
      outputFile(paste(format.Date(theDate,"%Y-%m-%d-"),fileName,".png",sep = "")),
      chart,
      device = "png",
      width = 13 / scaleFactor,
      height = 7 / scaleFactor,
      units = "cm",
    )
  }
  # The Latest file
  ggplot2::ggsave(
    outputFile(paste("Latest-",fileName,".png",sep = "")),
    chart,
    device = "png",
    width = 13 / scaleFactor,
    height = 7 / scaleFactor,
    units = "cm",
  )
}


#' save a chart in a standard way - square orientation
#' @export
#' @param fileName Leading part of file name
#' @param chart a ggplot2 chart
#' @param theDate data of chart - defaults to today()
#' @param onlyLatest ignores the data parameter and overwrites chart
saveSquareChart <- function(fileName = "Chart", chart, theDate = NULL, onlyLatest = TRUE) {
  scaleFactor = 0.5
  if (is.null(theDate)) theDate = lubridate::today()

  if (!onlyLatest) {
    ggplot2::ggsave(
      outputFile(paste(format.Date(theDate,"%Y-%m-%d-"),fileName,".png",sep = "")),
      chart,
      device = "png",
      width = 11 / scaleFactor,
      height = 11 / scaleFactor,
      units = "cm",
    )
  }
  ggplot2::ggsave(
    outputFile(paste("Latest-",fileName,".png",sep = "")),
    chart,
    device = "png",
    width = 11 / scaleFactor,
    height = 11 / scaleFactor,
    units = "cm",
  )
}
