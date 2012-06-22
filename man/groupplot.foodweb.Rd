\name{groupplot.foodweb}
\alias{groupplot.foodweb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
a special group graph plot function for food web-style hierarchical structure
}
\description{
vertex/nodes/species are arranged in a form of vertical hierarchy, given the species' food rank
positions listed in the parameter "ranks".
"groups" are a list for each list element showing a group of species. They should be
defined based on the user's choices.
This method thus does not to calculate node similarity based on inward/outward link similarity.
}
\usage{
groupplot.foodweb(gemat, ranks, groups, addlabels = FALSE, scaled = TRUE, pch = 20, bg = 1, pcex = 3, pcol = 4, lty = 1, lcol = 8, tfont = 12, tcol = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
standard square graph matrix
}
  \item{ranks}{
a list for each list memember showing the species in that rank (list number).
for example list[[1]] means all the species in food web hierarchy rank 1, and so on...
}
  \item{groups}{
a list of species groups. Can be overlapped among the list elements.
But should be defined by the users.
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
directed graphs, food web analysis and flexible network plotting. In preparation.
}
\author{
Youhua Chen <haydi@126.com>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{fplot.foodweb}},
\code{\link{gplot}},
\code{\link{gplot1}},
\code{\link{fplot}},
\code{\link{groupplot}}
}
\examples{
mat=matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
rlist<-list(c1=c(1,2),c2=c(3,4),c3=5)
glist<-list(c1=c(1:5),c2=c(1,2,3),c3=c(2,4,5))
groupplot.foodweb(gemat=mat,ranks=rlist,groups=glist) #other parameters are set in default
#when not setting other parameters, the groupplot result is identical to fplot
#because the function found that the parameters (especially the colors) are not set
#another example that can separate the groups
rlist<-list(c1=c(1,2),c2=c(3,4),c3=5)
glist<-list(c1=c(1:5),c2=c(1,3),c3=c(3,4,5))
pch=c(20,22,24) #length of the parameter vector should be identical to the number of species groups
lcol=c(8,2,4)
groupplot.foodweb(gemat=mat,ranks=rlist,groups=glist,pch=pch,lcol=lcol) #other parameters are set in default
}

