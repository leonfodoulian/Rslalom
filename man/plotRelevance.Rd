% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plotRelevance}
\alias{plotRelevance}
\title{Plot results of a Slalom model}
\usage{
plotRelevance(object, n_active = 20, mad_filter = 0.4, annotated = TRUE,
  unannotated_dense = FALSE, unannotated_sparse = FALSE)
}
\arguments{
\item{object}{an object of class \code{Rcpp_SlalomModel}}

\item{n_active}{number of terms (factors) to be plotted (default is 20)}

\item{mad_filter}{numeric(1), filter factors by this mean absolute deviation
to exclude outliers. For large datasets this can be set to 0}

\item{annotated}{logical(1), should annotated factors be plotted? Default is
\code{TRUE}}

\item{unannotated_dense}{logical(1), should dense unannotated factors be
plotted? Default is \code{FALSE}}

\item{unannotated_sparse}{logical(1), should sparse unannotated factors be
plotted? Default is \code{FALSE}}
}
\value{
invisibly returns a list containing the two ggplot objects that make
up the plot
}
\description{
Plot results of a Slalom model
}
\examples{
gmtfile <- system.file("extdata", "reactome_subset.gmt", package = "slalom")
genesets <- GSEABase::getGmt(gmtfile)
data("mesc")
model <- newSlalomModel(mesc, genesets, n_hidden = 5, min_genes = 10)
model <- initSlalom(model)
model <- trainSlalom(model, nIterations = 10)
plotRelevance(model)
}
