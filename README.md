# README

This repository contains the following files:
* Run_analysis.R - this is an R script to produce a "clean" data set as described below
* CodeBook.md - this is a markdown file containing background information on the data used in the R-script and the "clean" data file produced by the R-script
* CleanActivityData.txt - the "clean" data file produced by the script
* README.md - this file

### Objective of the project
The objective of the project is to process a raw data set of activity measurements from a Samsung Galaxy S II smartphone worn at the waist of a number of subjects. More information can be found in the CodeBook in this repository or under http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .<br>
The raw data can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip as a zip archive. This archive contains the data split up into a training and a test set.<br>

#### Data processing (done in Run_analysis.R)
Data processing includes the following steps:
* Merging the training and test data set
* Extracting only those variables/features that contain _mean() or _std() in their name
* Converting the variable/feature names into a more readable form
* Including subject id and the name of the activity to each row
* Calculating the mean for each subject and activity for the variables/features

### Usage of Run_analysis.R
Data processing is done using the single script Run_analysis.R. The script assumes that the above mentioned .zip archive is located in the R working directory. Running source(Run_analysis.R) will produce the file CleanActivityData.txt in the working directory.
<br>The script was tested under R 3.0.2 and has no other dependencies.