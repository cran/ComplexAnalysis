\name{object.substitute}
\alias{object.substitute}
\title{
Replace mathematical functions or variables
}
\description{
Replace mathematical functions or variables in a string (usually the body of a function in the form of a string) allowing further manipulations.
}
\usage{
object.substitute(func, replaced, replacement)
}
\arguments{
  \item{func}{
A string. Although it is named as "func", this argument must be string-type. Function \kbd{body2string} converts an R function into a string.
}
  \item{replaced}{
A string or a vector of string to be replaced. This must be a function or a variable.
}
  \item{replacement}{
A string or a vector of string to replace "\kbd{replaced}". This can be anything.
}
}
\details{
This is a generic function used in some other fuctions in the package "ComplexAnalysis" allowing symbolic manipulations in mathematical functions.
}
\value{
A string with replacements.
}
\author{
Char Leung
}