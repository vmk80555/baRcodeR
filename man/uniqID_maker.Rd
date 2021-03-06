% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uniqIDMaker.R
\name{uniqID_maker}
\alias{uniqID_maker}
\title{Generate a list of ID codes}
\usage{
uniqID_maker(user = FALSE, string = NULL, level, digits = 3)
}
\arguments{
\item{user}{logical. Run function using interactive mode (prompts user for 
parameter values). Default is \code{FALSE}}

\item{string}{character. Text string for label. Default \code{null}.}

\item{level}{integer vector. Defines the numerical values to be appended
to the character string. Can be any sequence of numbers (see examples).}

\item{digits}{numerical. Default is \code{2}. Number of digits to be printed, 
adding leading 0s as needed. This will apply to all levels when \code{user=FALSE}. 
When the numeric value of the label has a greater number of digits than 
\code{digits}, \code{digits} is automatically increased for the entire level. 
Default is \code{3}.}
}
\value{
data.frame with text labels in the first column, along with string
and numeric values in two additional columns.
}
\description{
Create ID codes consisting of a text string and unique numbers (string001, string002, ...). 
Can be run in interactive mode, prompting user for input. The data.frame 
output can be saved as CSV for (i) the \code{\link{create_PDF}} function 
to generate printable QR-coded labels; and (ii) to downstream data 
collection software (spreadsheets, relational databases, etc.)
}
\details{
When the function is called with \code{user = TRUE}, a sequence of 
numbers is generated between the starting and ending number provided by the 
user. When \code{user = FALSE}, a vector of custom numbers can be provided. 
See example below.
}
\examples{


## sequential string of numbers in label
Labels <- uniqID_maker(string = "string", level = c(1:5), digits = 2)
Labels

## can also use nonsequential strings in input for levels
level <- c(1:5, 8:10, 999:1000)
Labels <- uniqID_maker(string = "string", level = level, digits = 4)
Labels

if(interactive()){
## function using user prompt does not use any of the other parameters
Labels <- uniqID_maker(user = TRUE)
Labels
}
}
\seealso{
\code{\link{uniqID_hier_maker}}
}
