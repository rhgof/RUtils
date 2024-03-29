library("tidyverse")
library("lubridate")

source("./RUtils/CodeHome.R")

saveChart <- function(fileName = "Chart", chart, theDate = NULL, onlyLatest = TRUE) {
  scaleFactor = 0.5
  if (is.null(theDate)) theDate = today()

  if (!onlyLatest) {
    ggsave(
      outputFile(paste(format.Date(theDate,"%Y-%m-%d-"),fileName,".png",sep = "")),
      chart,
      device = "png",
      width = 16 / scaleFactor,
      height = 9 / scaleFactor,
      units = "cm",
    )
  }
  ggsave(
    outputFile(paste("Latest-",fileName,".png",sep = "")),
    chart,
    device = "png",
    width = 16 / scaleFactor,
    height = 9 / scaleFactor,
    units = "cm",
  )
}

saveVertChart <- function(fileName = "Chart", chart, theDate = NULL, onlyLatest = TRUE) {
  scaleFactor = 0.5
  if (is.null(theDate)) theDate = today()
  if (!onlyLatest) {
    ggsave(
      outputFile(paste(format.Date(theDate,"%Y-%m-%d-"),fileName,".png",sep = "")),
      chart,
      device = "png",
      width = 8 / scaleFactor,
      height = 11 / scaleFactor,
      units = "cm",
    )
  }
  # The Latest file
  ggsave(
    outputFile(paste("Latest-",fileName,".png",sep = "")),
    chart,
    device = "png",
    width = 8 / scaleFactor,
    height = 11 / scaleFactor,
    units = "cm",
  )
}

saveHorizChart <- function(fileName = "Chart", chart ,theDate = NULL, onlyLatest = TRUE) {
  scaleFactor = 0.5
  if (is.null(theDate)) theDate = today()

  if (!onlyLatest) {
    ggsave(
      outputFile(paste(format.Date(theDate,"%Y-%m-%d-"),fileName,".png",sep = "")),
      chart,
      device = "png",
      width = 13 / scaleFactor,
      height = 7 / scaleFactor,
      units = "cm",
    )
  }
  # The Latest file
  ggsave(
    outputFile(paste("Latest-",fileName,".png",sep = "")),
    chart,
    device = "png",
    width = 13 / scaleFactor,
    height = 7 / scaleFactor,
    units = "cm",
  )
}

saveSquareChart <- function(fileName = "Chart", chart, theDate = NULL, onlyLatest = TRUE) {
  scaleFactor = 0.5
  if (is.null(theDate)) theDate = today()

  if (!onlyLatest) {
    ggsave(
      outputFile(paste(format.Date(theDate,"%Y-%m-%d-"),fileName,".png",sep = "")),
      chart,
      device = "png",
      width = 11 / scaleFactor,
      height = 11 / scaleFactor,
      units = "cm",
    )
  }
  ggsave(
    outputFile(paste("Latest-",fileName,".png",sep = "")),
    chart,
    device = "png",
    width = 11 / scaleFactor,
    height = 11 / scaleFactor,
    units = "cm",
  )
}
