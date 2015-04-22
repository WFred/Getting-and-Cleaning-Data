###Getting and Cleaning Data Readme

##Data

The project provides an overview for a clean and tidy data set. The data used for this course can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
With a zipped file contained https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Overview

This project contains the script Run_analysis.R
This script does the following
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run the script requires the unzipping of the data and the working directory set in R to the folder location. 
To view the output independent file use the following code.

```Tidydata <- read.table ("Tidydata.txt", header = TRUE)```

```View (Tidydata)```

For more information please refer to the Codebook 




