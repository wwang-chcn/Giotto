% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_genes.R
\name{rankSpatialCorGroups}
\alias{rankSpatialCorGroups}
\title{rankSpatialCorGroups}
\usage{
rankSpatialCorGroups(
  gobject,
  spatCorObject,
  use_clus_name = NULL,
  show_plot = NULL,
  return_plot = FALSE,
  save_plot = NULL,
  save_param = list(),
  default_save_name = "rankSpatialCorGroups"
)
}
\arguments{
\item{gobject}{giotto object}

\item{spatCorObject}{spatial correlation object}

\item{use_clus_name}{name of clusters to visualize
(from \code{clusterSpatialCorFeats()})}

\item{show_plot}{logical. show plot}

\item{return_plot}{logical. return ggplot object}

\item{save_plot}{logical. directly save the plot}

\item{save_param}{list of saving parameters, see
\code{\link{showSaveParameters}}}

\item{default_save_name}{default save name for saving, don't change,
change save_name in save_param}
}
\value{
data.table with positive (within group) and negative
(outside group) scores
}
\description{
Rank spatial correlated clusters according to correlation
structure
}
\examples{
g <- GiottoData::loadGiottoMini("visium")

spatCorObject <- detectSpatialCorFeats(g, method = "network")
clusters <- clusterSpatialCorFeats(spatCorObject = spatCorObject)

rankSpatialCorGroups(gobject = g, spatCorObject = clusters,
use_clus_name = "spat_clus")
}
