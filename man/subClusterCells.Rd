% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{subClusterCells}
\alias{subClusterCells}
\title{subClusterCells}
\usage{
subClusterCells(
  gobject,
  name = "sub_clus",
  cluster_method = c("leiden", "louvain_community", "louvain_multinet"),
  cluster_column = NULL,
  selected_clusters = NULL,
  hvg_param = list(reverse_log_scale = TRUE, difference_in_cov = 1, expression_values =
    "normalized"),
  hvg_min_perc_cells = 5,
  hvg_mean_expr_det = 1,
  use_all_genes_as_hvg = FALSE,
  min_nr_of_hvg = 5,
  pca_param = list(expression_values = "normalized", scale_unit = TRUE),
  nn_param = list(dimensions_to_use = 1:20),
  k_neighbors = 10,
  resolution = 1,
  n_iterations = 1000,
  gamma = 1,
  omega = 1,
  python_path = NULL,
  nn_network_to_use = "sNN",
  network_name = "sNN.pca",
  return_gobject = TRUE,
  verbose = TRUE
)
}
\arguments{
\item{gobject}{giotto object}

\item{name}{name for new clustering result}

\item{cluster_method}{clustering method to use}

\item{cluster_column}{cluster column to subcluster}

\item{selected_clusters}{only do subclustering on these clusters}

\item{hvg_param}{parameters for calculateHVG}

\item{hvg_min_perc_cells}{threshold for detection in min percentage of cells}

\item{hvg_mean_expr_det}{threshold for mean expression level in cells with
detection}

\item{use_all_genes_as_hvg}{forces all genes to be HVG and to be used as
input for PCA}

\item{min_nr_of_hvg}{minimum number of HVG, or all genes will be used as
input for PCA}

\item{pca_param}{parameters for runPCA}

\item{nn_param}{parameters for parameters for createNearestNetwork}

\item{k_neighbors}{number of k for createNearestNetwork}

\item{resolution}{resolution}

\item{n_iterations}{number of interations to run the Leiden algorithm.}

\item{gamma}{gamma}

\item{omega}{omega}

\item{python_path}{specify specific path to python if required}

\item{nn_network_to_use}{type of NN network to use (kNN vs sNN)}

\item{network_name}{name of NN network to use}

\item{return_gobject}{boolean: return giotto object (default = TRUE)}

\item{verbose}{verbose}
}
\value{
giotto object with new subclusters appended to cell metadata
}
\description{
subcluster cells
}
\details{
This function performs subclustering on selected clusters.
The systematic steps are:
\itemize{
  \item{1. subset Giotto object}
  \item{2. identify highly variable genes}
  \item{3. run PCA}
  \item{4. create nearest neighbouring network}
  \item{5. do clustering}
}
}
\examples{
g <- GiottoData::loadGiottoMini("visium")

subClusterCells(g, cluster_column = "leiden_clus")
}
\seealso{
\code{\link{.doLouvainCluster_multinet}},
\code{\link{.doLouvainCluster_community}}
and  @seealso \code{\link{doLeidenCluster}}
}
