suppressMessages(library("lubridate"))
suppressMessages(library(curl))

#library(RUtils)

readCachedFile <- function(path, uniqueName = NULL, period = hours(1),extDrive = FALSE) {

  if ( is.null(uniqueName) ) {
    fileName <- basename(path)
  } else {
    filename <- uniqueName
  }

  cacheFile = cacheFile(fileName,extDrive)

  # cacheFile does not exist or older than period

   if (!file.exists(cacheFile) | (file.exists(cacheFile) & (now()-period > file.mtime(cacheFile))) ) {
    print(paste("Downloading",cacheFile))
    curl_download(path,cacheFile)
  }
  return(cacheFile)

}
