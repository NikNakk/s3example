#' Create s3example
#'
#' @param item item to include in the object
#'
#' @export
s3example <- function(item) {
  out <- list(
    item = item
  )
  class(out) <- "s3example"
  out
}

#' @exportS3Method knitr::knit_print
knit_print.s3example <- function(x) {
  if (requireNamespace("knitr")) {
    knitr::knit_print(paste("Item:", x$item))
  } else {
    stop("knitr package not available")
  }
}
