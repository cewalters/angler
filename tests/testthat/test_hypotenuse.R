context("test angler")
library(angler)

test_that("hypotenuse obey pythag", {
  expect_equal(hypotenuse(opposite = 2, adjacent = 3), sqrt(2^2 + 3^2))
  expect_equal(hypotenuse(opposite = 2, adjacent = 3), sqrt(13))
  expect_equal(hypotenuse(opposite = 3, adjacent = 4), 5)
})

test_that("hypotenuse errors",{
  expect_error(hypotenuse(opposite = -2, adjacent = 3))
  expect_error(hypotenuse(opposite = 2, adjacent = -3))
  expect_error(hypotenuse(opposite = -2, adjacent = -3))
  expect_error(hypotenuse(opposite = 0, adjacent = 3))
  expect_error(hypotenuse(opposite = 2, adjacent = 0))
})
