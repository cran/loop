\name{smallest.weight}
\alias{smallest.weight}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
find out the food chain with shortest weight among all food chains that are
linked to a given species
}
\description{
not including self-loop (i.e., the node itself as a chain)
}
\usage{
smallest.weight(gemat, sp)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard square graph matrix
}
  \item{sp}{
the node/species you want to search
}
}

\references{
Chen Y (2012) loop: an R package for performing decomposition of weighted
directed graphs, food web analysis and flexible network plotting. In preparation.
}
\author{
Youhua Chen <haydi@126.com>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{shortest.chain}}, 
\code{\link{largest.weight}},
\code{\link{longest.chain}},
\code{\link{lclw}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
shortest.chain(gemat=mat,sp=4)
}
