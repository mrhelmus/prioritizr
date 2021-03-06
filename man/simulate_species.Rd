% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate.R
\name{simulate_species}
\alias{simulate_species}
\title{Simulate species habitat suitabilities}
\usage{
simulate_species(x, n = 1, model = RandomFields::RMgauss(),
  transform = stats::plogis, ...)
}
\arguments{
\item{x}{\code{\link[raster]{RasterLayer-class}} object to use as}

\item{n}{\code{integer} number of species to simulate.}

\item{model}{\code{\link[RandomFields]{RP}} model object
to use for simulating data.}

\item{transform}{\code{function} to transform values output
from the random fields simulation.}

\item{...}{additional arguments passed to
\code{\link[RandomFields]{RFsimulate}}.}
}
\value{
\code{\link[raster]{RasterStack-class}} object.
}
\description{
Generates a random set of species using random field models. By default,
the output will contain values between zero and one.
}
\examples{
\donttest{
# create raster
r <- raster(ncol=10, nrow=10, xmn=0, xmx=1, ymn=0, ymx=1)
values(r) <- 1

# simulate 4 species
spp <- simulate_species(r, 4)

# plot simulated species
plot(spp, main = "simulated species distributions")
}

}
\seealso{
\code{\link{simulate_data}}.
}
