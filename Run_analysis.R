# Assumes that data have been downloaded from
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# and that the zipped file is in the working directory


unzip("getdata-projectfiles-UCI HAR Dataset.zip")

# directory structure in the zip archive
dir <- ".\\UCI HAR Dataset\\"
dirtest <- paste(dir, "test\\", sep ="")
dirtrain <- paste(dir, "train\\", sep ="")

## load the file with all feature names (columns in the data file)
featurefile <- paste(dir, "features.txt", sep="")
feat <- read.table(featurefile,sep=" ")

## get a logical vecotor that is true for the features with mean or standarddeviations
mean_std_feat <- grepl("-mean()", feat[[2]], fixed=TRUE) | grepl("-std()", feat[[2]], fixed=TRUE) 
# names of the features of interest
feat_names <- as.character(feat[mean_std_feat,2])
# remove characters that would need to be escaped in R
feat_names <- gsub("[)(]", "", feat_names)
feat_names <- gsub("-", "_", feat_names)
feat_names <- sub("^t", "time", feat_names)
feat_names <- sub("^f", "freq", feat_names)

## load the file with the training data
trainfile <- paste(dirtrain, "X_train.txt", sep="")
train <- read.table(trainfile)

## load the file with the test data
testfile <- paste(dirtest, "X_test.txt", sep="")
test <- read.table(testfile)

###### Step 1 #########
# concatenate the sets 
all <- rbind(train, test)

###### Step 2 #########
# and extract only the columns for the features of interest
all <- all[, mean_std_feat]

###### Step 4 ######### (done before step 3)
# add the human readable feature names to the data frame
names(all) <- feat_names

###### Step 3 #########
# get the activity vectors
actFileTrain <- paste(dirtrain, "y_train.txt", sep="" )
actFileTest  <- paste(dirtest, "y_test.txt", sep="" )

actTrain <- read.table(actFileTrain)
actTest <- read.table(actFileTest)

actAll <- rbind(actTrain, actTest)

names(actAll) <- c("actID")

# get subject ids

subFileTrain <- paste(dirtrain, "subject_train.txt", sep="" )
subFileTest  <- paste(dirtest, "subject_test.txt", sep="" )

subTrain <- read.table(subFileTrain)
subTest <- read.table(subFileTest)

subAll <- rbind(subTrain, subTest)

names(subAll) <- c("Subject")

# join these variables to the data frame
all <- cbind(all, subAll, actAll)

# get activity names
actLabFile <- paste(dir, "activity_labels.txt", sep="")
actLab <- read.table(actLabFile)
names(actLab) <- c("id", "Activity")

# merge with actAll on actID
all <- merge(all, actLab, by.x="actID", by.y="id", all=TRUE)
# first column not needed anymore (is the id on that was merged)
all[,1] <- NULL

########## now produce the clean dataset by calculating the 
########## requested means for each subject per activity

# get all numeric data into one data frame and split it by activity and subject
X <- all[,1:length(feat_names)]
Xsplit <- split(X, list(all$Activity, all$Subject))

# get the matrix for the colmeans using sapply
AllMeans <- sapply(Xsplit, colMeans)
# which neads to be transposed
AllMeans <- t(AllMeans)

# get the rownames and split them back into columns for Subject and Activity
rownames <- dimnames(AllMeans)[[1]]
rownames <- strsplit(rownames, ".", fixed=TRUE)
rowdf <- data.frame(matrix(unlist(rownames), nrow=length(rownames), byrow=T))
names(rowdf) <- c("Activity", "Subject")

# create a clean data set from the matrix and the data frame containing subject ids and activity labels
CleanDF <- data.frame(AllMeans, rowdf)

write.table(CleanDF, file="CleanActivityData.txt", quote=FALSE, sep="\t", row.names=FALSE)
