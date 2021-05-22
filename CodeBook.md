---
title: "README"
author: "SK"
date: "22 05 2021"
output: html_document

#1 Loading data
variables describtion:
test <- assigment of raw test dataset 
train <- assigment of raw train dataset
# Adding names
test_label <- assigment of activity names for test dataset
train_label <- assigment of activity names for train dataset
var.names <- assigment of feature names
#Merging data
test_A <- add activity column to test data set
test_AB <- add subject column do test data set
train_A <- add activity column to train data set
train_AB <- add subject column do train data set
merged <- appending test_AB and train_AB data

#Extracting data
extracted_data <- data set containing mean value for each feature of train and test data

#Calculating mean value 
merged_mean <- new dataset containing mean value for each feature in order to each activity for each subject