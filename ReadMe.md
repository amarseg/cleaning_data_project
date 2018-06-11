The aim of this code is to clean the data provided in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data contains position information collected by a smartphone of different subjects carrying out different 
activities. The raw positioning data was summarised using different statistics, such as standard deviation, mean or kurtosis. The summarised data was divided into two datasets, one for training and one for testing. 

The script 'run_analysis.R' aggregates the mean and standard deviation data for test and training subjets into 
one table, to then provide as an output a table with averages for all measurements for each subject in each activity. 
The script also adds to the position data information about the subject and the activity being carried out. 
