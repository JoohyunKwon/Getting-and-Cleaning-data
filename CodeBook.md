Codebook for the describing the variables.

I urge you to read the original code book and readme file because it provide much detailed information and ideas.
So, I want to extract some of them to give you brief understand on the final outcome("courseProject.txt")
  *Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Set Information:
======================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
Check the README.txt file for further details about this dataset. 
A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]


Attribute Information:
======================================================
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Variables of the final outcome 
===============================================================================
Activity : Types of activities (such as walking, sitting, standing and etc.)
Subject : Each person who participate into this experiment.
Others : Extracted variables from the original data. 
(Description of R code is in README file)

 [1] "Activity"                           "Subject"                            "tBodyAccMeanX"                     
 [4] "tBodyAccMeanY"                      "tBodyAccMeanZ"                      "tGravityAccMeanX"                  
 [7] "tGravityAccMeanY"                   "tGravityAccMeanZ"                   "tBodyAccJerkMeanX"                 
[10] "tBodyAccJerkMeanY"                  "tBodyAccJerkMeanZ"                  "tBodyGyroMeanX"                    
[13] "tBodyGyroMeanY"                     "tBodyGyroMeanZ"                     "tBodyGyroJerkMeanX"                
[16] "tBodyGyroJerkMeanY"                 "tBodyGyroJerkMeanZ"                 "tBodyAccMagMean"                   
[19] "tGravityAccMagMean"                 "tBodyAccJerkMagMean"                "tBodyGyroMagMean"                  
[22] "tBodyGyroJerkMagMean"               "fBodyAccMeanX"                      "fBodyAccMeanY"                     
[25] "fBodyAccMeanZ"                      "fBodyAccMeanFreqX"                  "fBodyAccMeanFreqY"                 
[28] "fBodyAccMeanFreqZ"                  "fBodyAccJerkMeanX"                  "fBodyAccJerkMeanY"                 
[31] "fBodyAccJerkMeanZ"                  "fBodyAccJerkMeanFreqX"              "fBodyAccJerkMeanFreqY"             
[34] "fBodyAccJerkMeanFreqZ"              "fBodyGyroMeanX"                     "fBodyGyroMeanY"                    
[37] "fBodyGyroMeanZ"                     "fBodyGyroMeanFreqX"                 "fBodyGyroMeanFreqY"                
[40] "fBodyGyroMeanFreqZ"                 "fBodyAccMagMean"                    "fBodyAccMagMeanFreq"               
[43] "fBodyBodyAccJerkMagMean"            "fBodyBodyAccJerkMagMeanFreq"        "fBodyBodyGyroMagMean"              
[46] "fBodyBodyGyroMagMeanFreq"           "fBodyBodyGyroJerkMagMean"           "fBodyBodyGyroJerkMagMeanFreq"      
[49] "angletBodyAccMean,gravity"          "angletBodyAccJerkMean,gravityMean"  "angletBodyGyroMean,gravityMean"    
[52] "angletBodyGyroJerkMean,gravityMean" "angleX,gravityMean"                 "angleY,gravityMean"                
[55] "angleZ,gravityMean"                 "tBodyAccStdX"                       "tBodyAccStdY"                      
[58] "tBodyAccStdZ"                       "tGravityAccStdX"                    "tGravityAccStdY"                   
[61] "tGravityAccStdZ"                    "tBodyAccJerkStdX"                   "tBodyAccJerkStdY"                  
[64] "tBodyAccJerkStdZ"                   "tBodyGyroStdX"                      "tBodyGyroStdY"                     
[67] "tBodyGyroStdZ"                      "tBodyGyroJerkStdX"                  "tBodyGyroJerkStdY"                 
[70] "tBodyGyroJerkStdZ"                  "tBodyAccMagStd"                     "tGravityAccMagStd"                 
[73] "tBodyAccJerkMagStd"                 "tBodyGyroMagStd"                    "tBodyGyroJerkMagStd"               
[76] "fBodyAccStdX"                       "fBodyAccStdY"                       "fBodyAccStdZ"                      
[79] "fBodyAccJerkStdX"                   "fBodyAccJerkStdY"                   "fBodyAccJerkStdZ"                  
[82] "fBodyGyroStdX"                      "fBodyGyroStdY"                      "fBodyGyroStdZ"                     
[85] "fBodyAccMagStd"                     "fBodyBodyAccJerkMagStd"             "fBodyBodyGyroMagStd"               
[88] "fBodyBodyGyroJerkMagStd"           
