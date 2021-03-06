% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/date-methods.R
\name{adjust}
\alias{adjust}
\title{Adjust to good dates}
\usage{
adjust(dates, bdc, calendar)
}
\arguments{
\item{dates}{a vector of dates to adjust.}

\item{bdc}{the business day convention used to roll the \code{dates} if necessary}

\item{calendar}{an object that inherits from \code{\link{Calendar}} or \code{\link{JointCalendar}}
which is used to determine the goodness of \code{dates}}
}
\value{
a vector of adjusted dates - good days are unadjusted
}
\description{
One common financial markets date arithmetic requires a date needs to be
rolled to the closest business day following some convention (see
\code{\link[=is_valid_bdc]{is_valid_bdc()}} for further details). Such rolled dates can be determined by
calling \code{adjust()}.
}
\examples{
ausy <- AUSYCalendar()
adjust(lubridate::ymd("20120102"), "u", ausy)
adjust(lubridate::ymd("20120102"), "f", ausy)
adjust(lubridate::ymd("20120102"), "mf", ausy)
adjust(lubridate::ymd("20120102"), "p", ausy)
adjust(lubridate::ymd("20120102"), "mp", ausy)
adjust(lubridate::ymd("20120102"), "ms", ausy)
}
\seealso{
Other calendar methods: \code{\link{generate_schedule}},
  \code{\link{is_good}}, \code{\link{is_valid_bdc}},
  \code{\link{is}}, \code{\link{locale}},
  \code{\link{shift}}, \code{\link{tz}}
}
