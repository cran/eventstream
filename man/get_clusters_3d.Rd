% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/event_functions_3d.R
\name{get_clusters_3d}
\alias{get_clusters_3d}
\title{Extracts events from a three-dimensional data stream}
\usage{
get_clusters_3d(dat, thres = 0.95, epsilon = 3, miniPts = 15)
}
\arguments{
\item{dat}{The data matrix}

\item{thres}{The cut-off quantile. Default is set to \code{0.95}. Values greater than the quantile will be clustered. The rest is not clustered.}

\item{epsilon}{The \code{eps} parameter in \code{dbscan} function in the package \code{dbscan}}

\item{miniPts}{The \code{minPts} parameter in \code{dbscan} function in the package \code{dbscan}}
}
\value{
A list with following components
\item{\code{clusters}}{The cluster assignment according to DBSCAN output.}
\item{\code{data}}{The data of this cluster assignment.}
}
\description{
This function extracts events from a three-dimensional (2D spatial x 1D time) data stream.
}
\examples{
set.seed(1)
arr <- array(rnorm(12000),dim=c(40,25,30))
arr[25:33,12:20, 20:23] <- 10
# getting events
out <- get_clusters_3d(arr, thres=0.985)
# plots
oldpar <- par(mfrow=c(1,3))
plot(out$data[,c(1,2)], xlab="x", ylab="y", col=as.factor(out$clusters$cluster))
plot(out$data[,c(1,3)], xlab="x", ylab="z",col=as.factor(out$clusters$cluster))
plot(out$data[,c(2,3)], xlab="y", ylab="z",col=as.factor(out$clusters$cluster))
par(oldpar)
}
