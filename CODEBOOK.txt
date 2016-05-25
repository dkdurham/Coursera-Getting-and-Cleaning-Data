Study Description:
=====================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Data Sample:
=====================

The data was collected from thirty subjects (numbered 1:30) performing six activities: 

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

3.Technical information about the files themselves: number of observations, record length, number of records per observation, etc.

This script produces two files from the data:

- Means_and_StandardDevs.txt are the mean and standard deviation variables for each observation. An observation is an activity per subject.

The structure of the data:
Total observations: 10299
Variables: 89

- Means_per_Subj_and_Activity.txt is a truncated table of the mean of each variable per subject and activity.

The structure of the data:
Total observations: 180
Variables 89


Feature Selection 
=====================

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
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The list of variables utilized in this program are as follows (leading numbers are retained to deal with duplicates):

 [1] "activity"                                
 [2] "subject"                                 
 [3] "1 tBodyAcc-mean()-X"                     
 [4] "2 tBodyAcc-mean()-Y"                     
 [5] "3 tBodyAcc-mean()-Z"                     
 [6] "41 tGravityAcc-mean()-X"                 
 [7] "42 tGravityAcc-mean()-Y"                 
 [8] "43 tGravityAcc-mean()-Z"                 
 [9] "81 tBodyAccJerk-mean()-X"                
[10] "82 tBodyAccJerk-mean()-Y"                
[11] "83 tBodyAccJerk-mean()-Z"                
[12] "121 tBodyGyro-mean()-X"                  
[13] "122 tBodyGyro-mean()-Y"                  
[14] "123 tBodyGyro-mean()-Z"                  
[15] "161 tBodyGyroJerk-mean()-X"              
[16] "162 tBodyGyroJerk-mean()-Y"              
[17] "163 tBodyGyroJerk-mean()-Z"              
[18] "201 tBodyAccMag-mean()"                  
[19] "214 tGravityAccMag-mean()"               
[20] "227 tBodyAccJerkMag-mean()"              
[21] "240 tBodyGyroMag-mean()"                 
[22] "253 tBodyGyroJerkMag-mean()"             
[23] "266 fBodyAcc-mean()-X"                   
[24] "267 fBodyAcc-mean()-Y"                   
[25] "268 fBodyAcc-mean()-Z"                   
[26] "294 fBodyAcc-meanFreq()-X"               
[27] "295 fBodyAcc-meanFreq()-Y"               
[28] "296 fBodyAcc-meanFreq()-Z"               
[29] "345 fBodyAccJerk-mean()-X"               
[30] "346 fBodyAccJerk-mean()-Y"               
[31] "347 fBodyAccJerk-mean()-Z"               
[32] "373 fBodyAccJerk-meanFreq()-X"           
[33] "374 fBodyAccJerk-meanFreq()-Y"           
[34] "375 fBodyAccJerk-meanFreq()-Z"           
[35] "424 fBodyGyro-mean()-X"                  
[36] "425 fBodyGyro-mean()-Y"                  
[37] "426 fBodyGyro-mean()-Z"                  
[38] "452 fBodyGyro-meanFreq()-X"              
[39] "453 fBodyGyro-meanFreq()-Y"              
[40] "454 fBodyGyro-meanFreq()-Z"              
[41] "503 fBodyAccMag-mean()"                  
[42] "513 fBodyAccMag-meanFreq()"              
[43] "516 fBodyBodyAccJerkMag-mean()"          
[44] "526 fBodyBodyAccJerkMag-meanFreq()"      
[45] "529 fBodyBodyGyroMag-mean()"             
[46] "539 fBodyBodyGyroMag-meanFreq()"         
[47] "542 fBodyBodyGyroJerkMag-mean()"         
[48] "552 fBodyBodyGyroJerkMag-meanFreq()"     
[49] "555 angle(tBodyAccMean,gravity)"         
[50] "556 angle(tBodyAccJerkMean),gravityMean)"
[51] "557 angle(tBodyGyroMean,gravityMean)"    
[52] "558 angle(tBodyGyroJerkMean,gravityMean)"
[53] "559 angle(X,gravityMean)"                
[54] "560 angle(Y,gravityMean)"                
[55] "561 angle(Z,gravityMean)"                
[56] "4 tBodyAcc-std()-X"                      
[57] "5 tBodyAcc-std()-Y"                      
[58] "6 tBodyAcc-std()-Z"                      
[59] "44 tGravityAcc-std()-X"                  
[60] "45 tGravityAcc-std()-Y"                  
[61] "46 tGravityAcc-std()-Z"                  
[62] "84 tBodyAccJerk-std()-X"                 
[63] "85 tBodyAccJerk-std()-Y"                 
[64] "86 tBodyAccJerk-std()-Z"                 
[65] "124 tBodyGyro-std()-X"                   
[66] "125 tBodyGyro-std()-Y"                   
[67] "126 tBodyGyro-std()-Z"                   
[68] "164 tBodyGyroJerk-std()-X"               
[69] "165 tBodyGyroJerk-std()-Y"               
[70] "166 tBodyGyroJerk-std()-Z"               
[71] "202 tBodyAccMag-std()"                   
[72] "215 tGravityAccMag-std()"                
[73] "228 tBodyAccJerkMag-std()"               
[74] "241 tBodyGyroMag-std()"                  
[75] "254 tBodyGyroJerkMag-std()"              
[76] "269 fBodyAcc-std()-X"                    
[77] "270 fBodyAcc-std()-Y"                    
[78] "271 fBodyAcc-std()-Z"                    
[79] "348 fBodyAccJerk-std()-X"                
[80] "349 fBodyAccJerk-std()-Y"                
[81] "350 fBodyAccJerk-std()-Z"                
[82] "427 fBodyGyro-std()-X"                   
[83] "428 fBodyGyro-std()-Y"                   
[84] "429 fBodyGyro-std()-Z"                   
[85] "504 fBodyAccMag-std()"                   
[86] "517 fBodyBodyAccJerkMag-std()"           
[87] "530 fBodyBodyGyroMag-std()"              
[88] "543 fBodyBodyGyroJerkMag-std()" 

=======================
Notes:
This dataset acknowledges the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


