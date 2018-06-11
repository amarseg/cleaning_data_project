##########test######
rm(list = ls())
library('tidyverse')
setwd('C:/Users/liama/Documents/data_science/cleaning_data/project/Dataset/UCI HAR Dataset/')
#####features = colnames####
features <- read.table('features.txt')

###activity names equivalence###
activity_labels <- read.table('activity_labels.txt')

test_x <- read.table('test/X_test.txt') ###data perse####
colnames(test_x) <- features[,2]
test_y <- read.table('test/Y_test.txt') ###activity labels###

test_y_trans <- left_join(test_y, activity_labels, "V1")

test_x$activity <- test_y_trans[,2]

test_subject <- read.table('test/subject_test.txt')
test_x$subject <- test_subject[,1]
###do the same with training data
training_x <- read.table('train/X_train.txt')
colnames(training_x ) <-features[,2]
training_y <- read.table('train/y_train.txt') ###activity labels###
training_y_trans <- left_join(training_y, activity_labels,'V1')
training_x$activity <- training_y_trans[,2]

train_subject <- read.table('train/subject_train.txt')
training_x$subject <- train_subject[,1]  
######collate two datasets#####
all_data <- rbind(test_x, training_x)

######select only average and sd data, according to the documentation those
######will have mean() or std() in the name of the feature
only_int <- all_data[,grep(colnames(all_data), pattern = "mean\\(\\)|std\\(\\)|subject|activity")]

###separate according to subject and activity, calculate mean####
only_int %>% group_by(subject,activity) %>% summarise_all(mean) -> final_data

int_feat <- colnames(only_int)
###get variable names to be more explanatory####
int_feat <- gsub(int_feat,pattern = '-',replacement = '_', fixed = T)
int_feat <- gsub(int_feat,pattern = '()',replacement = '', fixed = T)

colnames(final_data) <- int_feat
write.table('data_for_submission.txt', x = final_data)
