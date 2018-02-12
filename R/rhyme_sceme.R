#' Get a rhyme scheme for the poem.
#'
#' For each line, lookahead to the future lines of the poem and see whether
#' last words rhyme.
#'
#' @param tokenized_poem
#'
#' @return
#' @export
#'
#' @examples
rhyme_scheme <- function(tokenized_poem) {
  pt$rhyme_scheme(tokenized_poem)
}
