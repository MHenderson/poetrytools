#' poetrytools for R
#'
#' @import reticulate
#'
#' @docType package
#' @name poetrytools
NULL

# python 'foo' module I want to use in my package
pt <- NULL

.onLoad <- function(libname, pkgname) {
  # delay load foo module (will only be loaded when accessed via $)
  pt <<- reticulate::import("poetrytools", delay_load = TRUE)
}
