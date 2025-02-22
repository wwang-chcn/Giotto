% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary_giotto.R
\name{addCellStatistics}
\alias{addCellStatistics}
\title{addCellStatistics}
\usage{
addCellStatistics(
  gobject,
  feat_type = NULL,
  spat_unit = NULL,
  expression_values = c("normalized", "scaled", "custom"),
  detection_threshold = 0,
  return_gobject = TRUE
)
}
\arguments{
\item{gobject}{giotto object}

\item{feat_type}{feature type}

\item{spat_unit}{spatial unit}

\item{expression_values}{expression values to use}

\item{detection_threshold}{detection threshold to consider a gene detected}

\item{return_gobject}{boolean: return giotto object (default = TRUE)}
}
\value{
giotto object if return_gobject = TRUE
}
\description{
adds cells statistics to the giotto object
}
\details{
This function will add the following statistics to cell metadata:
\itemize{
  \item{\strong{nr_feats:} Denotes in how many features are detected per
  cell}
  \item{\strong{perc_feats:} Denotes what percentage of features is
  detected per cell}
  \item{\strong{total_expr:} Shows the total sum of feature expression per
  cell}
}
}
\examples{
g <- GiottoData::loadGiottoMini("visium")

addCellStatistics(g)
}
