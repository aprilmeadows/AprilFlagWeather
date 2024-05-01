context("FizzBuzz")

testthat::test_that("Input should be a positive, finite integer.",{
  testthat::expect_error(
    FizzBuzz(0))

})
