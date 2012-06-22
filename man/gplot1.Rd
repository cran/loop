\name{gplot1}
\alias{gplot1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
plot directed graphs directly from square graph matrix
}
\description{
don't need to convert square graph matrix into edge form compared to the function
"gplot"
}
\usage{
gplot1(gemat, arrow = TRUE, lty = 1, col = 8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard square graph matrix
}
  \item{arrow}{
add arrows or not, from the starting node to the ending node, default is TRUE.
}
  \item{lty}{
line style for the links/edges, default is 1.
}
  \item{col}{
color for the links/edges, default is 8 (grey).
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
\code{\link{gplot}}, 
\code{\link{fplot}},
\code{\link{groupplot}},  
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
gplot1(gemat=mat) #other parameters are set in default
}