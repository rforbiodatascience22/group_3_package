#' Substring RNA in a window of 3 letters
#'
#' @param rna_seq A character vector.
#' @param start integer. The first element to begin codon transformation.
#'
#' @export
rna_transform <- function(rna_seq, start = 1){
  rna_vec <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = rna_vec-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_vec, by = 3))
  return(codons)
}
