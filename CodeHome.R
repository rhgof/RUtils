homePath <- "./R/"

codePath <- "./R/"
outputPath <- "./Outputs/"
refPath <- "./RefData/"
inputPath <- "./Inputs/"
utilPath <- "./RUtils/"
cachePath <- "./Inputs/cache/"

# not sure if this is used..
popDataPath <- "./RefData/AuPopData/"

inputFile <- function(fileName) {
  return(paste0(inputPath,fileName))
}

outputFile <- function(fileName) {
  return(paste0(outputPath,fileName))
}

codeFile <- function(fileName) {
  return(paste0(codePath,fileName))
}

refFile <- function(fileName) {
  return(paste0(refPath,fileName))
}

popFile <- function(fileName) {
  return(paste0(popDataPath,fileName))
}

utilFile <- function(fileName) {
  return(paste0(utilPath,fileName))
}

cacheFile <- function(fileName,extDisk=FALSE) {
  if (extDisk) cachePath = "/Volumes/Samples/InputData/cache/"
  dir.create(cachePath, showWarnings=FALSE)
  return(paste0(cachePath,fileName))
}
