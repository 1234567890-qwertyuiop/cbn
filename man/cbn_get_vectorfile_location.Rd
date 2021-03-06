% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weats.R
\name{cbn_get_vectorfile_location}
\alias{cbn_get_vectorfile_location}
\title{Get the Location of the Vectors File}
\usage{
cbn_get_vectorfile_location()
}
\value{
a full path to the vectors file
}
\description{
Returns the full path to the file of word vectors.  If there is no
environment variable \code{CBN_VECTORS_LOCATION} in the current
environment it prompts to set a location with
\code{cbn_set_vectorfile_location}
}
\details{
If you want prefer the location of your downloaded vectors to persist
across sessions, add
\code{CBN_VECTORS_LOCATION=/Users/me/Documents/myvectors.txt}
or similar to your \code{~/.Renviron} file (creating the file if necessary).
}
\seealso{
\code{\link{cbn_set_vectorfile_location}}
}
