
#' @export
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


#' @export
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


#' @export
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


#' @export
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
