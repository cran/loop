\name{largest.weight}
\alias{largest.weight}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
find out the food chain with largest weights among all food chains that are
linked to a given species
}
\description{
a food chain wtih largest weights mean that the summation of weights for each link
of the chain is the largest. Note: the longest food chain (with largest number of nodes)
does not necessarily have the largest weight.
}
\usage{
largest.weight(gemat, sp)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard square graph matrix
}
  \item{sp}{
the node that is evaluated.
}
}

\value{
return all candidate pathways and related weights
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
\code{\link{longest.chain}},
\code{\link{smallest.weight}},
\code{\link{lclw}}
}
\examples{
#mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
#search for species 3
#largest.weight(mat,3)
}

