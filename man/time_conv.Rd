\name{time_conv}
\alias{unix_to_epoch}
\alias{epoch_to_unix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert time between UNIX and epoch formats}
\description{
Conversion between EPOCH and UNIX formats.
}
\usage{
epoch_to_unix(epoch, date, tz = "UTC")
unix_to_epoch(unix, origin = "1970-01-01", tz = "UTC", returnChar = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{epoch}{[character] Character string of the date in EPOCH format.
               The only accepted formats are
               "\%Y-\%m-\%d \%H:\%M:\%S" or "\%H:\%M:\%S"}
  \item{date}{[character] If \code{epoch} is given in "\%H:\%M:\%S" format,
              date in format "\%Y-\%m-\%d" can be provided.}
  \item{unix}{[numeric] Time or date in unix format.}
  \item{origin}{[character] For \code{unix_to_epoch}, the date of reference
                in format "\%Y-\%m-\%d". [Default: "1970-01-01"]}
  \item{tz}{[character] Time zone. [Default: "UTC"]}
  \item{returnChar}{[boolean] If \code{TRUE} [default], then the epoch format
                    is returned as a character string. In other case, it
                    is returned as \code{POSIX} class.}
}

\value{
\code{epoch_to_unix} return a \code{numeric} (UNIX format).
\code{unix_to_epoch} returns a \code{character} or \code{POSIXct} (EPOCH format).
}

\author{
Víctor Moreno-González <vmorg@unileon.es>
}

\examples{
# Epoch to unix conversion
epoch_to_unix(epoch = "2020-04-13 13:11:00")
epoch_to_unix{epoch = "13:11:00", date = "2020-04-13"}

# Unix to epoch conversion
unix_to_epoch(1586783460, returnChar = T)
unix_to_epoch(1586783460, returnChar = F)

