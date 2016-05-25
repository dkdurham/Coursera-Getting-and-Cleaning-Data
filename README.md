# Coursera-Getting-and-Cleaning-Data
==================================================================
Human Activity Recognition Using Smartphones Data subset
Version 1.0
==================================================================
Denver Durham
www.github.com/dkdurham
==================================================================

Instructions:
====================================
The file run_analysis.R is a single argument function that takes a file path as the argument. Filepath must be the path to the 'UCI HAR Dataset' folder.

e.g. run_analysis(“/Users//Desktop/UCI HAR Dataset”)

The data subsets derived by this script include the mean and standard deviation calculations for each observation, and the mean of all variables per observation.
This script produces two files from the data:

- Mean_StandardDev.csv are the mean and standard deviation variables for each observation. An observation is an activity per subject.

- Means_per_Activity_Subject.csv is a truncated table of the mean of each variable per subject and activity.

Required .R packages: “dplyr”, “plyr”

Additional information can be found in the CODEBOOK.

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The script produces the following files:
=========================================
1. 'Means_and_StandardDevs.csv' are the mean and standard deviation variables for each observation. An observation is an activity per subject.

2. 'Means_per_Subj_&_Activity.csv' is a truncated table of the mean of each variable per subject and activity.


The script requires the following files from 'UCI HAR Dataset':
=========================================

- 'features.txt': List of all features.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a variable.
- Each ACtivity per subject is an observation.

For more information about this dataset contact: activityrecognition@smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the tqime and frequency domain. See 'features_info.txt' for more details.

This dataset acknowledges the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

