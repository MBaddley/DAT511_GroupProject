---
title: "README"
author: "Michael Baddley"
date: "2025-11-22"
---

# Project Description
The Goal of this project is to produce a compact and usable tidy dataset for comparing wearable computing accelerometer data collected from Samsung Galaxy S smartphones tracking human activities.  The initial dataset uses the Human Activity Recognition Using Smartphones found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip contained within the folder labeled: "UCI HAR Dataset"

This dataset contains data from 30 volunteers regarding their physical activity in the following categories: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Initially, this data is available in two datasets, with one being the test data and the other being the train data. For this project, we combine these datasets into one larger dataset to increase the data with which to analyze. 

# Files Included
The Files included in this project are:

1 _ UCI HAR Dataset - This folder contains the initial source code as downloaded from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2 _ GroupWork.R - This is the actual code used to merge the downloaded train and test datasets to create the tidy_dataset.txt file. 

3 _ tidy_dataset.txt - This is the combined and simplified dataset of both the train and test data which is created as the output of the running the "R" script, "GroupWork.R".

4 _ CodeBook.md - This is the details of the steps taken during this project to explain actions and facilitate repeatable results if another user attempts to run this program.

5 _ README.md - This is the current file and explains the basics of the contents and items included in this project


# GroupWork.R steps/actions
1 _ Load "dplyr", "tidyr", and "readr" libraries (Note: if not already loaded in your computing system, you will need to first install these using: install.packages("dplyr"), install.packages("tidyr"), install.packages("readr"))
2 _ Set Working Directory
3 _ Set datapath to "UCI HAR Dataset"
4 _ Load Large data files for "activities" and "features" and set column names
5 _ Extract mean and standard deviation features to reduce unnecessary data
6 _ Load core data sets (X_train, y_train, X_test, y_test) and label columns
7 _ Combine and merge core data sets
8 _ Create final "tidy_dataset" dataset (combined, merged and cleaned)
9 _ Write "tidy_dataset" to a txt file for future use


# Replication instructions
- Download the "UCI HAR Dataset" and unzip the file
- Set working directory to same location
- install "dplyr", "tidyr", and "readr" packages if not already installed
- run "GroupWork.R" file in "R" which will automatically generate the tidy_dataset.txt in the same working directory
