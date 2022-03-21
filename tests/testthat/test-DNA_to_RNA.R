testthat::test_that("DNA transcription works", {
  testthat::expect_equal(DNA_to_RNA("ATTCG"), "AUUCG")
})
