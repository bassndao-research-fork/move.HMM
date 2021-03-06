\name{move.HSMM.CI}
\alias{move.HSMM.CI}
\title{Add confidence intervals to a move.HSMM object}
\usage{
  move.HSMM.CI(move.HSMM, CI = "boot", alpha = 0.05,
    B = 100, cores = 2, stepm, iterlim, useRcpp = FALSE)
}
\arguments{
  \item{move.HSMM}{A fitted move.HSMM object.}

  \item{CI}{A character determining which type of CI is to
  be calculated.  Current options are "FD" for the finitie
  differences Hessian and "boot" for parametric
  bootstrapping and percentile CIs.}

  \item{alpha}{Type I error rate for CIs.  alpha=0.05 for
  95 percent CIs}

  \item{B}{Number of bootstrap resamples}

  \item{cores}{Number of cores to be used in parallell
  bootstrapping}

  \item{stepm}{a positive scalar which gives the maximum
  allowable scaled step length. stepm is used to prevent
  steps which would cause the optimization function to
  overflow, to prevent the algorithm from leaving the area
  of interest in parameter space, or to detect divergence
  in the algorithm. stepm would be chosen small enough to
  prevent the first two of these occurrences, but should be
  larger than any anticipated reasonable step.}

  \item{iterlim}{a positive integer specifying the maximum
  number of iterations to be performed before the nlm is
  terminated.}

  \item{useRcpp}{Logical indicating whether or not to use
  Rcpp.}
}
\value{
  A list containing the lower and upper confidence bounds
}
\description{
  move.HSMM.CI is used to add confidence intervals to a
  move.HSMM object.  Current options are parametric
  bootstrap percentile CIs or CIs calculated from the
  finite differences Hessian. Bootstrapping utilizes
  parallel processing on a local host.  For each bootstrap
  sample, NAs in the original data are inserted in the
  simulated data in the same positions.  CI's based on the
  finite differences Hessian should generally be treated
  skeptically unless you've done a coverage analysis for
  your model with the amount of data you have.  Bootstrap
  samples are stored in move.HSMM$store boot so they can be
  inspected or combined with more bootstrap samples.
}

