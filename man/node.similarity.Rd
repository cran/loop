\name{node.similarity}
\alias{node.similarity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
calculate pair similarity of nodes based on the nodes' similarity which have links with
the focused pair of nodes
}
\description{
The pair similarity of nodes is defined as the exterior nodes shared by both focused nodes (i.e.,
there must be links between the focused nodes and the exterior nodes)
}
\usage{
node.similarity(gemat, type = "both", metric = "jaccard")
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
will return a symmetric similarity matrices
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
\code{\link{nmds.ordination}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,0,0,4,3,8,0,1,0,7,0,1,0,0,0,4,6,2,0),5,5)
#compare the differences for each type of links
node.similarity(gemat=mat,type="in")
node.similarity(gemat=mat,type="out")
node.similarity(gemat=mat,type="both")
}