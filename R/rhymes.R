#' For each word, get a list of various syllabic pronunications.
#'
#' Then check whether the last level number of syllables is pronounced
#' the same. If so, the words probably rhyme
#'
#' @param word1
#' @param word2
#' @param level
#'
#' @return
#' @export
#'
#' @examples
rhymes <- function(word1, word2, level = 2) {
  pt$rhymes(word1, word2, level)
}
