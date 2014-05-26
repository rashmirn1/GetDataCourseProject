library(plyr)
## load the feature and activity labels/descriptions
features <- read.table("features.txt") # 561 rows
actlab <- read.table("activity_labels.txt") # 6 rows

## load the data files
## the number of observations in the training dataset = 7352.
## the number of observations in the test dataset = 2947.
## the number of elements/features in the training/test dataset = 561.
Xtrain <- read.table("X_train.txt")
ytrain <- read.table("y_train.txt")
Xtest <- read.table("X_test.txt")
ytest <- read.table("y_test.txt")

## Each row in below tablesidentifies the subject (1 to 30), 
## who performed the activity for each window sample.
subtrain <- read.table("subject_train.txt") #
subtest <- read.table("subject_test.txt")   # 

## Each row in below tables shows a 128 element vector (window readings),
## indicating the total/body acceleration and body angular velocity.
totalaccxtrain <- read.table("total_acc_x_train.txt")
totalaccytrain <- read.table("total_acc_y_train.txt")
totalaccztrain <- read.table("total_acc_z_train.txt")
totalaccxtest <- read.table("total_acc_x_test.txt")
totalaccytest <- read.table("total_acc_y_test.txt")
totalaccztest <- read.table("total_acc_z_test.txt")

bodyaccxtrain <- read.table("body_acc_x_train.txt")
bodyaccytrain <- read.table("body_acc_y_train.txt")
bodyaccztrain <- read.table("body_acc_z_train.txt")
bodyaccxtest <- read.table("body_acc_x_test.txt")
bodyaccytest <- read.table("body_acc_y_test.txt")
bodyaccztest <- read.table("body_acc_z_test.txt")

bodygyroxtrain <- read.table("body_gyro_x_train.txt")
bodygyroytrain <- read.table("body_gyro_y_train.txt")
bodygyroztrain <- read.table("body_gyro_z_train.txt")
bodygyroxtest <- read.table("body_gyro_x_test.txt")
bodygyroytest <- read.table("body_gyro_y_test.txt")
bodygyroztest <- read.table("body_gyro_z_test.txt")

## Extract mean/sd feature no.s = 1-6, 41-46, 81-86, 121-126,161-166,
## 201-202, 214-215, 227-228, 240-241, 253-254, 266-271, 345-350,
## 424-429, 503-504, 516-517, 529-530, 542-543.
meansdfnum <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,
  240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)
meansdfnam <- features[meansdfnum,2]
avgxnam <- meansdfnam
avgxnam <- sub("^t", "timeDomain",as.character(avgxnam))
avgxnam <- sub("^f", "frequencyDomain",as.character(avgxnam))
avgxnam <- sub("BodyBody", "Body",as.character(avgxnam))   ## fixes a bug in original variable naming
avgxnam <- sub("BodyAcc-", "BodyAccelerationSignal",as.character(avgxnam))
avgxnam <- sub("BodyGyro-", "BodyAngularVelocitySignal",as.character(avgxnam))
avgxnam <- sub("-X", "AlongXaxis",as.character(avgxnam))
avgxnam <- sub("-Y", "AlongYaxis",as.character(avgxnam))
avgxnam <- sub("-Z", "AlongZaxis",as.character(avgxnam))
avgxnam <- sub("GravityAcc-", "GravityAcceleration",as.character(avgxnam))
avgxnam <- sub("BodyAccJerk-", "DerivedBodyLinearAcceleration",as.character(avgxnam))
avgxnam <- sub("BodyGyroJerk-", "DerivedBodyAngularVelocity",as.character(avgxnam))
avgxnam <- sub("BodyAccMag-", "EuclideanBodyAcceleration",as.character(avgxnam))
avgxnam <- sub("GravityAccMag-", "EuclideanGravityAcceleration",as.character(avgxnam))
avgxnam <- sub("BodyAccJerkMag-", "DerivedEuclideanBodyLinearAcceleration",as.character(avgxnam))
avgxnam <- sub("BodyGyroMag-", "EuclideanBodyAngularVelocity",as.character(avgxnam))
avgxnam <- sub("BodyGyroJerkMag-", "DerivedEuclideanBodyAngularVelocity",as.character(avgxnam))
avgxnam <- sub("mean\\()", "Mean",as.character(avgxnam))
avgxnam <- sub("std\\()", "Stddev",as.character(avgxnam))

Xtrainmsd <- Xtrain[,meansdfnum]
Xtestmsd <- Xtest[,meansdfnum]
Xmeansd <- rbind(Xtrainmsd,Xtestmsd)
names(Xmeansd) <- avgxnam
y <- rbind(ytrain,ytest)
sub <- rbind(subtrain,subtest)
Xsub <- cbind(Xmeansd,sub)
names(Xsub) <- c(names(Xmeansd),"subject")
ylab <- join(y,actlab)
Xsubylab <- cbind(Xsub,as.character(ylab$V2))
names(Xsubylab) <- c(names(Xsub),"activity")
Xaggr <- aggregate(x = Xmeansd, by = list(Xsubylab$subject,Xsubylab$activity), FUN = "mean")
nameaggr <- names(Xaggr)
nameaggr[1] <- "subject"
nameaggr[2] <- "activity"
Xsubaggr <- Xaggr
names(Xsubaggr) <- nameaggr
write.csv(Xsubaggr,"SubjectwiseActivityVariablewiseAVGs.csv")
