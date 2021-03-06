% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/nlpden.R
\name{nlpden}
\alias{nlpden}
\title{Density estimation by quadratic programming}
\usage{
nlpden(noisy_signal_raw, noise_density_fn = dnorm, BIN_SZ = 0.01,
  MARGIN = 1)
}
\arguments{
\item{noise_density_fn}{the density of the additive noise function}

\item{BIN_SZ}{The size of the histogram bins for the empirical distribution}

\item{MARGIN}{The amount of padding on each side of the data}

\item{noisy_signal}{the raw observations}
}
\value{
density estimate of the form (x, f(x))
}
\description{
Estimates the density of a signal that has been
convolved with a known noise distribution.
For example, if X = mu + epsilon where epsilon is noise drawn from a known
noise_density_function, then nlpden will return an estimate of the
density f(X).
}
\examples{
mu = c(runif(1000, min = -3, max = 3), rep(0, 1000))
X = mu + rnorm(2000)
f.hat = nlpden(X)
plot(f.hat, type = "l")
}

