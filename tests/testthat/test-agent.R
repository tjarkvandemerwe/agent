test_that("attribute needs names", {
  expect_error(agent(list(a = 1, 2)))
})
