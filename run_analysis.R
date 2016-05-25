# Filepath must be the path to the 'UCI HAR Dataset' folder
run_analysis <- function(filepath){
     setwd(filepath)
     
     # required packages
     library(dplyr)
     library(plyr)

     features <- read.csv("features.txt", header = FALSE, sep = "\n", stringsAsFactors = FALSE)
     feature_names <- as.vector(features$V1)
     
     # read test files
     setwd("./test")
     subject_test <- read.csv("subject_test.txt", header = FALSE, sep = "\n", stringsAsFactors = FALSE)
     X_test <- read.csv("X_test.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
     colnames(X_test) <- feature_names
     Y_test <- read.csv("y_test.txt", header = FALSE, sep = "\n", stringsAsFactors = FALSE)
     # cbind data frames
     XY_test <- cbind(subject_test, X_test)
     names(XY_test$V1) <- "subject"
     XY_test <- cbind(Y_test, XY_test)
     
     # read train files
     setwd("..")
     setwd("./train")
     subject_train <- read.csv("subject_train.txt", header = FALSE, sep = "\n", stringsAsFactors = FALSE)
     X_train <- read.csv("X_train.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
     colnames(X_train) <- feature_names
     Y_train <- read.csv("y_train.txt", header = FALSE, sep = "\n", stringsAsFactors = FALSE)
     # cbind data frames
     XY_train <- cbind(subject_train, X_train)
     XY_train <- cbind(Y_train, XY_train)
     
     # rbind train and test data frames
     XY_total <- rbind(XY_train, XY_test)
     names(XY_total)[1:2] <- c("activity", "subject")
     
     # replace subject_train column with training types
     activ_list <- c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying")
     for (i in c(1:6)){
         XY_total$activity <- replace(XY_total$activity, XY_total$activity==i, activ_list[i])
     }
     
     # filter columns by mean OR standard deviation, save the new dataframe to parent folder
     XY_mean_std <- XY_total %>% select(activity, subject, contains("mean"), contains("std"))
     setwd("..")
     write.table(XY_mean_std, "Means_and_StandardDevs.txt", row.names = FALSE)
     print("saving 'Means_and_StandardDevs.csv' to folder...")
     # average of each variable for each activity and each subject, save the new dataframe to parent folder
     subset_means <- XY_mean_std %>% 
         group_by(activity, subject) %>% 
         summarise_each(funs(mean))
     write.table(subset_means, "Means_per_Subj_&_Activity.txt", row.names = FALSE)
     print("saving 'Means_per_Subj_&_Activity.csv' to folder...")
     print("Done!")
}
