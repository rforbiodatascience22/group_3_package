test_that("rna_transform length is a third of input vector", {
  expect_equal(length(rna_transform("AUGAUGGAU", start =1)), 3)
})
