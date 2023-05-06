#' provide wrapper to path input files
#' @export
#' @param fileName of expected file in path
inputFile <- function(fileName) {
  inputPath <- "./Inputs/"
  return(paste0(inputPath,fileName))
}

#' provide wrapper to path output files
#' @export
#' @param fileName of expected file in path
outputFile <- function(fileName) {
  outputPath <- "./Outputs/"
  return(paste0(outputPath,fileName))
}

#' provide wrapper to path code files
#' @export
#' @param fileName of expected file in path
codeFile <- function(fileName) {
  codePath <- "./R/"
  return(paste0(codePath,fileName))
}

#' provide wrapper to path to reference data files
#' @export
#' @param fileName of expected file in path

refFile <- function(fileName) {
  refPath <- "./RefData/"
  return(paste0(refPath,fileName))
}

#' provide wrapper to path to reference population data files
#' @export
#' @param fileName of expected file in path
popFile <- function(fileName) {
  popDataPath <- "./RefData/AuPopData/"
  return(paste0(popDataPath,fileName))
}

#' provide wrapper to path to reference util files
#' @export
#' @param fileName of expected file in path
utilFile <- function(fileName) {
  utilPath <- "./RUtils/"
  return(paste0(utilPath,fileName))
}

#' provide wrapper to path to reference population data files
#' creates cache directory if not exist
#' @export
#' @param fileName of expected file in path
#' @param extDisk  for large files to be stored on external drives

cacheFile <- function(fileName,extDisk=FALSE) {
  cachePath <- "./Inputs/cache/"
  if (extDisk) cachePath = "/Volumes/Samples/InputData/cache/"
  dir.create(cachePath, showWarnings=FALSE)
  return(paste0(cachePath,fileName))
}
