context("Testing classify function")
test_that("classify produces error/warning messages properly.", {
  data(cervical)

  # a subset of cervical data with first 150 features.
  data <- cervical[c(1:10), ]

  # defining sample classes.
  class <- data.frame(condition = factor(rep(c("N","T"), c(29, 29))))

  n <- ncol(data)  # number of samples
  p <- nrow(data)  # number of features

  # train set
  data.train <- data
  data.train <- as.matrix(data.train + 1)
  classtr <- data.frame(condition = class)

  # train set in S4 class
  data.trainS4 <- DESeq2::DESeqDataSetFromMatrix(countData = data.train,
                                         colData = classtr, formula(~ condition))
  data.trainS4 <- DESeq2::DESeq(data.trainS4, fitType = "local")


  # Give an error for unavailable classifiers.
  expect_error(classify(data = data.trainS4, method = "unkown",
                        control = trainControl(method = "repeatedcv", classProbs = TRUE)))

  # 'method' can not be NULL
  expect_error(classify(data = data.trainS4, method = NULL,
                        control = trainControl(method = "repeatedcv", classProbs = TRUE)))

  # Reference cannot be a "numeric".
  expect_error(classify(data = data.trainS4, method = "rpart", ref = 2,
                        control = trainControl(method = "repeatedcv", classProbs = TRUE)))

  # Reference cannot be a "logical".
  expect_error(classify(data = data.trainS4, method = "rpart", ref = FALSE,
                        control = trainControl(method = "repeatedcv", classProbs = TRUE)))

  # Class of "data" should be "DESeqDataSet
  expect_error(classify(data = data.train, method = "rpart",
                        control = trainControl(method = "repeatedcv", classProbs = TRUE)))

  # warning:
  # expect_warning(classify(data = data.trainS4, method = "rpart", normalize = "TMM", ref = "T",
  #                         control = trainControl(method = "repeatedcv", number = 2, repeats = 2, classProbs = TRUE)))
})
