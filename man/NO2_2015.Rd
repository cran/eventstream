% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NO2_2015-data.R
\docType{data}
\name{NO2_2015}
\alias{NO2_2015}
\title{A dataset containing NO2 data for 2015}
\format{
An array of 4 x 179 x 360 dimensions.
\describe{
 \item{Dimension 1}{Each \code{NO2_2015[t, , ]} contains NO2 data for a given month with \code{t=1} corresponding to March and \code{t=7} corresponding to September}
 \item{Dimensions 2,3}{Each \code{NO2_2015[ ,x, y]} contains NO2 concentration for a given position in the world map.}

}
}
\source{
\url{https://neo.gsfc.nasa.gov/}
}
\usage{
NO2_2015
}
\description{
This dataset contains smoothed NO2 data from March to September 2015
}
\keyword{datasets}
