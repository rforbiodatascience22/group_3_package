#' DNA sequence
#'
#'Generation of a DNA sequence
#'
#' @param DNAletters Number of letters in output sequence
#'
#' @return
#' @export
ATGC <- function(DNAletters){
  Sequence <- sample(c("A", "T", "G", "C"), size = DNAletters, replace = TRUE)
  output <- paste0(Sequence, collapse = "")
  return(output)
}
