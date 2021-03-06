% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_classes.R
\docType{class}
\name{discrete.train-class}
\alias{discrete.train-class}
\title{\code{discrete.train} object}
\description{
This object is the subclass for the \code{MLSeq.train} class. It contains trained model information for discrete
classifiers such as Poisson Linear Discriminant Analysis (PLDA) and Negative Binomial Linear Discriminant Analysis (NBLDA).
}
\section{Slots}{


\describe{
  \item{\code{inputs}:}{a list with elements used as input for classification task.}
  \item{\code{control}:}{a list with control parameters for discrete classifiers, e.g. PLDA, PLDA2 and NBLDA.}
  \item{\code{crossValidatedModel}:}{a list. It stores the results for cross validation.}
  \item{\code{finalModel}:}{a list. This is the trained model with optimum parameters.}
  \item{\code{tuningResults}:}{a list. It stores the results for tuning parameter if selected classifier has
  one or more parameters to be optimized.}
  \item{\code{callInfo}:}{a list. call info for selected method.}
}
}

