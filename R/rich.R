#' Rich data input
#' 
#' Capture the semantic meaning of the data we represent. For instance, 
#' separately recognizing the 'phenotypic' data (describing the sample) and the 
#' 'expression' values (derived from , eg microarray or RNAseq data)
#'
#' @param pdata_file character(1) The path to the phenotype data file
#'
#' @param exprs_file character(1) The path to the expression data file
#'
#' @return A SummarizedExperiment() containing samples as colData(), and the 
#'    expression values as assay()
#'    
#' @importFrom SummarizedExperiment SummarizedExperiment   
#'    
#' @export
input_rich <- function(pdata_file, exprs_file){
    pdata <- read.csv(pdata_file, row.names=1, check.names=FALSE)
    exprs <- read.csv(exprs_file, row.names=1, check.names=FALSE)
    
    SummarizedExperiment(as.matrix(exprs), 
                         colData=pdata)
}
