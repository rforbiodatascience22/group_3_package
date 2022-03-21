#' Translate RNA codons to amino acids
#'
#' @param codons 
#'
#' @return amino acids sequence
translate <- function(codons){
  amino_acids <- paste0(RNA[codons], collapse = "")
  return(amino_acids)
}