% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statistics.R
\name{wefat}
\alias{wefat}
\title{Compute the Paper's WEFAT statistic}
\usage{
wefat(items, vectors, x_name, a_name, b_name)
}
\arguments{
\item{items}{information about the items, typically from
\code{\link{cbn_get_items}}}

\item{vectors}{a matrix of word vectors for all the study items, typically
from \code{\link{cbn_get_item_vectors}}}

\item{x_name}{twe \emph{name} of the target word condition, e.g. "AndrogeynousNames"
in WEFAT 2}

\item{a_name}{the name of the first attribute, e.g. "MaleAttributes" in
WEFAT 2}

\item{b_name}{the name of the second attribute, e.g. "FemaleAttributes" in
WEFAT 2}
}
\value{
a data frame with columns \code{Word} and \code{S_wab}, the value of the
        statistic.
}
\description{
Computes the WEFAT statistic from the paper.  No standard error is currently
computed.
}
\examples{
its <- cbn_get_items("WEFAT", 2)
vecs <- cbn_get_item_vectors("WEFAT", 2)
wefs <- wefat(its, vecs, x_name = "AndrogynousNames",
              a_name = "MaleAttributes", b_name = "FemaleAttributes")
props <- cbn_gender_name_stats[, c('name', 'proportion_male')]
wefs_props <- merge(wefs, props, by.x = "Word", by.y = "name")
cor.test(wefs_props$S_wab, wefs_props$proportion_male)

}
