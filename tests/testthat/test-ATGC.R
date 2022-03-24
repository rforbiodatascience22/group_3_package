test_that("Number of letters matches input", {
  expect_equal(stringr::str_length(ATGC(1)), 1)
  expect_equal(stringr::str_length(ATGC(2)), 2)
  expect_equal(stringr::str_length(ATGC(3)), 3)
})
