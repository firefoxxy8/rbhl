% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bhl_namegetdetail.R
\name{bhl_namegetdetail}
\alias{bhl_namegetdetail}
\title{Get basic title, item, and page metadata for each page on which the
specified name appears.}
\usage{
bhl_namegetdetail(namebankid = NULL, name = NULL, as = "table",
  key = NULL, ...)
}
\arguments{
\item{namebankid}{(not used if 'name' specified) NameBank identifier for a
name (numeric)}

\item{name}{(not used if 'namebankid' specified) a complete name string
(character)}

\item{as}{(character) Return a list ("list"), json ("json"), xml ("xml"),
or parsed table ("table", default). Note that \code{as="table"} can give
different data format back depending on the function - for example,
sometimes a data.frame and sometimes a character vector.}

\item{key}{Your BHL API key, either enter, or loads from your \code{.Renviron}
as \code{BHL_KEY}
or from \code{.Rprofile} as \code{bhl_key}.}

\item{...}{Curl options passed on to \code{\link[crul:HttpClient]{crul::HttpClient()}}}
}
\description{
Get basic title, item, and page metadata for each page on which the
specified name appears.
}
\examples{
\dontrun{
# bhl_namegetdetail(namebankid = 3501464)
# bhl_namegetdetail(name = 'poa annua')
}
}
