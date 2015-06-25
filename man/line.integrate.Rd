\name{line.integrate}
\alias{line.integrate}
\title{
Evaluate an integral along a straight on the complex plane
}
\description{
Evaluate an integral along a straight on the complex plane. This can be used as an alternative to evaluating an integral in the presence of a branch cut or point.
}
\usage{
line.integrate(f, a, b, complex = TRUE)
}
\arguments{
  \item{f}{
The function whose integral to be evaluated.
}
  \item{a}{
The starting point of the straight line.
}
  \item{b}{
The end point of the straight line.
}
  \item{complex}{
If \kbd{FALSE} and the imaginary part of \kbd{a} and \kbd{b} are zero, R built-in function \kbd{integrate} is used.
}
}
\details{
The function only evaluates an integral along a straight line.
}
\value{
The evaluated value is returned.
}
\author{
Char Leung
}
\examples{
## evaluating an integral in the presence of a branch cut
disc.integrate(function(z){sqrt(z)},0,R=1) #still works
#evaluate the integral along the branch cut
-line.integrate(function(z){sqrt(z)},0,1)+line.integrate(function(z){sqrt(z)},1,0) 
}
