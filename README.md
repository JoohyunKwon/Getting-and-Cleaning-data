# Getting-and-Cleaning-data
Repo for course project.

This repo is for course project (Coursera: Getting and Cleaning data)
I've write R code to make a tidy data set which contains averages of many activities from 30 people.
  Original data from 
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

About anlaysis_run.R
======================================
To work the code, please be sure few things.
  1. download data from the link above
  2. Set the "right" location where the data is in.
     (In my code, setwd() is in the first line.)
  3. When you run the code, you will find the txt file, "coureProject.txt" , as the result of it.
  4. Please find the file where you set at the seconde step.

How R code works
===========================================
I tried my best to follow the guide from the team. 
So I gurantee that you will never lose your way as you read the code.
Here are steps.
1. Merges the training and the test sets to create one data set
1.1 Prepare required datasets such as "train","test" and "activities"
Activity Lables
train set
test set 
#1.2 Then, merger train and test data

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
      #2.1 Read features and transfer varabiles(related to mean or std) for further extraction
      #2.2 Find index of measurements which have "mean" or "std" on its name
      #2.3 Then extract selected columns among all features

##Do step 4 first      
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
      #4.1 Assign colnames using "feature" created in the second step
      #3.1 Assign activity names rather than numbers(1~6)
##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
      #5.1 Transform activity and subject into factor to use "aggregate" function
      #5.2 create tidy data set with the average of each variable for each subject and activity

If you have any questions, don't hesitate to contact me.
