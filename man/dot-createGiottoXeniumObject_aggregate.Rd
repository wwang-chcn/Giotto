% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convenience.R
\name{.createGiottoXeniumObject_aggregate}
\alias{.createGiottoXeniumObject_aggregate}
\title{Create a Xenium Giotto object from aggregate info}
\usage{
.createGiottoXeniumObject_aggregate(
  data_list,
  instructions = NULL,
  cores = NA,
  verbose = TRUE
)
}
\arguments{
\item{data_list}{list of data loaded by \code{.load_xenium_folder}}

\item{instructions}{list of instructions or output result
from \code{\link[GiottoClass]{createGiottoInstructions}}}

\item{cores}{how many cores or threads to use to read data if paths are
provided}

\item{verbose}{be verbose when building Giotto object}
}
\value{
giotto object
}
\description{
Aggregate workflow for createGiottoXeniumObject
}
\seealso{
createGiottoXeniumObject .createGiottoXeniumObject_subcellular
}
\keyword{internal}
