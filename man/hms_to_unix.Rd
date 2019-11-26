\name{hms_to_unix}
\alias{hms_to_unix}
\title{
Convert times to UNIX.
}
\description{
Converts times and dates in \%Y-\%m-\%d \%H:\%M:\%S format to UNIX.
}
\usage{
hms_to_unix(hms, date = NULL)
}
\arguments{
  \item{hms}{
[character] time to convert in \%H:\%M:\%S format
}
  \item{date}{
[character] date when the time was made (Default: 1970-01-01).
}
}
\details{
The reference date to compute the UNIX format is 1970-01-01.
}
\value{
\item{time}{[numeric] time in UNIX format}
}
\author{
Víctor Moreno-González <vmorg@unileon.es>
}

\examples{
hms_to_unix(hms = "13:53:54")
hms_to_unix(hms = "23:51:01", date = "2013-05-01")
}
