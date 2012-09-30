\name{find.ranks}
\alias{find.ranks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
make food trophic ranks for all the species in the matrix for fplot.foodweb function
}
\description{
it will return trophic ranks of species in the food webs
}
\usage{
find.ranks(gemat, converted = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
gemat is a square matrix
}
  \item{converted}{
if TRUE, resultant trophic ranks of species will be converted to a list, which is the input format for
fplot.foodweb() function;
if FALSE, resultant trophic ranks of species are present in a vector
default is TRUE
}
}

\value{
it will return a list (converted=TRUE), each list represent one trophic rank, the elements of which are the species being classified
into the rank. it can also return a vector (converted=FALSE), each element denote the rank of the species.
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
\code{\link{fplot.foodweb}}
}
\examples{
gemat<-matrix(c(0,5,3,7,0,5,0,8,0,4,3,8,0,1,6,7,0,1,0,2,0,4,6,2,0),5,5)
ranks<-find.ranks(gemat)
fplot.foodweb(gemat=gemat,ranks=ranks,addlabels=TRUE,bg="white",pch=21,pcex=4,lcol=2,weighted=FALSE)
}

