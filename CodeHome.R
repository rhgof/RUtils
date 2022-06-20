homePath <- "./R/"
codePath <- "./R/"

outputPath <- "./Outputs/"
refPath <- "./RefData/"
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