% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_classes.R
\docType{class}
\name{voom.train-class}
\alias{voom.train-class}
\title{\code{voom.train} object}
\description{
This object is the subclass for the \code{MLSeq.train} class. It contains trained model information for voom based
classifiers, i.e. "voomDLDA", "voomDQDA" and "voomNSC".
}
\section{Slots}{


\describe{
  \item{\code{weigtedStats}:}{a list with elements of weighted statistics which are used for training the model. Weights are calculated from voom
  transformation. }
  \item{\code{foldInfo}:}{a list containing information on cross-validated folds.}
  \item{\code{control}:}{a list with control parameters for voom based classifiers.}
  \item{\code{tuningResults}:}{a list. It stores the cross-validation results for tuning parameter(s).}
  \item{\code{finalModel}:}{a list. It stores results for trained model with optimum parameters.}
  \item{\code{callInfo}:}{a list. call info for related function.}
}
}

