% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bhl_authorsearch.R
\name{bhl_authorsearch}
\alias{bhl_authorsearch}
\title{Return a list of authors that match (fully or partially) the specified
search string.}
\usage{
bhl_authorsearch(name = NULL, as = "table", key = NULL, ...)
}
\arguments{
\item{name}{full or partial name of the author for which to search
(last name listed first, i.e. 'Darwin, Charles') (character)}

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
The namessearched are those contained in MARC 100a, 110a, 111a, 700a,
710a, and 711a library records.
}
\examples{
\dontrun{
bhl_authorsearch(name='dimmock')
bhl_authorsearch(name='Jones')
}
}
