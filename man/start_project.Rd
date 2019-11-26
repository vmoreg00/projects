\name{start_project}
\alias{start_project}
\title{Start a project}
\description{
  Initialise a project directory with a logical subfolders structure.
}
\usage{
  start_project(name = NULL, path = "./")
}
\arguments{
  \item{name}{
   Name of the project
}
  \item{path}{
  Path where the project is going to be saved (Default: working directory)
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}

\author{
Víctor Moreno-González <vmorg@unileon.es>
}

\examples{
# Create an "Example" project in the current working directory
start_project("Example")
}
