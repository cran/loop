\name{pathways}
\alias{pathways}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
enumerate all food chains that are linked to a given species/node
}
\description{
the food chains can allow circles/loop. This function will return all possible
food chains, and some duplicated chains are generated as well. If you want to get
unique food chains, try the function 'uniquepaths'
}
\usage{
pathways(gemat, bsp)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard square graph matrix
}
  \item{bsp}{
the species/node you want to search. If input is a vector, then the function will return
the food chains for each element species in the vector.
Please note that all pathways/chains are started with the focused vertext/node/species, ended by
a circle/loop; or upto the top of the network without a circle/loop.
}
}

\value{
return a list showing all food chains by presenting each node in that chain.
Also, the weights for each link will be returned as well.
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
\code{\link{uniquepaths}},
\code{\link{loop.forward}},
\code{\link{loop.random}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
pathways(mat,bsp=2)
#a vector of species
pathways(mat,bsp=c(1,3,5))
}
