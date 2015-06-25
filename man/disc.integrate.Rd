\name{disc.integrate}
\alias{disc.integrate}
\title{
Contour integral along a disc / an arc.
}
\description{
Evaluates the contour integral along the disc given the centre and the radius of a disc. The function is first parametrised so the real and imaginary part can be evaluated seperately using the \kbd{R} built-in \kbd{integrate} function.
}
\usage{
disc.integrate(f, z0, R = 0, gamma = c(0, 2 * pi), 
 rel.tol = .Machine$double.eps^0.5, subdivisions = 100L)
}
\arguments{
  \item{f}{
A function whose integral to be evaluated.
}
  \item{z0}{
The centre of the disc, usually an isolated singularity.
}
  \item{R}{
The radius of the disc (hence a non-negative real number). If the default of zero is used, a sequence of very small radius (starting from 1e-12) will be used sequentially until a solution is sought. Also see details below for using the default radius.
}
  \item{gamma}{
A vector of two real numbers indicating the argument of the starting and end point of the disc. Therefore, the default is set as \kbd{c(0,2*pi)}.
}
  \item{rel.tol}{
The relative tolerance in calculating the integral of the real and imaginary part.
}
  \item{subdivisions}{
The number of subdivisions in calculating the integral of the real and imaginary part.
}
}
\details{
This function works well regardless of the type of the isolated singularity (i.e. removable singularity, pole & essential singularity). \cr
Note that, due to the rounding error, the value of the integral evaluated at a removable singularity is not exactly but very close to zero (see Examples). \cr
In the case where a branch cut or point is wihtin the disc and the radius is well defined, this function still works well.
However, if the radius is not well defined, one should consider a contour integral shrunk around to a singularity and/or use \kbd{line.integrate} to evaluate the integral alone the branch line. \cr
In the case where a singularity is on the branch line (see Examples below), the function \kbd{residue} should be used instead.
}
\value{
\item{value}{The output of evaluating the integral.}
\item{abs.error}{The absolute error.}
\item{record}{Only if \kbd{R=0}. It shows the value of the integral evaluated with different values of radius.}
}
\author{
Char Leung
}
\seealso{
\code{\link{residue}},\code{\link{poles}},\code{\link{line.integrate}}
}
\examples{
## integral evaluated at a removable singularity
disc.integrate(function(z){sin(z)/z},0)
## evaluating an integral in the presence of a branch cut
disc.integrate(function(z){sqrt(z)},0,R=1) #still works
#evaluate the integral along the branch cut 
-line.integrate(function(z){sqrt(z)},0,1)+line.integrate(function(z){sqrt(z)},1,0) 
## Incorrect result: evaluating an integral at a pole on a branch cut
disc.integrate(function(z){log(z)/(1+z)},-1,R=1) #Incorrect
residue(function(z){log(z)/(1+z)},-1) #Correct (using residue)
}
