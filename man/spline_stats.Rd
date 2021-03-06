% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/event_functions_2d.R
\name{spline_stats}
\alias{spline_stats}
\title{Computes background quantities using splines}
\usage{
spline_stats(dat)
}
\arguments{
\item{dat}{The data matrix}
}
\value{
A list with following components
\item{\code{med.spline}}{The spline computed from the median values.}
\item{\code{iqr.spline}}{The spline computed from IQR values.}
\item{\code{mean.spline}}{The spline computed from mean values.}
\item{\code{sd.spline}}{The spline computed from standard deviation values.}
\item{\code{mean.dat}}{The mean of the data matrix.}
\item{\code{sd.dat}}{The standard deviation of the data matrix.}
}
\description{
This function computes 4 splines, from median, iqr, mean and standard deviation values.
}
\examples{
out <- gen_stream(1, sd=15)
zz <- as.matrix(out$data)
sstats <- spline_stats(zz[1:100,])
oldpar <- par(mfrow=c(2,1))
image(1:ncol(zz), 1:nrow(zz),t(zz), xlab="Location", ylab="Time" )
plot(sstats[[1]], type="l")
par(oldpar)       
}
