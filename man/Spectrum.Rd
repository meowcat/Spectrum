% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Spectrum.R
\docType{class}
\name{Spectrum}
\alias{Spectrum}
\alias{.Spectrum}
\alias{class:Spectrum}
\alias{Spectrum-class}
\alias{[[<-,Spectrum-method}
\alias{$<-,Spectrum-method}
\alias{Spectrum_elements}
\title{Spectrum class}
\arguments{
\item{...}{Mandatory spectrum elements. See \code{Spectrum_elements}
for their names and classes.}
}
\description{
TODO
}
\examples{
## An empty spectrum
sp <- Spectrum()
sp

## Updating mandatory elements
sp$msLevel
class(sp$msLevel)
sp$msLevel <- 2L ## works
sp$msLevel
try(sp$msLevel <- "not an integer")
sp$msLevel

pa <- PeakAnnotation(peaks = list(c(345.3, 345.32, 345.35, 345.39, 345.4),
                                  657.01,
                                  1231.182),
                     annotations = list("a5", "z3", "y7"))
sp$peakAnnotation
sp$peakAnnotation <- pa
sp$peakAnnotation

## Adding arbitrary elements
sp$foo <- "bar"
sp
}