\name{convertion}
\alias{convertion}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
this function convert graph matrix form into graph edge form
}
\description{
graph matrix form is a square matrix in which each element a(ij) denotes
the weight of a direction from a row entry (row i) to a column entry (column j)
}
\usage{
convertion(gemat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gemat}{
the square graph matrix
}
}
\details{
each element must be larger (a weighted link) or equal to zero (no link)
}
\value{
graph edge matrix with first column meaning the starting points,
the second column denoting the ending points,
the last column denotes the weights for the links.
}
\references{
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
\code{\link{loop.forward}},
\code{\link{loop.random}}
}
\examples{
mat=matrix(c(13,26,0,11,18,15,15,0,2),nrow=3,ncol=3)
convertion(gemat=mat)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
