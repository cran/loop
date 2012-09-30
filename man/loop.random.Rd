\name{loop.random}
\alias{loop.random}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
a random method to decompose the weighted graph into single connected graphs
}
\description{
At each step, a random one of all candidate nodes was chosen 
when finding next node in the process of making a single connected graph.
This method can allow us to obtain different decomposition results possibly.
In contrast, the method used in 'loop.forward' function will always return only
one possibility of decomposition.
This algorithm is the one employed in the function 'decomp'.
Next version will use function 'uniquepaths' to get all possible decompositions
at the same time.
}
\usage{
loop.random(gemat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
square graph matrix
}
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
\code{\link{decomp}},
\code{\link{gplot}},
\code{\link{gplot1}},
\code{\link{loop.forward}}
}

