context("bhl_titlesearchsimple")

test_that("bhl_titlesearchsimple works", {
  skip_on_cran()

  tt <- bhl_titlesearchsimple('nematocerous')
  vv <- bhl_titlesearchsimple('nematocerous', as='xml')
  zz <- bhl_titlesearchsimple('nematocerous', as='json')

  # the correct classes
  expect_is(tt, "data.frame")

  expect_is(zz, "character")
  expect_is(jsonlite::fromJSON(zz), "list")

  expect_is(vv, "character")
  expect_is(xml2::read_xml(vv), "xml_document")

  # the correct dimensions
  expect_equal(length(zz), 1)
  expect_equal(length(jsonlite::fromJSON(zz)), 3)
  expect_equal(length(vv), 1)
  expect_equal(length(xml2::read_xml(vv)), 2)
})
