#0. Set environment
      setwd("D:\\Code\\Getting and Cleaning\\UCI HAR Dataset")
      
#1. Merges the training and the test sets to create one data set
      #1.1 Prepare required datasets such as "train","test" and "activities"
            #Activity Lables
            activities <- read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
            
            #train set 
            train <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
            train[,562] <- read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
            train[,563] <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
            #test set 
            test <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
            test[,562] <- read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
            test[,563] <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

      #1.2 Then, merger train and test data
      myData <- rbind(train, test)
            #Don't forget remove previous data sets for keeping your memory cool
            rm(train, test)
      
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
      #2.1 Read features and transfer varabiles(related to mean or std) for further extraction
            feature <- read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
            feature[,2] <- gsub('-mean', 'Mean', feature[,2])
            feature[,2] <- gsub('-std', 'Std', feature[,2])
            feature[,2] <- gsub('[-()]', '', feature[,2])
      
      #2.2 Find index of measurements which have "mean" or "std" on its name
            mean <- grep(".*Mean.*", feature[,2])
            std <- grep(".*Std.*", feature[,2])
            meanStd <- c(mean, std) 
                  #Record check : Total 86
                  #meanStd
      #2.3 Then extract selected columns among all features
            feature <- feature[meanStd,]
      
      #2.4 Don't forget to add column indexs for subject and atvitity
            meanStd <- c(meanStd, 562,563)
      #2.5 Then extract selected columns among all features            
            myData <- myData[,meanStd]      
            
            #Don't forget remove used data      
            rm(mean,std)

##Do step 4 first      
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
      #4.1 Assign colnames using "feature" created in the second step
            colnames(myData) <- c(feature$V2, "Activity", "Subject")
                  ##Check
                  ##colnames(myData)
            

      #3.1 Assign activity names rather than numbers(1~6)
            i <-1 
            for (label in activities$V2) {
                  myData$Activity <- gsub(i,label, myData$Activity)
                  i<- i+1
            }
      ## str(myData$Activity) -> character

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
      #5.1 Transform activity and subject into factor to use "aggregate" function
            myData$Activity <- as.factor(myData$Activity)
            myData$Subject <- as.factor(myData$Subject)
                  str(myData$Activity)
      
      #5.2 create tidy data set with the average of each variable for each subject and activity
            finalSet <- aggregate(myData, by=list(Activity = myData$Activity, Subject=myData$Subject), mean)
      
      #5.3 Refine finalSet because last two columns don't have any meaning 
            finalSet <- finalSet[,1:88]
            write.table(finalSet, "courseProject.txt",sep="\t", row.name=FALSE) 
