% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enpls.od.R
\name{enpls.od}
\alias{enpls.od}
\title{Ensemble Partial Least Squares for Outlier Detection}
\usage{
enpls.od(x, y, maxcomp = NULL, cvfolds = 5L, reptimes = 500L,
  method = c("mc", "boot"), ratio = 0.8, parallel = 1L)
}
\arguments{
\item{x}{Predictor matrix.}

\item{y}{Response vector.}

\item{maxcomp}{Maximum number of components included within each model.
If not specified, will use the maximum number possible (considering
cross-validation and special cases where n is smaller than p).}

\item{cvfolds}{Number of cross-validation folds used in each model
for automatic parameter selection, default is \code{5}.}

\item{reptimes}{Number of models to build with Monte-Carlo resampling
or bootstrapping.}

\item{method}{Resampling method. \code{"mc"} (Monte-Carlo resampling)
or \code{"boot"} (bootstrapping). Default is \code{"mc"}.}

\item{ratio}{Sampling ratio used when \code{method = "mc"}.}

\item{parallel}{Integer. Number of CPU cores to use.
Default is \code{1} (not parallelized).}
}
\value{
A list containing four components:
\itemize{
\item \code{error.mean} - error mean for all samples (absolute value)
\item \code{error.median} - error median for all samples
\item \code{error.sd} - error sd for all samples
\item \code{predict.error.matrix} - the original prediction error matrix
}
}
\description{
Outlier detection with ensemble partial least squares.
}
\note{
To maximize the probablity that each observation can
be selected in the test set (thus the prediction uncertainty
can be measured), please try setting a large \code{reptimes}.
}
\examples{
data("alkanes")
x <- alkanes$x
y <- alkanes$y

set.seed(42)
od <- enpls.od(x, y, reptimes = 50)
print(od)
plot(od)
plot(od, criterion = "sd")
}
\seealso{
See \code{\link{enpls.fs}} for measuring feature importance with
ensemble partial least squares regressions.
See \code{\link{enpls.fit}} for fitting ensemble partial least
squares regression models.
}
\author{
Nan Xiao <\url{https://nanx.me}>
}
