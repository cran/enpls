% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enspls.od.R
\name{enspls.od.core}
\alias{enspls.od.core}
\title{core function for enspls.od}
\usage{
enspls.od.core(x.sample, y.sample, x.remain, y.remain, maxcomp, cvfolds,
  alpha)
}
\value{
the error vector between predicted y and real y
}
\description{
select the best ncomp and alpha with cross-validation,
then use them to fit the complete training set,
and predict on the test set. scale = TRUE
}
\keyword{internal}
