# Code Book

The file CleanActivityData.txt is a tab-delimited file containing processed data derived from the
"Human Activity Recognition Using Smartphones Dataset".  Information on this data can be found at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
<br>
<br>
Reference:<br>
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
<br>
<br>
#### Brief description (from the original data set):
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
<br><br>
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
#### Original feature description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
<br><br>
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
<br><br>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
<br><br>
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


### Processed data in CleanActivityData.txt
The processed data contain for each person and each activity the means of a subset of the original data. This subset are those features of the original data that are labelled as means and standard deviations by the authors.<br>
The authors provided two data sets: a training and a test set. In the processed data set these two groups were merged.
#### Units
The features in the original data were normalized and bounded within [-1,1]. Therefore, all values in the original and in the derived data are unitless.

#### General variable naming
* Variable names derived from the time domain bedin with "time", variable names derived from the frequency domain begin with freq.
* suffixes _X, _Y and _Z signify the three spacial directions of the measurements
* mean refers to the mean of the value and std to the standard deviation (of both the mean values for each person and activity are shown in the  CleanActivityData.txt file).

### Variable List
Each variable name is preceded by the corresponding column number.

#### Body acceleration - time domain
* (1) timeBodyAcc_mean_X
* (2) timeBodyAcc_mean_Y
* (3) timeBodyAcc_mean_Z
* (4) timeBodyAcc_std_X	
* (5) timeBodyAcc_std_Y
* (6) timeBodyAcc_std_Z

#### Gravity acceleration - time domain
* (7) timeGravityAcc_mean_X<br>
* (8) timeGravityAcc_mean_Y<br>
* (9) timeGravityAcc_mean_Z<br>
* (10) timeGravityAcc_std_X<br>
* (11) timeGravityAcc_std_Y<br>
* (12) timeGravityAcc_std_Z<br>

#### Body acceleration jerk - time domain
* (13) timeBodyAccJerk_mean_X
* (14) timeBodyAccJerk_mean_Y
* (15) timeBodyAccJerk_mean_Z
* (16) timeBodyAccJerk_std_X
* (17) timeBodyAccJerk_std_Y
* (18) timeBodyAccJerk_std_Z	

#### Body gyroscope - time domain
* (19) timeBodyGyro_mean_X
* (20) timeBodyGyro_mean_Y
* (21) timeBodyGyro_mean_Z	
* (22) timeBodyGyro_std_X	
* (23) timeBodyGyro_std_Y	
* (24) timeBodyGyro_std_Z	

#### Body gyroscope jerk - time domain
* (25) timeBodyGyroJerk_mean_X	
* (26) timeBodyGyroJerk_mean_Y	
* (27) timeBodyGyroJerk_mean_Z	
* (28) timeBodyGyroJerk_std_X	
* (29) timeBodyGyroJerk_std_Y	
* (30) timeBodyGyroJerk_std_Z	

#### Body acceleration magnitude - time domain
* (31) timeBodyAccMag_mean
* (32) timeBodyAccMag_std

#### Gravity acceleration magnitude - time domain
* (33) timeGravityAccMag_mean
* (34) timeGravityAccMag_std	

#### Body acceleration jerk magnitude - time domain
* (35) timeBodyAccJerkMag_mean	
* (36) timeBodyAccJerkMag_std	

#### Body gyroscope magnitude - time domain
* (37) timeBodyGyroMag_mean	
* (38) timeBodyGyroMag_std	

#### Body gyroscope jerk magnitude - time domain
* (39) timeBodyGyroJerkMag_mean
* (40) timeBodyGyroJerkMag_std	

#### Body acceleration - frequency domain
* (41) freqBodyAcc_mean_X
* (42) freqBodyAcc_mean_Y
* (43) freqBodyAcc_mean_Z
* (44) freqBodyAcc_std_X
* (45) freqBodyAcc_std_Y
* (46) freqBodyAcc_std_Z	

#### Body acceleration jerk - frequency domain
* (47) freqBodyAccJerk_mean_X
* (48) freqBodyAccJerk_mean_Y
* (49) freqBodyAccJerk_mean_Z
* (50) freqBodyAccJerk_std_X	
* (51) freqBodyAccJerk_std_Y
* (52) freqBodyAccJerk_std_Z

#### Body gyroscope - frequency domain
* (53) freqBodyGyro_mean_X	
* (54) freqBodyGyro_mean_Y	
* (55) freqBodyGyro_mean_Z	
* (56) freqBodyGyro_std_X	
* (57) freqBodyGyro_std_Y	
* (58) freqBodyGyro_std_Z	

#### Body acceleration magnitude - frequency domain
* (59) freqBodyAccMag_mean	
* (60) freqBodyAccMag_std	

#### Body acceleration jerk magnitude - frequency domain
* (61) freqBodyBodyAccJerkMag_mean	
* (62) freqBodyBodyAccJerkMag_std	

#### Body gyroscope magnitude - frequency domain
* (63) freqBodyBodyGyroMag_mean	
* (64) freqBodyBodyGyroMag_std	

#### Body gyroscope jerk magnitude - frequency domain
* (65) freqBodyBodyGyroJerkMag_mean	
* (66) freqBodyBodyGyroJerkMag_std	

#### Activity name and subject id
* (67) Activity	
* (68) Subject

