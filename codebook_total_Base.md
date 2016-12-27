# codebook_total_Base

the variables in total_Base are:

 [1] "subject"                         "tBodyAcc-mean()-X"              
 [3] "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"              
 [5] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
 [7] "tBodyAcc-std()-Z"                "tGravityAcc-mean()-X"           
 [9] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
[11] "tGravityAcc-std()-X"             "tGravityAcc-std()-Y"            
[13] "tGravityAcc-std()-Z"             "tBodyAccJerk-mean()-X"          
[15] "tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"          
[17] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"           
[19] "tBodyAccJerk-std()-Z"            "tBodyGyro-mean()-X"             
[21] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[23] "tBodyGyro-std()-X"               "tBodyGyro-std()-Y"              
[25] "tBodyGyro-std()-Z"               "tBodyGyroJerk-mean()-X"         
[27] "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"         
[29] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
[31] "tBodyGyroJerk-std()-Z"           "tBodyAccMag-mean()"             
[33] "tBodyAccMag-std()"               "tGravityAccMag-mean()"          
[35] "tGravityAccMag-std()"            "tBodyAccJerkMag-mean()"         
[37] "tBodyAccJerkMag-std()"           "tBodyGyroMag-mean()"            
[39] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-mean()"        
[41] "tBodyGyroJerkMag-std()"          "fBodyAcc-mean()-X"              
[43] "fBodyAcc-mean()-Y"               "fBodyAcc-mean()-Z"              
[45] "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[47] "fBodyAcc-std()-Z"                "fBodyAcc-meanFreq()-X"          
[49] "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[51] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[53] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-std()-X"           
[55] "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[57] "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"      
[59] "fBodyAccJerk-meanFreq()-Z"       "fBodyGyro-mean()-X"             
[61] "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"             
[63] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
[65] "fBodyGyro-std()-Z"               "fBodyGyro-meanFreq()-X"         
[67] "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
[69] "fBodyAccMag-mean()"              "fBodyAccMag-std()"              
[71] "fBodyAccMag-meanFreq()"          "fBodyBodyAccJerkMag-mean()"     
[73] "fBodyBodyAccJerkMag-std()"       "fBodyBodyAccJerkMag-meanFreq()" 
[75] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"         
[77] "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"    
[79] "fBodyBodyGyroJerkMag-std()"      "fBodyBodyGyroJerkMag-meanFreq()"
[81] "set"                             "response"                       
[83] "activity_name"

from the description

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
"

the "set" variable indicates whether the observation came from the training or the test set

the "response" variable gives the activity code
the "activity_name" gives the activity name in characters