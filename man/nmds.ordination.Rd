\name{nmds.ordination}
\alias{nmds.ordination}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
perform non-dimensional scaling of the nodes by employing the function 'isoMDS' from
package 'MASS'
}
\description{
this is to get the coordinates of each node/vertex in the two-diemsional spaces, which
are used in plotting functions, including "fplot" and "groupplot".
}
\usage{
nmds.ordination(gemat, type = "both", metric = "jaccard")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard square graph matrix
}
  \item{type}{
if type="both", the node similarity is calculated based on the the vertex similarity from 
the inward/outward links for each pair of nodes.
if type="in", the node similarity is calculated based on the the vertex similarity from 
the inward links for each pair of nodes.
if type="out", the node similarity is calculated based on the the vertex similarity from 
the outward links for each pair of nodes.
}
  \item{metric}{
node similarity methods, currently supporting two basic similarity indices:
"jaccard" and "sorensen".
}
}
\value{
 \item{coord}{coordinates of each node in the space}
 \item{names }{names for the nodes}
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
\code{\link{fplot}},
\code{\link{groupplot}},
\code{\link{node.similarity}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
nmds.ordination(gemat=mat)
}
