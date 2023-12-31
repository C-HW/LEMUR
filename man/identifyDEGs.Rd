% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DE_methods.R
\name{identifyDEGs}
\alias{identifyDEGs}
\title{Identify DEGs for a list of genes after performing DE analysis.}
\usage{
identifyDEGs(
  adj_pval,
  log2FC,
  log2mean = NA,
  log2meandiff = -Inf,
  pvalcutoff = 0.05,
  log2FCcutoff = log2(1.5),
  log2meancutoff = -2.25,
  log2meandiffcutoff = -1,
  newcriteria = T
)
}
\arguments{
\item{adj_pval}{a vector of adjusted p-values obtained from a DE analysis}

\item{log2FC}{a vector of log2 fold change obtained from a DE analysis}

\item{log2mean}{a vector of log2(genemean1*genemean2)/2 with genemean1 and genemean2 representing the gene mean from raw counts}

\item{log2meandiff}{a vector of log2(abs(genemean1-genemean2)) with genemean1 and genemean2 representing the gene mean from raw counts}

\item{pvalcutoff}{the p-value threshold to determine DEGs}

\item{log2FCcutoff}{the log2 fold change threshold to determine DEGs}

\item{log2meancutoff}{the log2 mean threshold to determine DEGs}

\item{log2meandiffcutoff}{the log2 difference of gene mean threshold to determine DEGs}

\item{newcriteria}{logical. Whether the gene mean and difference of mean should be included in the criteria}
}
\value{
A logical vector indicating DEGs
}
\description{
An old framework select genes with adjusted p-values smaller than
a threshold and absolute log2 fold change greater than a threshold.
A new framework filters out genes with small average log2 gene means,
but genes showing large difference in mean would be considered as a
candidate for DEGs.
}
\examples{
identifyDEGs(runif(1000), rnorm(1000))
}
