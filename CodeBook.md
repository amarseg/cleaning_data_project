
The output dataset contains transformed data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphone
The data contains several metrics from the data collected from the smarphone, such as the mean, standard deviation,
skewness, kurtosis, etc. 

The raw data was divided into two groups, training and test. Data for both groups was merged into one complete dataset.
From here, only features that contain the mean or the standard deviation were selected. 

The variable 'subject' contains a number that represents the different subjecs whose measurements were recorded.
On the other hand, 'activity' contains the activity that the subjects were performing when the measurements were taken.
It can take only six values:WALKING
, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING
,LAYING
.

Keeping these variables as columns allows for an easy separation for further processing of the data using the R
package dplyr

The rest of the variable names represent different features from the raw data, together with information about the axis
that they respresent (X,Y and Z). The cleaned dataset comes from the mean and standard deviation of the original data. 
That information is also included in the name of the different variables as follows:
feature_mean_axis or feature_std_axis. 

