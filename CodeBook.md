---
title: "CodeBook"
author: "Michael Baddley"
date: "2025-11-22"
---

# Data Overview
This project uses test and train data contained as part of the Human Activity Recognition Using Smartphones metadata

The initial dataset uses the Human Activity Recognition Using Smartphones found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip contained within the folder labeled: "UCI HAR Dataset"

The purpose of this data allows study of 30 participants regarding their activity level in the following categories: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

The GroupWork.R program creates a combined, merged, simplified dataset called "tidy_dataset" for additional study

# Variable Descriptions
The output product "tidy_dataset.txt" contains headers with the following labels:
1 _ subject - unique numbered identifier for each of the 30 study participants
2 _ activity - The physical activity that each participant was observed doing among 1 of 6 different categories (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3 _ Observed Measurement Variables -  Mean and standard deviation of various readings for each activity and each participant


# Missing Data Handling
There were no missing data points in this dataset


# Data Processing
1 _ Load "dplyr", "tidyr", and "readr" libraries (Note: if not already loaded in your computing system, you will need to first install these using: install.packages("dplyr"), install.packages("tidyr"), install.packages("readr"))
2 _ Set Working Directory
3 _ Set datapath to "UCI HAR Dataset"
4 _ Load Large data files for "activities" and "features" and set column names
5 _ Extract mean and standard deviation features to reduce unnecessary data
6 _ Load core data sets (X_train, y_train, X_test, y_test) and label columns
7 _ Combine and merge core data sets
8 _ Create final "tidy_dataset" dataset (combined, merged and cleaned)
9 _ Write "tidy_dataset" to a txt file for future use

# Code Instructions
1 _ Download the "UCI HAR Dataset" and unzip the file
2 _ Set working directory to same location
3 _ install "dplyr", "tidyr", and "readr" packages if not already installed
4 _ run "GroupWork.R" file in "R" which will automatically generate the tidy_dataset.txt in the same working directory

# Analysis Description
This dataset contains the mean and standard deviation averages of each participant in each activity, bringing all related data together in one concise dataset, enabling future analysis of these activities among these participants.



