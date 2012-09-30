\name{uniquepaths}
\alias{uniquepaths}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
enumerate all unique food chains that are linked to a given species/node
}
\description{
the food chains can allow circles/loop. This function will return all unique
food chains that involved the focused species as a node
, and the duplicated chains are deleted. It is recommended to use rather than
the function 'pathways'.
}
\usage{
uniquepaths(gemat, sp)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard square graph matrix
}
  \item{sp}{
the species you want to search.
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
\code{\link{pathways}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
uniquepaths(mat,sp=2)
}

