
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rbosome

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of Rbosome from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rforbiodatascience22/group_3_package")
```

## Loading Rbosome package

``` r
library(Rbosome)
```

## Package’s functionality

Rbosome package delivers an easy way to work with the central dogma of
molecular biology.

It provides basic functions to:

-   create a random DNA strand

-   transform DNA to RNA

-   transform RNA to a list of codons

-   translate RNA codons to letter code of amino acids

-   generate an amino acids’ abundance plot

------------------------------------------------------------------------

## Functions’ usage - example

### Create a DNA string consisting of 90 nucleotides:

``` r
set.seed(26)
DNA_seq <- ATGC(90)
DNA_seq
#> [1] "CCGCCGGAGTCTCTTTAGTTCGCGCTAGCCGCGGCAGAAACTGCTGAGTCGCCCTGGAGACTTACAGCGCGGACATGTAACGGCCACGAA"
```

### Transform DNA string to RNA

``` r
RNA_seq <- DNA_to_RNA(DNA_seq)
RNA_seq
#> [1] "CCGCCGGAGUCUCUUUAGUUCGCGCUAGCCGCGGCAGAAACUGCUGAGUCGCCCUGGAGACUUACAGCGCGGACAUGUAACGGCCACGAA"
```

### Make a list of RNA_string’s codons

``` r
codons <- rna_transform(RNA_seq)
codons
#>  [1] "CCG" "CCG" "GAG" "UCU" "CUU" "UAG" "UUC" "GCG" "CUA" "GCC" "GCG" "GCA"
#> [13] "GAA" "ACU" "GCU" "GAG" "UCG" "CCC" "UGG" "AGA" "CUU" "ACA" "GCG" "CGG"
#> [25] "ACA" "UGU" "AAC" "GGC" "CAC" "GAA"
```

### Translate codons to amino acids

``` r
AA_seq = translate(codons)
AA_seq
#> [1] "PPESL_FALAAAETAESPWRLTARTCNGHE"
```

### Create abundance plot

``` r
aa_abundance_plot(AA_seq)
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />
