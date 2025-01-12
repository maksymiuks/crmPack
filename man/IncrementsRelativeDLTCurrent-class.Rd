% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rules-class.R
\docType{class}
\name{IncrementsRelativeDLTCurrent-class}
\alias{IncrementsRelativeDLTCurrent-class}
\alias{.IncrementsRelativeDLTCurrent}
\alias{IncrementsRelativeDLTCurrent}
\title{Increment Control based on Relative Differences and Current DLTs}
\usage{
IncrementsRelativeDLTCurrent(DLTintervals = c(0, 1), increments = c(2, 1))
}
\arguments{
\item{DLTintervals}{see slot description.}

\item{increments}{see slot description.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

The class is based on the number of DLTs observed in the current cohort,
but not cumulatively over all cohorts so far.
}
\section{Slots}{

\describe{
\item{\code{DLTintervals}}{(\code{integer})\cr left bounds of the relevant
DLT intervals.}

\item{\code{increments}}{(\code{numeric})\cr corresponding maximum allowable
relative increments in the \code{DLTintervals}.}
}}

\examples{

# As example, here is the rule for:
#      maximum doubling the dose if no DLTs were observed at the current dose
#      or maximum increasing the dose by 1.33 if 1 or 2 DLTs were observed at the current dose
#      or maximum increasing the dose by 1.22 if 3 or more DLTs were observed

my_increments <- IncrementsRelativeDLTCurrent(
  DLTintervals = c(0, 1, 3),
  increments = c(1, 0.33, 0.2)
)
}
\seealso{
\code{\link[=IncrementsRelativeDLT]{IncrementsRelativeDLT()}} which considers all DLTs cumulatively
across cohorts and doses.
}
