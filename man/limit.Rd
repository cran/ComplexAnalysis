\name{limit}
\alias{limit}
\title{
Limit of a function
}
\description{
Calculate the limit of a complex-valued function from any direction on the complex plane. 
}
\usage{
limit(f, z0, z = NULL, track = FALSE)
}
\arguments{
  \item{f}{
The function whose limit to be calculated.
}
  \item{z0}{
The point at which the limit is calculated. It can also be infinity on the complex plane. That is, \kbd{-Inf}, \kbd{Inf}, \kbd{-Inf*1i} and \kbd{Inf*1i}.
}
  \item{z}{
Is \kbd{NULL} if calculating the limit at infinity otherwise a real or complex scalar or one of \kbd{"right","upright","up","upleft","left","downleft","down" & "downright"} as the starting point calculating the limit of approaching \kbd{z0}. \cr
Therefore, inserting any two real or complex numbers \eqn{z_1} and \eqn{z_2} such that \eqn{Arg(z_1-z_0)=Arg(z_2-z_0)}, would give the same result. \cr
Instead of specifying the direction by supplying a number, one of the following, \kbd{"right","upright","up","upleft","left","downleft","down" & "downright"}, can also be used to represent the direction.
}
  \item{track}{
If \kbd{TRUE}, the record of the sequential calculation will be printed.
}
}
\details{
\bold{Note}: accuracy depends on (1) the effect of the rounding error and (2) how well-behaved (or badly behaved) the function is. For most functions, the result is accurate for at least 6 to 7 decimal places. \cr 
}
\value{
\item{value}{The calculated limit.}
\item{comp2 }{The record of calculations. A six-column matrix indicating the count, epsilon (\kbd{eps}), input (input of \kbd{f}), output (output of \kbd{f}), delta1 (difference of the real part of two consecutive outputs) and delta2 (difference of the imaginary part of two consecutive outputs)}
}
\author{
Char Leung
}
\examples{
limit(function(z){3*sin(z)/z+4},Inf,track=TRUE)
}
