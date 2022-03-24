#' Plot abundance of unique amino acids in sequence
#'
#' @param aa_seq string of amino acids
#'
#' @importFrom magrittr %>%
#' @export
aa_abundance_plot <- function(aa_seq){

  # Extract unique amino acids from sequence
  aa_unique <- aa_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  # Count instances of each amino acid and add to matrix
  counts <- sapply(aa_unique, function(aa_plot) stringi::stri_count_fixed(str = aa_seq, pattern =  aa_plot)) %>%
    as.data.frame()

  # Create column and row names for matrix
  colnames(counts) <- c("Counts")
  counts[["Amino_acid"]] <- rownames(counts)

  # Plot the amino acid abundances
  Amino_acid <- Counts <- NULL
  aa_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = Amino_acid, y = Counts, fill = Amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(aa_plot)
}
