\name{derv}
\alias{derv}
\title{
Derivative using the Cauchy integral formula.
}
\description{
Evaluates \emph{n}-th order derivative of a real- or complex-valued function where \emph{n} is a non-zero natural number.
}
\usage{
derv(func, x0, n = 1, complex = FALSE , tol= .Machine$double.eps^0.5)
}
\arguments{
  \item{func}{
A real- or complex-valued function. The function must be analytic at \kbd{z0}.
}
  \item{x0}{
A scalar or vector at which the derivative is evaluated.
}
  \item{n}{
A non-zero natural number.
}
  \item{complex}{
If \kbd{TRUE}, complex-valued output is returned. If the evaluated derivative is complex but \kbd{complex=TRUE}, only the real part is returned.
}
  \item{tol}{
Relative tolerance in calculating the integral. This is the one in the R built-in function \kbd{integrate}.
}
}
\details{
Derivative using the Cauchy integral formula.
}
\value{
A real- or complex-valued scalar or vector.
}
\author{
Char Leung
}
\examples{
derv(function(x){x^3},x0=2,n=2)
derv(function(z){sin(z^2)/cos(1/z)},1)
}
