#' for caching files that are used often
#' @title readCachedFile
#' @description download and cache frequently used files
#' @param path to file to cache
#' @param uniqueName unique name for cached file in cases where path has common names
#' @param period after which the cached file will no longer be valid
#' @param extDrive  for large files to be stored on external drives
#' @export
readCachedFile <- function(path, uniqueName = NULL, period = lubridate::hours(1),extDrive = FALSE) {

  if ( is.null(uniqueName) ) {
    fileName <- basename(path)
  } else {
    fileName <- uniqueName
  }

  cacheFile = cacheFile(fileName,extDrive)

  # cacheFile does not exist or older than period

   if (!file.exists(cacheFile) | (file.exists(cacheFile) & (lubridate::now()-period > file.mtime(cacheFile))) ) {
    print(paste("Downloading",path,"to",cacheFile))
    curl::curl_download(path,cacheFile)
  }
  return(cacheFile)

}
