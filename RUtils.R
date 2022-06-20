# set up this way because its all in a subdirectory on target repositories
if (dir.exists("RUtils") ) {
  source("./RUtils/CodeHome.R")
  source(utilFile("customTheme.R"))
  source(utilFile("captionChart.R"))
  source(utilFile("saveChart.R"))
} else {
  #un comment for production
  #testingRUtils = TRUE
  if (testingRUtils) {
    source("./CodeHome.R")
    utilPath = "./"
    source(utilFile("customTheme.R"))
    source(utilFile("captionChart.R"))
    source(utilFile("saveChart.R"))

  } else {
  stop("RUtils Directory does not exists - have you set up git submodule")
  }
}
