#This script ....

#This script assume that the data is contained in the subdirectory
# 'UCI HAR Dataset'
require(dplyr)

## Load the raw data
xtest <- read.table('UCI HAR Dataset/test/X_test.txt')
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
ytest <- read.table('UCI HAR Dataset/test/y_test.txt')
xtrain <- read.table('UCI HAR Dataset//train//X_train.txt')
subject_train <- read.table('UCI HAR Dataset//train//subject_train.txt')
ytrain <- read.table('UCI HAR Dataset/train//y_train.txt')
features <- read.table('UCI HAR Dataset/features.txt')
activity_labels <- read.table('UCI HAR Dataset//activity_labels.txt')

#Change column names in raw data to the names of the features
names(xtest) <- features$V2
names(xtrain) <- features$V2

##Remove all "duplicated column names" so that dplyr can handle the data
## These are only fBodyGyro-bandsEnergy()-... variables that contain commas
## None of these are needed in further analysis.
bad <- duplicated(names(xtest))
xtest <- xtest[,!bad]
xtrain <- xtrain[,!bad]
features <- filter(features, !bad)

##Add ylabel and subject columns to the datasets
xtrain <- xtrain %>% mutate(activity_id = ytrain[,1]) %>%
  mutate(subject = subject_train[,1])
xtest <- xtest %>% mutate(activity_id = ytest[,1]) %>%
  mutate(subject = subject_test[,1])

##Now merge the Test and Training sets
data <- rbind(xtest, xtrain)

## Completed Step 1.
## Do some housekeepin to save RAM.
rm(subject_test, subject_train, xtest, xtrain, ytest, ytrain, features)

## Before we continue with Step 2, let's first add the descriptive activity names
## to the dataset at this point (for Step 3), so as to avoid duplicate subsetting.
data <- mutate(data, activity = activity_labels$V2[as.numeric(data$activity_id)])

## Next, only consider columns that contain "mean()" or "std()" in their name,
##  as well as the two cols we added above
data <- select(data, subject, activity, matches("(mean|std)\\(.*\\)"))

## Completed Steps 2 and 3 and 4.


