\name{decomp}
\alias{decomp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
decompose the weighted graph into directional single connected graphs and a 
non-connected graph
}
\description{
It will return all connected graphs, and a unconnected graph
}
\usage{
decomp(gemat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
the square graph matrix
}
}

\value{
return all single connected directed graphs and a final non-decomposable graph
}
\references{
van Groenendael J, de Kroon H, Kalisz S, Tuljapurkar S (1994) Loop analysis: evaluating life
history pathways in population projection matrices. Ecology, 75, 2410-2415.


Sun L, Wang M (2007) An algorithm for a decomposition of weighted digraphs: with applications
to life cycle analysis in Ecology. Journal of Mathematical Biology, 54, 199-226.


Chen Y (2012) loop: an R package for performing decomposition of weighted
directed graphs, food web analysis and flexible network plotting. Submitted.
}
\author{
Youhua Chen <haydi@126.com>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{gplot}},
\code{\link{fplot}},
\code{\link{fplot.foodweb}},
\code{\link{loop.forward}},
\code{\link{loop.random}}
}
\examples{
mat=matrix(c(13,26,0,12,18,15,15,0,2),nrow=3,ncol=3)
#search out all loops
decomp(gemat=mat)
}
