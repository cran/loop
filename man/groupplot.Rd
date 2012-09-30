\name{groupplot}
\alias{groupplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A group way to plot network structure based on similar vertex will be grouped together,
while dissimilar nodes/vertex will depart from each others.
}
\description{
This function is for plotting different graphs into a same map with different colors,
line styles and so on.
The method for seperating the nodes in the two-dimensional spaces is the non-dimensional
scaling technique, which can take the similarity matrices of the nodes as the input and
generate the positions of the nodes in the space.
}
\usage{
groupplot(gemat, groups, type = "both", metric = "jaccard", addlabels = FALSE, scaled = TRUE, pch = 20, bg = 1, pcex = 3, pcol = 4, lty = 1, lcol = 8, tfont = 12, tcol = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard graph square matrix
}
  \item{groups}{
must be a list, each list element has the species that belong to a same group.
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
  \item{addlabels}{
if you want to label each node/vertex, set it's status as TRUE; default is FALSE
}
  \item{scaled}{
if you want to the links showing relative weights, set it's status as TRUE; default is FALSE
links with larger weights will have thicker line width, vice versa.
}
  \item{pch}{
this pch is for nodes/vertex
}
  \item{bg}{
bg is for nodes/vertex filled background colors, will function when
pch=21:25.
}
  \item{pcex}{
pcex is for nodes/vertex size
}
  \item{pcol}{
pcol is for nodes/vertex color
}
  \item{lty}{
lty is the line style for the links
}
  \item{lcol}{
lcol is the line color for the links
}
  \item{tfont}{
tfont is the font size for the labels of the nodes
}
  \item{tcol}{
tcol is the color for the labels of the nodes
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
\code{\link{fplot.foodweb}},
\code{\link{groupplot.foodweb}},
\code{\link{gplot}},
\code{\link{gplot1}},
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
glist<-list(c1=c(1:5),c2=c(1,3),c3=c(3,4,5))
pch=c(21,21,21) #length of the parameter vector should be identical to the number of species groups
bg=c(1,2,3)
lcol=c(8,2,4)
groupplot(gemat=mat,groups=glist,pch=pch,lcol=lcol,bg=bg) #other parameters are set in default
}
