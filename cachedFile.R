suppressMessages(library("tidyverse"))
suppressMessages(library("lubridate"))
suppressMessages(library(curl))

source("RUtils/RUtils.R")


readCachedFile <- function(path, period = hours(1),extDrive = FALSE) {
  fileName <- basename(path)
  cacheFile = cacheFile(fileName,extDrive)
  # cacheFile does not exist or older than period
  if (!file.exists(cacheFile) | (file.exists(cacheFile) & (now()-period > file.mtime(cacheFile))) ) {
    print(paste("Downloading",cacheFile))
    curl_download(path,cacheFile)
  }
  return(cacheFile)

}
