#' Translate RNA codons to amino acids
#'
#' @param codons Codon to translate
#'
#' @return amino acids sequence
#' @export
translate <- function(codons){
  amino_acids <- paste0(RNA[codons], collapse = "")
  return(amino_acids)
}
