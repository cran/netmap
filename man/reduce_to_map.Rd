% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reduce_to_map.R
\name{reduce_to_map}
\alias{reduce_to_map}
\title{Reduces network to vertices present on the map}
\usage{
reduce_to_map(n, link, n_name)
}
\arguments{
\item{n}{A \code{network} or \code{igraph} object.}

\item{link}{A vector with the identifiers of the vertices to keep.}

\item{n_name}{Name of the vertex attribute to filter on.}
}
\value{
A \code{network} or \code{igraph} object with only the vertices
listed in \code{link}.
}
\description{
Removes vertices from a \code{network} or \code{igraph} object which are not
present in the link vector produced by \code{\link{link_network_map}} or
\code{\link{link_network_map2}}.
}
