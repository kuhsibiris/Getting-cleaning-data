# The objetive of this code is to fullfill these 5 requirements
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


library(dplyr)
library(stringr)

#start with an emply enviroment

rm(list=ls())

#Read the relevant info for the train set
train_subject<-read.table("~/Downloads/UCI HAR Dataset/train/subject_train.txt")
train_X<-read.table("~/Downloads/UCI HAR Dataset/train/X_train.txt")
train_Y<-read.table("~/Downloads/UCI HAR Dataset/train/y_train.txt")


#Read the relevant info for the test set
test_subject<-read.table("~/Downloads/UCI HAR Dataset/test/subject_test.txt")
test_X<-read.table("~/Downloads/UCI HAR Dataset/test/X_test.txt")
test_Y<-read.table("~/Downloads/UCI HAR Dataset/test/y_test.txt")



#Read features and activity levels
features<-read.table("~/Downloads/UCI HAR Dataset/features.txt")
activity_labels<-read.table("~/Downloads/UCI HAR Dataset/activity_labels.txt")


#Rename colnames this fulfills requirement 4. 
colnames(train_X)<-features$V2
colnames(test_X)<-features$V2

#This will filter column names with mean or std in them thus fulfilling 2.
cond1<-colnames(train_X) %>% str_detect("mean")
cond2<-colnames(test_X) %>% str_detect("std")
train_X<-train_X[,cond1|cond2]
test_X<-test_X[,cond1|cond2]


#this gives name to columns without mames and keeps track where the data came from
#thus keeping the data tidy
colnames(train_subject)<-colnames(test_subject)<-"subject"
colnames(test_Y)<-colnames(train_Y)<-"response"
train_X$set<-"train"
test_X$set<-"test"

#this will join the data together thus fulfilling 1-
total_train<-cbind(train_subject,train_X,train_Y)
total_test<-cbind(test_subject,test_X,test_Y)
total_Base<-rbind(total_test,total_train)


#this will add activity names, thus fulfilling 3.
total_Base<-left_join(total_Base,activity_labels,by=c("response"="V1"))
colnames(total_Base)[colnames(total_Base)=="V2"]<-"activity_name"

# Save base
write.table(total_Base,"~/Downloads/total_Base.txt")

#this will create the table that summarises mean given activity and subject thus fulfilling 5.
activity_mean_subject<-total_Base %>% group_by(activity_name,subject) %>%summarise_all(mean)
activity_mean_subject[,c("set","response")]<-NULL

#save summary
write.table(activity_mean_subject,"~/Downloads/activity_mean_subject.txt",row.names = FALSE)

