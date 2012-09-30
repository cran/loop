\name{mst.primm}
\alias{mst.primm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Primm's algorithm to search minimum spanning tree
}
\description{
Each time search two nodes with lowest weights in an iterative manner
}
\usage{
mst.primm(gemat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard graph square matrix
}
}

\value{
return a matrix in edge form, the first column is the starting node,
the second column is the ending node
}
\references{
Chen Y (2012) loop: an R package for performing decomposition of weighted
directed graphs, food web analysis and flexible network plotting. Submitted.


Wang HY, Huang Q, Li CZ,Zhu BZ (2010) Graph algorithms and Matlab applications.
BUAA Press, Beijing.
}
\author{
Youhua Chen <haydi@126.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{groupplot}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
mst.primm(mat)
}
