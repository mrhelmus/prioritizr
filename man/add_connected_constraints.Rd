% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_connected_constraints.R
\name{add_connected_constraints}
\alias{add_connected_constraints}
\title{Add connected constraints}
\usage{
add_connected_constraints(x, ...)
}
\arguments{
\item{x}{\code{\link{ConservationProblem-class}} object.}

\item{...}{arguments passed to \code{\link{connected_matrix}}.}
}
\value{
\code{\link{ConservationProblem-class}} object with the constraint
  added to it.
}
\description{
Add constraints to a conservation problem to ensure that all selected
planning units are spatially connected to each other.
}
\details{
The mathematical ideas that underpin this function inspired by
 {\"O}nal and Briers (2006).
}
\examples{
# create basic problem
p1 <- problem(sim_pu_raster, sim_features) \%>\%
      add_min_set_objective() \%>\%
      add_relative_targets(0.2)

# create problem with added connected constraints
p2 <- p1 \%>\% add_connected_constraints()
\donttest{
# solve problems
s <- stack(solve(p1), solve(p2))

# plot solutions
plot(s, main = c("basic solution", "connected solution"), axes = FALSE,
     box = FALSE)
}
}
\references{
{\"{O}}nal H and Briers RA (2006) Optimal selection of a connected
reserve network. \emph{Operations Research}, 54: 379--388.
}
\seealso{
\code{\link{constraints}}.
}
