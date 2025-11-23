library(dplyr)
library(tidyr)
library(readr)

##setWD done manually in session tab

data_path <- "UCI HAR Dataset"
list.files(data_path)

#Load Metadata Files
## Load Activities
activity_labels <- read.table(file.path("UCI HAR Dataset/activity_labels.txt"), 
                              col.names = c("activity_id", "activity"))

##Load Features
features <- read.table(file.path("UCI HAR Dataset/features.txt"), 
                       col.names = c("index", "feature_name"))


# Extract Mean and Standard Deviation Features
mean_std_features <- grep("-(mean|std)\\(\\)", features$feature_name)
selected_features <- features$feature_name[mean_std_features]

# Load and Process Training Data
##X_train
X_train <- read.table(file.path(data_path, "train", "X_train.txt"))[, mean_std_features]
colnames(X_train) <- selected_features

##Y_train
y_train <- read.table(file.path("UCI HAR Dataset/train/y_train.txt"), 
                      col.names = "activity_id")

## LOADING subject_train.txt (Subject IDs)
subject_train <- read.table(file.path("UCI HAR Dataset/train/subject_train.txt"), 
                            col.names = "subject")

# Load and Process Test Data
##X_test
X_test <- read.table(file.path(data_path, "test", "X_test.txt"))[, mean_std_features]
colnames(X_test) <- selected_features

##Y_test
y_test <- read.table(file.path("UCI HAR Dataset/test/y_test.txt"), 
                      col.names = "activity_id")

##Subject_test
subject_test <- read.table(file.path("UCI HAR Dataset/test/subject_test.txt"), 
                           col.names = "subject")

# Combine Training and Test Datasets
##Train
data_train <- cbind(subject_train, y_train, X_train)

##test
data_test <- cbind(subject_test, y_test, X_test)

##Combined
data_combined <- rbind(data_train, data_test)


# Add Descriptive Activity Names
## merge
data_combined <- merge(data_combined, activity_labels, by = "activity_id", all.x = TRUE)

## remove non-descriptive name
data_combined$activity_id <- NULL


# Create Tidy Dataset with Averages
tidy_data <- data_combined %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean))


# Save the Tidy Dataset
write.table(tidy_data, "tidy_dataset.txt", row.name = FALSE)


