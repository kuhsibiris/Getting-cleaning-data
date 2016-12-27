library(dplyr)
library(stringr)

#start with an emply enviroment

rm(list=ls())


train_subject<-read.table("~/Downloads/UCI HAR Dataset/train/subject_train.txt")
train_X<-read.table("~/Downloads/UCI HAR Dataset/train/X_train.txt")
train_Y<-read.table("~/Downloads/UCI HAR Dataset/train/y_train.txt")

test_subject<-read.table("~/Downloads/UCI HAR Dataset/test/subject_test.txt")
test_X<-read.table("~/Downloads/UCI HAR Dataset/test/X_test.txt")
test_Y<-read.table("~/Downloads/UCI HAR Dataset/test/y_test.txt")

features<-read.table("~/Downloads/UCI HAR Dataset/features.txt")

activity_labels<-read.table("~/Downloads/UCI HAR Dataset/activity_labels.txt")

colnames(train_X)<-features$V2
colnames(test_X)<-features$V2

cond1<-colnames(train_X) %>% str_detect("mean")
cond2<-colnames(test_X) %>% str_detect("std")

train_X<-train_X[,cond1|cond2]
test_X<-test_X[,cond1|cond2]

colnames(train_subject)<-colnames(test_subject)<-"subject"
colnames(test_Y)<-colnames(train_Y)<-"response"

train_X$set<-"train"
test_X$set<-"test"

total_train<-cbind(train_subject,train_X,train_Y)
total_test<-cbind(test_subject,test_X,test_Y)

total_Base<-rbind(total_test,total_train)


total_Base<-left_join(total_Base,activity_labels,by=c("response"="V1"))

colnames(total_Base)[colnames(total_Base)=="V2"]<-"activity_name"

activity_mean_subject<-total_Base %>% group_by(activity_name,subject) %>%summarise_all(mean)

activity_mean_subject[,c("set","response")]<-NULL



