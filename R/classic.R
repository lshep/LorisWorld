#' Classic R approached to data analysis
#'
#' The functions here illustrate how an 'old school' R usere might approach data
#' management analysis.
#'
#' @details There are two files. They are from a microarray experiment. The
#' first file, ALL-phenoData.csv describes the samples. The second file,
#' ALL-expression.csv are the normalized experssion values for 12k probsets
#' across 128 samples. The files originally came form sheets in excel, and were
#' exported from Excel using export-to-csv
#'
#' @param pdata_file character(1) The path to the phenotype data file
#'
#' @param exprs_file character(1) The path to the expression data file
#'
#' @return A data.frame() containing samples as rows and phenotype data and
#' expression data as columns.
#'
#' @importFrom utils read.csv
#'
#' @export
input_classic <- function(pdata_file, exprs_file){
    stopifnot(is_scalar_character(pdata_file))
    stopifnot(is_scalar_character(exprs_file))

    pdata <- read.csv(pdata_file, row.names=1, check.names=FALSE)
    exprs <- read.csv(exprs_file, row.names=1, check.names=FALSE)
    merge(pdata, t(exprs), by=0)
}
