\name{gplot}
\alias{gplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
make a plot for directional graph from edge matrix graph form
}
\description{
can change the link line style and color, can add arrows at the ending points,
this function requires an edge matrix form of graphs, compared to another similar
function 'gplot1'.
}
\usage{
gplot(edgemat, arrow = TRUE, lty = 1, col = 8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{edgemat}{
graph edge matrix form, without confusion, 'loop' package will have two types
for the graph storage: square matrix from (argument is 'gemat') and edge matrix
form (argument is 'edgemat').
}
  \item{arrow}{
default is \bold{TRUE}, denoting arrows should be added in the plot
}
  \item{lty}{
line style for each graph link
}
  \item{col}{
line color for each graph link
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
\code{\link{decomp}},
\code{\link{loop.forward}},
\code{\link{loop.random}},
\code{\link{gplot1}},
\code{\link{fplot}},
\code{\link{groupplot}}
}
\examples{
#make plots
mat<-matrix(c(1,2,1,3,2,4,3,5,4,5,6,7,8,9,1,9,9,8),nrow=9,ncol=2)
w<-c(3,10,30,50,20,22,9,15,33)
mat<-cbind(mat,w)
gplot(edgemat=mat)
}

