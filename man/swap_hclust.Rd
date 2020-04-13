\name{swap_hclust}
\alias{swap_hclust}
\title{Swap clusters}
\description{
  Function that allows to swap to clusters in a \code{hclust} object.
}
\usage{
  swap_hclust(x)
}
\arguments{
  \item{x}{[hclust] Cluster of \code{hclust} class to be swapped.}
}
\details{
This function allows the user to swap clusters in a \code{hclust} object
by clicking on them.

When the plot window is active after running this function, simply
click on the two cluster you want to swap.
}

\note{
Swapping cluster \bold{do not change the topology} of the cluster (i.e.: the
results are the same). It is only intended for representation purpoises.
}

\author{
Víctor Moreno-González <vmorg@unileon.es>
}

\examples{
\dontrun{

# Draw any cluster
hc <- hclust(dist(USArrests))
plot(hc)

# Swap
swap_hclust(hc)
## 1- Click on two sub-clusters
## 2- Do it as many times you want
## 3- Press ESC or Finish
}
}
