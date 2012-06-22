\name{rank.nodes}
\alias{rank.nodes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
rank nodes based on the inward links/outward links/both links
}
\description{
rank each node in the graph based on their connection status with other nodes,
the standard is the inward/outward link numbers.
}
\usage{
rank.nodes(gemat, type = "both")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard square graph matrix
}
  \item{type}{
if type="both", the function will rank the nodes based on total link number, by
counting both inward and outward links for each node;
if type="in", the function will rank the nodes based on inward link number for each node;
if type="out", the function will rank the nodes based on outward link number for each node;
}
}

\value{
return the sorted node vector in decreasing form with names showing the nodes,while
the vector elements are the link numbers.
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
\code{\link{node.similarity}},
\code{\link{nmds.ordination}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
rank.nodes(gemat=mat,type="in")
rank.nodes(gemat=mat,type="out")
rank.nodes(gemat=mat,type="both")
}

