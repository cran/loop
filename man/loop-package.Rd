\name{loop-package}
\alias{loop-package}
\alias{loop}
\docType{package}
\title{
an R package for analyzing and plotting directed networks
}
\description{
The package can (1) perform loop analysis (van Groenendael et al., 1994) in demographic analysis in ecology, which employed the 
decomposition algorithm of directed weighted graphs
persented in Su and Wang (2007); 
(2) find food web patterns, including longest food chain,
largest-weighted food chain, enumeration of all food chains linked to the proposed species
in the food network; (3) plot directed/undirected network structure using flexible methods; (4) other statistics,
like minimum spanning tree etc. Next version will include more statistics on food web structure 
}
\details{
\tabular{ll}{
Package: \tab loop\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-06-22\cr
License: \tab GPL-2 \cr
LazyLoad: \tab yes\cr
}
}
\author{
Youhua Chen
Maintainer: Youhua Chen <haydi@126.com>
}
\references{
van Groenendael J, de Kroon H, Kalisz S, Tuljapurkar S (1994) Loop analysis: evaluating life
history pathways in population projection matrices. Ecology, 75, 2410-2415.


Sun L, Wang M (2007) An algorithm for a decomposition of weighted digraphs: with applications
to life cycle analysis in Ecology. Journal of Mathematical Biology, 54, 199-226.

Wang HY, Huang Q, Li CZ,Zhu BZ (2010) Graph algorithms and Matlab applications.
BUAA Press, Beijing.


Chen Y (2012) loop: an R package for performing decomposition of weighted
directed graphs, food web analysis and flexible network plotting. Submitted.
}

\examples{
gemat=matrix(c(13,26,0,11,18,15,15,0,2),nrow=3,ncol=3)
gemat=matrix(c(13,26,0,12,18,15,15,0,2),nrow=3,ncol=3)
#search out all loops
decomp(gemat)
#make plots
mat<-matrix(c(1,2,1,3,2,4,3,5,4,5,6,7,8,9,1,9,9,8),nrow=9,ncol=2)
w<-c(3,10,30,50,20,22,9,15,33)
mat<-cbind(mat,w)
gplot(mat)

}
