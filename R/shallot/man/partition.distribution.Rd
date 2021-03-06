\name{partition.distribution}
\alias{partition.distribution}
\alias{ewens}
\alias{print.shallot.distribution.ewens}
\alias{ewens.pitman}
\alias{print.shallot.distribution.ewensPitman}
\alias{ewens.attraction}
\alias{print.shallot.distribution.ewensAttraction}
\alias{ewens.pitman.attraction}
\alias{print.shallot.distribution.ewensPitmanAttraction}
\alias{ddcrp}
\alias{print.shallot.distribution.ddcrp}
\title{Distribution}
\description{
  These functions specify the Ewens, Ewens-Pitman, Ewens attraction, Ewens-Pitman attraction, and ddCRP distributions which would then be used in the \code{\link{sample.partitions} function.}
}
\usage{
ewens(mass,n.items,names = paste0("c", 1:n.items))
\method{print}{shallot.distribution.ewens}(x, ...)
ewens.pitman(mass,discount,n.items,names = paste0("c", 1:n.items))
\method{print}{shallot.distribution.ewensPitman}(x, ...)
ewens.attraction(mass, attraction)
\method{print}{shallot.distribution.ewensAttraction}(x, ...)
ewens.pitman.attraction(mass, discount, attraction)
\method{print}{shallot.distribution.ewensPitmanAttraction}(x, ...)
ddcrp(mass, attraction)
\method{print}{shallot.distribution.ddcrp}(x, ...)
}
\arguments{
\item{mass}{An object of class \code{shallot.mass}.}
\item{discount}{An object of class \code{shallot.discount}.}
\item{attraction}{An object of class \code{shallot.attraction}.}
\item{n.items}{An integer containing the number of items to partition.}
\item{names}{A character vector containing the names of the items.  The default names are of the form \dQuote{c1}, \dQuote{c2}, etc.}
\item{x}{An object of class \code{shallot.distribution}.}
\item{...}{Currently ignored.}
}
\value{
An object of class \code{shallot.distribution}.
}
\author{David B. Dahl \email{dahl@stat.byu.edu}}
\seealso{
\code{\link{mass}},
\code{\link{discount}},
\code{\link{attraction}},
\code{\link{sample.partitions}}
}
\references{
\href{https://doi.org/10.1080/01621459.2016.1165103}{Dahl, D. B., Day, R., and Tsai, J. (2017), Random Partition Distribution Indexed by Pairwise Information, \emph{Journal of the American Statistical Association}, accepted. <DOI:10.1080/01621459.2016.1165103>}
}
\examples{
pd1 <- ewens(mass(1),50)

decay <- decay.exponential(temperature(1.0),dist(scale(USArrests)))
attraction <- attraction(permutation(n.items=50,fixed=FALSE), decay)
pd2 <- ewens.pitman.attraction(mass(1), discount(0.05), attraction)

pd3 <- ddcrp(mass(1), attraction)
}
