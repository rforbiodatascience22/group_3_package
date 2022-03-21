#' DNA to RNA sequence transcription function
#'
#' @param DNA sequence to be transcribed
#'
#' @return
#' @export
#'
DNA_to_RNA <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
