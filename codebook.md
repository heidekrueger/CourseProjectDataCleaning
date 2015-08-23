# Codebook
## Explanation of Variables in `summary.txt`

Each column in the summary file contains the *average* over all observations of the named variable for each subject and activity.

Note that the named variables variables included in this data set are already summary statistics (mean or standard deviation) of measurements for a given observation (see below).

Consider the following entry as an example:
subject | activity |  tBodyAcc-mean-X
--------|----------|-----------------
1       | "LAYING" | 0.22159824394

Then the value 0.22159824394 is the ** mean of the means of Body-Acceleration measurements in X direction for all observations where subject 1 was laying.

### Named variables
The measurements are explained like this in the original codebook:
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
> [...]
>
>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
>
>The set of variables that were estimated from these signals are: 
>
mean(): Mean value
std(): Standard deviation
>[...]

Here, XYZ denotes that this measurement has been taken separately for the 3 spacial dimension X, Y and Z (and these appear as distinct variables.)

Note that the raw data includes further summary statistics and time-frequency analysis using Fourier transformations. However, we only include the mean and std measures here.