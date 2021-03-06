#Requires package dplyr to be installed to run script
library (dplyr)

#read in data for test + train and merge
supertable <- 
  rbind(read.table ("test/X_test.txt"),
        read.table ("train/X_train.txt"))

#read in subject list 
Subject_Id <-  rbind (read.table ("test/subject_test.txt"),
                      read.table ("train/subject_train.txt"))
colnames(Subject_Id) <- "Subject_Id"

#read in real column names that are the features 
features <- read.table("features.txt")

#read in activity names in numeric form
Activity <-  rbind(read.table ("test/y_test.txt"),
                   read.table ("train/y_train.txt"))

#read in activity real names and replace numeric form with descriptive
label.names <- read.table ("activity_labels.txt")

Activity <- data.frame("Activity" = label.names[,2][Activity[,1]])

# Add column names to supertable
colnames (supertable) <- (features[,2])

# bind descriptive Activitys and Subject_Id to Supertable to created Merged Data set

Merged  <- cbind (Subject_Id, Activity, supertable)

# Select only mean and standard deviation containing columns
## to use select function first must coerce columns into valid R names. 
### This is the removal of () and - symbols from column names

valid_column_names <- make.names(names=names(Merged), unique=TRUE, allow_ = TRUE)
names(Merged) <- valid_column_names

## Select only columns for mean and standard deviation and reorder Mean then Standard dev
Data <- Merged %>%
  select (Subject_Id, Activity, contains( "mean"), contains ("std")) 

#Rename column names using descriptive varible names including removal of errors
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

#Write tidy data set,
## grouping by subject then activity giving averages for each varible
### Orders data by subject 

Tidydata <- Data %>%
  group_by (Subject_Id, Activity) %>%
  summarise_each (funs(mean))

write.table(Tidydata, "Tidydata.txt", row.name=FALSE)
