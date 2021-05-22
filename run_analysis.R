test <- read.table("./test/X_test.txt")
train <- read.table("./train/X_train.txt")
test_label <- read.csv("./test/y_test.txt", sep = "", header = FALSE)
train_label <- read.csv("./train/y_train.txt", sep = "", header = FALSE)
var.names <- read.table("./features.txt")
colnames(train) <- var.names$V2
colnames(test) <- var.names$V2
testl<-data.frame(test, activity_names = factor(test_label$V1, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")))
trainl <- data.frame(train, activity_names = factor(train_label$V1, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")))
merged <-merge(testl,trainl, all = TRUE)
means <- lapply(merged[,c(1:561)],mean)
std <- lapply(merged[,c(1:561)], sd)
tabel <- list("mean" = means,"sd" = std)
merged_mean <- aggregate(merged[,1:561], list(merged$activity_names), mean)