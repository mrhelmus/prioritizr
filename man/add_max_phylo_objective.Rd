% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_max_phylo_objective.R
\name{add_max_phylo_objective}
\alias{add_max_phylo_objective}
\alias{add_max_phylo_objective}
\title{Add Maximum Phylogenetic Representation Objective}
\usage{
add_max_phylo_objective(x, budget, tree)
}
\arguments{
\item{x}{\code{\link{ConservationProblem-class}} object.}

\item{budget}{\code{numeric} value specifying the maximum expenditure of
the prioritization.}

\item{tree}{\code{\link[ape]{phylo}} object specifying a phylogenetic tree
for the conservation features.}
}
\description{
Set an objective to find to find the solution that fulfills as much
of a representative sample a phylogenetic tree as possible given a budget.
This objective is similar to \code{\link{add_max_features_objective}} except
that emphasis is placed on phylogenetic representation rather than target
representation, and inspired by Faith (1992) and Rodrigues \emph{et al.}
(2002). This objective requires the \emph{ape} package to be installed.
}
\details{
A problem objective is used to specify the overall goal of the
conservation planning problem. Please note that \strong{all conservation
planning problems formulated in the prioritizr package require the addition
of both objectives and targets}. Failing to do so will return a default
error message when solving.

The maximum phylogenetic representation problem is similar to the maximum
features problem in that it allows for both a budget and targets to be set.
This problem finds the set of planning units that meets representation
targets for a phylogenetic tree while staying within a fixed budget. If
multiple solutions can meet all targets while staying within budget, the
cheapest solution is chosen.

The maximum phylogenetic representation objective for the reserve design
problem can be expressed mathematically for a set of planning units
(\eqn{I}{I} indexed by \eqn{i}{i}) and a set of features (\eqn{J}{J} indexed
by \eqn{j}{j}) as:

\deqn{\mathit{Maximize} \space \sum_{i = 1}^{I} -s \space c_i +
\sum_{j = 1}^{J} m_b l_b \\
\mathit{subject \space to} \\
\sum_{i = 1}^{I} x_i r_{ij} >= y_j t_j \forall j \in J \\
m_b <= y_j \forall j \in T(b) \\
\sum_{i = 1}^{I} x_i c_i \leq B}{
Maximize sum_i^I (-s * ci) + sum_j^J (mb * lb) subject to sum_i^I (xi * rij)
>= (yj * tj) for all j in J & mb <= yj for all j in T(b) & sum_i^I (xi * ci)
<= B}

Here, \eqn{x_i}{xi} is the \code{\link{decisions}} variable (e.g.
specifying whether planning unit \eqn{i}{i} has been selected (1) or not
(0)), \eqn{r_{ij}}{rij} is the amount of feature \eqn{j}{j} in planning unit
\eqn{i}{i}, \eqn{t_j}{tj} is the representation target for feature
\eqn{j}{j}, \eqn{y_j}{yj} indicates if the solution has meet
the target \eqn{t_j}{tj} for feature \eqn{j}{j}. Additionally,
\eqn{T}{T} represents a phylogenetic tree containing features \eqn{j}{j}
and has the branches \eqn{b} associated within lengths \eqn{l_b}{lb}.
The binary variable \eqn{m_b}{mb} denotes if
at least one feature associated with the branch \eqn{b}{b} has met its
representation as indicated by \eqn{y_j}{yj}. For brevity, we denote
the features \eqn{j}{j} associated with branch \eqn{b}{b} using
\eqn{T(b)}{T(b)}. Finally, \eqn{B}{B} is the budget allocated for the
solution, \eqn{c_i}{ci} is the cost of planning unit \eqn{i}{i}, and
\eqn{s}{s} is a scaling factor used to shrink the costs so that the problem
will return a cheapest solution when there are multiple solutions that
represent the same amount of all features within the budget.
}
\examples{
# load data
data(sim_pu_raster, sim_features, sim_phylogeny)

# create problem
p <- problem(sim_pu_raster, sim_features) \%>\%
     add_max_phylo_objective(5000, sim_phylogeny) \%>\%
     add_relative_targets(0.1) \%>\%
     add_binary_decisions()
\donttest{
# solve problem
s <- solve(p)

# plot solution
plot(s, main = "solution", axes = FALSE, box = FALSE)
}

}
\references{
Faith DP (1992) Conservation evaluation and phylogenetic diversity.
\emph{Biological Conservation}, 61: 1--10.

Rodrigues ASL and Gaston KJ (2002) Maximising phylogenetic diversity in the
selection of networks of conservation areas. \emph{Biological Conservation},
105: 103--111.
}
\seealso{
\code{\link{objectives}}.
}
