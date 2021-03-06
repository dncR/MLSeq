% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_classes.R
\docType{class}
\name{MLSeqModelInfo-class}
\alias{MLSeqModelInfo-class}
\title{\code{MLSeqModelInfo} object}
\description{
For classification, this is the subclass for the \code{MLSeq} class. This object contains all the information about classification model.
}
\details{
Objects can be created by calls of the form \code{MLSeqModelInfo(...)}. This type
of objects is created as a result of \code{classify} function of \code{MLSeq} package.
It is then used in \code{predictClassify} function for predicting the class labels of new samples.
}
\note{
\code{method, transformation, normalization} slots give the information on classifier, transformation and normalization techniques.
Since all possible pairs of transformation and normalization are not available in practice, we specify appropriate transformations and
normalization techniques with \code{preProcessing} argument in \code{\link{classify}} function. Finally, the information on normalization and transformation
is extracted from preProcessing argument.

\code{MLSeq.train} is a union class of \code{train} from caret package, \code{voom.train} and \code{discrete.train} from MLSeq package. See related class
manuals for details.
}
\section{Slots}{


\describe{
  \item{\code{method, transformation, normalization}:}{these slots store the classification method, transformation technique and
  normalization method respectively. See notes for details. }
  \item{\code{preProcessing}:}{See \code{\link{classify}} for details.}
  \item{\code{ref}:}{a character string indicating the reference category for cases (diseased subject, tumor sample, etc.)}
  \item{\code{control}:}{a list with controlling parameters for classification task.}
  \item{\code{confusionMat}:}{confusion table and accuracy measures for the predictions.}
  \item{\code{trainedModel}:}{an object of \code{MLSeq.train} class. It contains the trained model. See notes for details.}
  \item{\code{trainParameters}:}{a list with training parameters from final model. These parameters are used for test set before predicting class labels.}
  \item{\code{call}:}{a call object for classification task.}
}
}

\seealso{
\code{\link[caret]{train}}, \code{\link{voom.train-class}}, \code{\link{discrete.train-class}}
}
