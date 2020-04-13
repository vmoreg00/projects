\name{start_project}
\alias{start_project}
\title{Start a project}
\description{
  Configure a project directory with a logical subfolders structure. It
  can also init a git folder
}
\usage{
  start_project(subdirs, git = TRUE)
}
\arguments{
  \item{subdirs}{[character] A vector of subdirectories to create.
                 By default: \code{data}, \code{results}, \code{reports} and
                 \code{src}}
  \item{git}{[boolean] If \code{TRUE} [default], git folder is init and
             contents are added and commited. Be sure having
             \code{git2r} package installed.}
}
\details{
This function will create all the supplied subdirectories into the
project folder. It will also create a README.md file with the name
of the project and the date and time of start.

If \code{git = TRUE}, git folder is init but it won't push the folder into
your git repository.
}

\author{
Víctor Moreno-González <vmorg@unileon.es>
}

\examples{
\dontrun{
start_project()
}
}
