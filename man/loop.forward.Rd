\name{loop.forward}
\alias{loop.forward}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
forward method to decompose the weighted graph into single connected graphs
}
\description{
At each step, only choose the first one of all candidate nodes 
when finding next node in the process of making a single connected graph.
This is an internal function.
}
\usage{
loop.forward(gemat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
square graph matrix form
}
}

\references{
van Groenendael J, de Kroon H, Kalisz S, Tuljapurkar S (1994) Loop analysis: evaluating life
history pathways in population projection matrices. Ecology, 75, 2410-2415.


Sun L, Wang M (2007) An algorithm for a decomposition of weighted digraphs: with applications
to life cycle analysis in Ecology. Journal of Mathematical Biology, 54, 199-226.


Chen Y (2012) loop: an R package for performing decomposition of weighted
directed graphs, food web analysis and flexible network plotting. In preparation.
}
\author{
Youhua Chen <haydi@126.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{decomp}},
\code{\link{gplot}},
\code{\link{loop.random}}
}

