\name{poles}
\alias{poles}
\title{
Searching for the simple poles of a function
}
\description{
Searches for the simple poles of a function by finding the zeros of its reciprocal (definition of a pole). The user has to specify the range of random numbers that are used as the inital values of the search since the process employs optimisations. 
}
\usage{
poles(func, R, track.plot = TRUE, control = list(tol = 10^-15, h = 10^-12, 
 ite = 50, unit.concentric = 2, sector = 12, draw = 1))
}
\arguments{
  \item{func}{
A function whose simple poles to be sought.
}
  \item{R}{
The radius of the disc on the complex plane within which random numbers are drawn to start the optimisation process.
}
  \item{track.plot}{
If \kbd{TRUE}, a plot of the searching process is displayed. Legend of the plot: \cr
 - The grey dotted lines refer to the segments on the complex plane within which random numbers are drawn (This is to ensure random numbers are drawn more uniformly). \cr
 - Small circles denote the random numbers drawn to start a search. The coloured line shows the locus of the search. If a small circle is shown without a coloured line, the search is not succesful within a number of iteration (see \kbd{ite}). \cr
 - Black dots denote the simple poles found. \cr
}
  \item{control}{
This is a list of search settings: \cr
 - \kbd{tol} : the tolerance level of the differential in the search process. The differential is considered to be zero if below this tolerance level. \cr
 - \kbd{h} : the differential in computing the Jacobian matrix. The default of 10^-12 should be suitable for most commonly used functions. \cr
 - \kbd{ite} : the number of iteration allowed for the searching process. If the tolerance level is not met and the iteration limit is reached, the search is considered as unsuccessful; not coloured line of this search is shown on the plot. \cr
 - \kbd{unit.concentric} : the number of concentric circles within a unit circle in segmenting the range of the random numbers. Also see Details. \cr
 - \kbd{sector} : the number of sectors in each concentric circle. Also see Details.
 - \kbd{draw} : the number of random numbers to be drawn in each segment. Also see Details.
}
}
\details{
The search employs optimisations that searches for the zeros of the function's reciprocal. As such, the initial value used in the search process is crucial. To ensure that the initial values are drawn uniformly, the user specified range (the radius of the disc) is segmented.
The segmentation is done by having concentric circles and these circles are further divided into sectors. The radii of the concentric circles are determined in the way that all sectors are of the same size.
Since the argument \kbd{unit.concentric} refers to the number of concentric circles in a unit circle, the number of segments in the range of initial values will be \kbd{R}\eqn{\times}\kbd{unit.concentric}\eqn{\times}\kbd{sector} and the total number of random numbers to be drawn as initial values is then \kbd{R}\eqn{\times}\kbd{unit.concentric}\eqn{\times}\kbd{sector}\eqn{\times}\kbd{draw}.
This way of determining the number of concentric circle allows the number of segments to be adjusted when changing the radius of the range,\kbd{R}.
}
\value{
A list of simple poles. \kbd{NULL} is returned if no simple poles found.
}
\author{
Char Leung
}
\examples{
poles(function(z){log(z)/(1+z^3)},R=4)
}
