context("test angler")
library(angler)

test_that("hypotenuse obey pythag", {
  expect_equal(hypotenuse(opposite = 2, adjacent = 3), sqrt(2^2 + 3^2))
})

test_that("0 < theta < pi/2", {
  expect_equal(hypotenuse(opposite = 2, adjacent = 3), sqrt(2^2 + 3^2))
})
