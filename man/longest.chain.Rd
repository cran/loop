\name{longest.chain}
\alias{longest.chain}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
find out the food chain with longest length among all food chains that are
linked to a given species
}
\description{
Sometimes the longest chain is not unique, thus will return all candidates with 
longest length
}
\usage{
longest.chain(gemat, sp)
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
directed graphs, food web analysis and flexible network plotting. Submitted.
}
\author{
Youhua Chen <haydi@126.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{shortest.chain}}, 
\code{\link{largest.weight}},
\code{\link{smallest.weight}},
\code{\link{lclw}}
}
\examples{
#mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
#search for species 3
#lclw(gemat=mat,sp=3)
#longest chain isn't necessary to have largest weights
#largest.weight(gemat=mat,sp=3)
#longest.chain(gemat=mat,sp=3)
}
