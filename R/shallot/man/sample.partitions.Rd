\name{sample.partitions}
\alias{sample.partitions}
\alias{print.shallot.samples.raw}
\title{Sample Partitions from Partition Distributions}
\description{
This function samples partitions from the Ewens, Ewens-Pitman, Ewens attraction, Ewens-Pitman attraction, and ddCRP distributions.
}
\usage{
sample.partitions(x, n.draws, parallel = TRUE)
\method{print}{shallot.samples.raw}(x, ...)
}
\arguments{
\item{x}{An object of class \code{shallot.distribution} obtained, for example, from the \code{\link{ewens.pitman.attraction}} function.}
\item{n.draws}{An integer representing the desired number of samples.  Due to parallelization, slightly more samples may be returned.}
\item{parallel}{Should sampling be done in parallel by simultaneously using all CPU cores?}
\item{...}{Currently ignored.}
}
\value{
An object of class \code{shallot.samples.raw} which can be subsequently be used in \code{\link{process.samples}}, \code{\link{pairwise.probabilities}}, \code{\link{estimate.partition}},  
}
\note{
If this function is interrupted by the user, the computation engine will be broken and subsequent calls to package functions may fail until a new \R session is started.
}
\author{David B. Dahl \email{dahl@stat.byu.edu}}
\seealso{
\code{\link{partition.distribution}},
\code{\link{process.samples}},
\code{\link{pairwise.probabilities}},
\code{\link{estimate.partition}}
\code{\link{sample.partitions.posterior}}
}
\examples{
\dontrun{
example(shallot)
}
}
