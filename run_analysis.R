#Loading test data
test <- read.table("./test/X_test.txt")
test_label <- read.csv("./test/y_test.txt", sep = "", header = FALSE, col.names = "activity")
test_subject <- read.table("./test/subject_test.txt", col.names = "subject")
var.names <- read.table("./features.txt")
colnames(test) <- var.names$V2 # adding column names (feature names)


#Loading train data
train <- read.table("./train/X_train.txt")
train_label <- read.csv("./train/y_train.txt", sep = "", header = FALSE, col.names = "activity")
train_subject <- read.table("./train/subject_train.txt", col.names = "subject")
colnames(train) <- var.names$V2 # adding column names (feature names)


#Labeling activity
merged$activity <- factor(merged$activity, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))


#Merging data
test_A <- cbind(test_label,test)
test_AB <- cbind(test_subject,test_A)
train_A <- cbind(train_label,train)
train_AB <- cbind(train_subject,train_A)
merged <- rbind(train_AB,test_AB)

#Extracting mean and standard deviation values
exctracted_data <- merged[,c(grep("mean|std", colnames(merged)))]

#Average of each variable for each activity and each subject
merged_mean <- aggregate(merged[,3:563], list(merged$activity,merged$subject), mean)
