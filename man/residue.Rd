\name{residue}
\alias{residue}
\title{
Residue
}
\description{
Calculate the residue of a complex-valued function using limits. Note that this function only works for simple poles.
}
\usage{
residue(f, z0)
}
\arguments{
  \item{f}{
A function whose residue to be calculated.
}
  \item{z0}{
A real or complex number at which the residue is evaluated.
}
}
\details{
This function calculates \kbd{Res}\eqn{(f,z_0)} by taking the limit of \eqn{(z-z_0)f(z)} as \eqn{z -> z_0}. Therefore, \kbd{z0} should be a simple pole (including one on the branch cut; see Examples).
}
\value{
The calculated residue.
}
\author{
Char Leung
}
\examples{
#The following function has three poles (exp(1i*pi), exp(1i*pi/3) and exp(5i*pi/3)). 
# exp(1i*pi) is a pole on the branch cut thus the other function "disc.integrate" 
# should not be used.
residue(function(z){log(z)/(1+z^3)},exp(1i*pi))
}
