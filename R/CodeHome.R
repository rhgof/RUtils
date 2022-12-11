
#' @export
inputFile <- function(fileName) {
  inputPath <- "./Inputs/"
  return(paste0(inputPath,fileName))
}

#' @export
outputFile <- function(fileName) {
  outputPath <- "./Outputs/"
  return(paste0(outputPath,fileName))
}

#' @export
codeFile <- function(fileName) {
  codePath <- "./R/"
  return(paste0(codePath,fileName))
}

#' @export
refFile <- function(fileName) {
  refPath <- "./RefData/"
  return(paste0(refPath,fileName))
}

#' @export
popFile <- function(fileName) {
  popDataPath <- "./RefData/AuPopData/"
  return(paste0(popDataPath,fileName))
}

#' @export
utilFile <- function(fileName) {
  utilPath <- "./RUtils/"
  return(paste0(utilPath,fileName))
}

#' @export
cacheFile <- function(fileName,extDisk=FALSE) {
  cachePath <- "./Inputs/cache/"
  if (extDisk) cachePath = "/Volumes/Samples/InputData/cache/"
  dir.create(cachePath, showWarnings=FALSE)
  return(paste0(cachePath,fileName))
}
