\name{object.extract}
\alias{object.extract}
\title{
Extract mathematical functions or variables
}
\description{
The function extract mathematical functions or variables from a string which is usually the body of a function. If one wishes to extract directly from a function, such function must first be converted into a string. Another function in this package \kbd{body2string} does this.
}
\usage{
object.extract(func, variable = TRUE, subset.q = TRUE, exception = NULL)
}

\arguments{
  \item{func}{
A string. Although it is named as "func", this argument must be string-type. Function \kbd{body2string} converts an R function into a string.
}
  \item{variable}{
If \kbd{TRUE}, only mathematical variables in \kbd{func} will be extracted, otherwise mathematical functions will be extracted.
}
  \item{subset.q}{
If \kbd{TRUE}, the square bracket (usually used as subsetting) is recognised as part of the attached variable. E.g. \kbd{x[a:b]} will be recognised as one single variable while if \kbd{FALSE}, square brackets are ignored and three variables \kbd{x,a,b} are returned.
}
  \item{exception}{
String. Mathematical variables or functions not to be extracted. Can be a vector.
}
}
\details{
\kbd{NULL} is returned if no variable or function in \kbd{func}.
}
\value{
A list of string of variables or functions in \kbd{func}.
}
\author{
Char Leung
}
\seealso{
\code{\link{body2string}}
}
