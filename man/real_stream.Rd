% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/real_stream-data.R
\docType{data}
\name{real_stream}
\alias{real_stream}
\title{A data stream from a real world application}
\format{
A matrix with 587 rows and 379 columns.
}
\usage{
real_stream
}
\description{
A dataset containing fibre optic cable signals.  A pulse is periodically sent through the cable and this results in a data matrix where each horizontal row (\code{real_stream[x, ]}) gives the strength of the signal at a fixed location \code{x}, and each vertical column (\code{real_stream[ ,t]}) gives the strength of the signal along the cable at a fixed time \code{t}.
}
\keyword{datasets}
