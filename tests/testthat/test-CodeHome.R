library(RUtils)

test_that("FilePaths", {
  expect_equal(inputFile("Name") , "./Inputs/Name")
  expect_equal(outputFile("Name") , "./Outputs/Name")
  expect_equal(codeFile("Name") , "./R/Name")
  expect_equal(refFile("Name") , "./RefData/Name")
  expect_equal(utilFile("Name") , "./RUtils/Name")

  })
