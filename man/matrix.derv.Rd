\name{matrix.derv}
\alias{matrix.derv}
\title{
Matrix derivative
}
\description{
Evaluate the derivative of the following types (\eqn{d} denotes the "curly d" in partial derivatives): 
 \itemize{
 \item Type 0: scalar-by-scalar \eqn{dy/dx}
 \item Type 1: (gradient) scalar-by-vector \eqn{dy/d}\bold{\eqn{x}}
 \item Type 2: vector-by-scalar \eqn{d}\bold{\eqn{y}}\eqn{/dx}
 \item Type 3: (Jacobian) vector-by-vector \eqn{d}\bold{\eqn{y}}\eqn{/d}\bold{\eqn{x}}
 \item Type 4: scalar-by-matrix \eqn{dy/d}\bold{\eqn{X}}
 \item Type 5: matrix-by-scalar \eqn{d}\bold{\eqn{Y}}\eqn{/dx}
 }
Note that this is only for real variables although one may modify the source code allowing for some complex-valued ones. Yet correct result is not guaranteed.
}
\usage{
matrix.derv(Y, X0, order = 1, rel.tol=.Machine$double.eps^0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Y}{
One single function \eqn{y} (for type 0, 1 & 4), a vector of functions \bold{\eqn{y}} (for type 2 & 3) or a matrix of functions \bold{\eqn{Y}} (for type 5) whose derivative to be evaluated. \cr
For a vector or a matrix of functions, the variables and their order must be the same across all functions. Also see Examples.
}
  \item{X0}{
Evaluation points of the derivative. It can be a scalar \eqn{x} (type 0, 2 & 5), a vector \bold{\eqn{x}} (type 1 & 3) or a matrix \bold{\eqn{X}} (type 4). \cr
Note that (1) the number of elements in \kbd{X0} must match the number of variables in each of the functions in \kbd{Y} and, \cr
(2) the order of the elements in \kbd{X0} follows that of the variables in each of the functions in \kbd{Y}. \cr
Also see Examples.
}
  \item{order}{
The order of the derivative. Must be a non-zero natural number.
}
  \item{rel.tol}{
Relative tolerance of the R built-in function \kbd{integrate} in calculating the derivative.
}
}
\details{
Error or misleading result may occur if arugments are not properly supplied. Some examples:
\itemize{
\item Variables in the functions are not the same: If \kbd{Y=c(function(x,y,z){x^2+y^2*z},} \cr
 \kbd{function(x,z,y){sqrt(x*y*z)},function(x,y,z){x^y*log(z)})}, the second function as the order of the variables as \kbd{x,z,y}.
\item The number of evaluation points and the number of variables not match: If \cr
 \kbd{Y=matrix(function(x){x^3},function(x){x^2},function(x){x},function(x){1},ncol=2)} and \kbd{X0=c(1,2)}, this is a matrix-by-scalar derivative (type 5) but \kbd{X0} here is a vector.
\item The order of the variables and the order of the evaluation points: If \kbd{Y=function(a,b,c,d){a*b+c/d}} and \kbd{X0=matrix(1:4,ncol=2)}, then the derivative is evaluated at \kbd{a=1, b=2, c=3, d=4} respectively.
}
}
\value{
\item{result}{A matrix even if type 0 (scalar-by-scalar).}
\item{type}{The type of derivative: 0,1,...,5}
}
\author{
Char Leung
}

\seealso{
\code{\link{derv}}
}
\examples{
#Type-0 : scalar-by-scalar
X<-3
Y<-function(x){x^3}
matrix.derv(Y,X)
#Type-1 (gradient): scalar-by-vector
X<-c(1,2,0.4)
Y<-function(a,b,c){a^2+b*c}
matrix.derv(Y,X)
#Type-2 : vector-by-scalar
X<-10
Y<-c(function(a){sin(a)},function(a){cos(a)*a^2})
matrix.derv(Y,X)
#Type-3 (Jacobian) : vector-by-vector 
X<-c(1,3,5)
Y<-c(function(a,b,c){a^2+c/b},function(a,b,c){a+b/c})
matrix.derv(Y,X)
#Type-4 : scalar-by-matrix
X<-matrix(1:9,ncol=3)
Y<-function(a,b,c,x,y,z,s,t,r){a*b+c-x*y*z*(s+t+r)}
matrix.derv(Y,X)
#Type-5 : matrix-by-scalar
X<-2
Y<-matrix(c(function(a){a^3},function(a){a^2},function(a){a},function(a){1}),ncol=2)
matrix.derv(Y,X)

}
