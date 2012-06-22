\name{lclw}
\alias{lclw}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
find the largest weight food chain among the candidate longest food chains for 
a given node (species)
}
\description{
Sometimes for a given species, it has many food chains that are equal in chain lengths and
all are longest.
This function thus will find out the one with largest weight.
}
\usage{
lclw(gemat, sp)
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

\value{
return the pathways and corresponding weights in a list
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
\code{\link{smallest.weight}},
\code{\link{longest.chain}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
#search for species 3
lclw(gemat=mat,sp=3)
#longest chain isn't necessary to have largest weights
largest.weight(gemat=mat,sp=3)
longest.chain(gemat=mat,sp=3)
}

