% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy.R
\name{input_tidy}
\alias{input_tidy}
\title{Represent data in a 'tidy' format}
\usage{
input_tidy(pdata_file, exprs_file)
}
\arguments{
\item{pdata_file}{character(1) The path to the phenotype data file}

\item{exprs_file}{character(1) The path to the expression data file}
}
\value{
A data.frame with 'tidy' formatting.
}
\description{
'Tidy' data takes a 'long' view of data, where each variable is a column.
}
\details{
This approach popularized by Hadley Wickhan; see the vignette in
 the package 'dplyr'
}

