###Codebook For Getting and Cleaning Data 

This is the codebook for the outputted Tidydata file. The original source of the data can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Structure of Data

Data is organised to produce the average of each variable for each subject and activity. This data is arranged in the form of Subject_Id, Activity, average of Means, average of Standard deviations.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. (Note names have been adjusted to more descriptive variable names). 
•	time Body Accelerometer -XYZ
•	time Gravity Accelerometer -XYZ
•	time Body Accelerometer Jerk -XYZ
•	time Body Gyroscope -XYZ
•	time Body Gyroscope Jerk -XYZ
•	time Body Accelerometer Magnitude
•	time Gravity Accelerometer Magnitude
•	time Body Accelerometer Jerk Magnitude
•	time Body Gyroscope Magnitude
•	time Body Gyroscope Jerk Magnitude
•	frequency Body Accelerometer -XYZ
•	frequency Body Accelerometer Jerk -XYZ
•	frequency Body Gyroscope -XYZ
•	frequency Body Accelerometer Magnitude
•	frequency Body Accelerometer Jerk Magnitude
•	frequency Body Gyroscope Magnitude
•	frequency Body Gyroscope Jerk Magnitude
The set of variables that were kept in this assignment:
•	mean: Mean value
•	std: Standard deviation
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
•	gravity Mean
•	time Body Accelerometer Mean
•	time Body Accelerometer Jerk Mean
•	time Body Gyroscope Mean
•	time Body Gyroscope Jerk Mean
All other variables were discarded for this assignment. 
These names are structured in the format of:
Time body Accelerometer Mean – X  =   timeBodyAccelerometer.mean...X
Time body Accelerometer Std – Y      =   timeBodyAccelerometer.std...Y
