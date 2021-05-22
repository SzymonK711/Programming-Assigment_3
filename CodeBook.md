---
title: "README"
author: "SK"
date: "22 05 2021"
output: html_document

variables describtion:
test <- assigment of raw test dataset 
train <- assigment of raw train dataset
test_label <- assigment of activity names for test dataset
train_label <- assigment of activity names for train dataset
var.names <- assigment of feature names
testl <- creating data.frame where test dataset has names it's activity
trainl <- creating data.frame where train dataset has names it's activity
merged <- appending testl and trainl data
means <- list containing mean value for each feature of merged data
std <- list containing standard devation value for each feature of merged data
tabel <- list appending means and std lists
merged_mean <- tidy dataset containing mean value for each feature in order to each activity