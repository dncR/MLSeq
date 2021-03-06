% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_generics.R, R/methods.R
\docType{methods}
\name{input}
\alias{input}
\alias{input,MLSeq-method}
\title{Accessors for the 'inputObject' slot of an \code{MLSeq} object}
\usage{
input(object)

\S4method{input}{MLSeq}(object)
}
\arguments{
\item{object}{an \code{MLSeq} object.}
}
\description{
\code{MLSeq} package benefits from \code{DESeqDataSet} structure from bioconductor package \code{DESeq2} for storing gene
expression data in a comprehensive structure. This object is used as an input for classification task through \code{\link{classify}}.
The input is stored in \code{inputObject} slot of \code{MLSeq} object.
}
\examples{
\dontrun{
library(DESeq2)
data(cervical)

# a subset of cervical data with first 150 features.
data <- cervical[c(1:150), ]

# defining sample classes.
class <- data.frame(condition = factor(rep(c("N","T"), c(29, 29))))

n <- ncol(data)  # number of samples
p <- nrow(data)  # number of features

# number of samples for test set (30\% test, 70\% train).
nTest <- ceiling(n*0.3)
ind <- sample(n, nTest, FALSE)

# train set
data.train <- data[ ,-ind]
data.train <- as.matrix(data.train + 1)
classtr <- data.frame(condition = class[-ind, ])

# train set in S4 class
data.trainS4 <- DESeqDataSetFromMatrix(countData = data.train,
                   colData = classtr, formula(~ 1))

## Number of repeats (repeats) might change model accuracies ##
# Classification and Regression Tree (CART) Classification
cart <- classify(data = data.trainS4, method = "rpart",
          ref = "T", preProcessing = "deseq-vst",
          control = trainControl(method = "repeatedcv", number = 5,
                                 repeats = 3, classProbs = TRUE))

input(cart)
}

}
\seealso{
\code{\link{classify}}, \code{\link[DESeq2]{DESeqDataSet}}
}
