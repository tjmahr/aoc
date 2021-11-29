test_that("get_aoc_year() works", {
  withr::local_options(list(aoc.year = 2019))
  expect_equal(get_aoc_year(), 2019)
})
