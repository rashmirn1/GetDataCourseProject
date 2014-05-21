 Code Book
================================================
###  The data :
 The output file ** SubjectwiseActivityVariablewiseAVGs.csv ** contains the tidy data set as per the assignmentinstructions. 
 This data set contains the Activityvariablewise averages for the activities performed by each of the 30 subjects.
### The averaged variables included in the tidy dataset are as given below :
1 	Group.1  
2 	timeDomainBodyAccelerationSignalMeanAlongXaxis  
3 	timeDomainBodyAccelerationSignalMeanAlongYaxis  
4 	timeDomainBodyAccelerationSignalMeanAlongZaxis  
5 	timeDomainBodyAccelerationSignalStddevAlongXaxis  
6 	timeDomainBodyAccelerationSignalStddevAlongYaxis  
7 	timeDomainBodyAccelerationSignalStddevAlongZaxis  
8 	timeDomainGravityAccelerationMeanAlongXaxis  
9 	timeDomainGravityAccelerationMeanAlongYaxis  
10 	timeDomainGravityAccelerationMeanAlongZaxis  
11 	timeDomainGravityAccelerationStddevAlongXaxis  
12 	timeDomainGravityAccelerationStddevAlongYaxis  
13 	timeDomainGravityAccelerationStddevAlongZaxis  
14 	timeDomainDerivedBodyLinearAccelerationMeanAlongXaxis  
15 	timeDomainDerivedBodyLinearAccelerationMeanAlongYaxis  
16 	timeDomainDerivedBodyLinearAccelerationMeanAlongZaxis  
17 	timeDomainDerivedBodyLinearAccelerationStddevAlongXaxis  
18 	timeDomainDerivedBodyLinearAccelerationStddevAlongYaxis  
19 	timeDomainDerivedBodyLinearAccelerationStddevAlongZaxis  
20 	timeDomainBodyAngularVelocitySignalMeanAlongXaxis  
21 	timeDomainBodyAngularVelocitySignalMeanAlongYaxis  
22 	timeDomainBodyAngularVelocitySignalMeanAlongZaxis  
23 	timeDomainBodyAngularVelocitySignalStddevAlongXaxis  
24 	timeDomainBodyAngularVelocitySignalStddevAlongYaxis  
25 	timeDomainBodyAngularVelocitySignalStddevAlongZaxis  
26	timeDomainDerivedBodyAngularVelocityMeanAlongXaxis  
27	timeDomainDerivedBodyAngularVelocityMeanAlongYaxis  
28	timeDomainDerivedBodyAngularVelocityMeanAlongZaxis  
29	timeDomainDerivedBodyAngularVelocityStddevAlongXaxis  
30	timeDomainDerivedBodyAngularVelocityStddevAlongYaxis  
31	timeDomainDerivedBodyAngularVelocityStddevAlongZaxis  
32	timeDomainEuclideanBodyAccelerationMean  
33	timeDomainEuclideanBodyAccelerationStddev  
34	timeDomainEuclideanGravityAccelerationMean  
35	timeDomainEuclideanGravityAccelerationStddev  
36	timeDomainDerivedEuclideanBodyLinearAccelerationMean  
37	timeDomainDerivedEuclideanBodyLinearAccelerationStddev  
38	timeDomainEuclideanBodyAngularVelocityMean  
39	timeDomainEuclideanBodyAngularVelocityStddev  
40	timeDomainDerivedEuclideanBodyAngularVelocityMean  
41	timeDomainDerivedEuclideanBodyAngularVelocityStddev  
42	frequencyDomainBodyAccelerationSignalMeanAlongXaxis  
43	frequencyDomainBodyAccelerationSignalMeanAlongYaxis  
44	frequencyDomainBodyAccelerationSignalMeanAlongZaxis  
45	frequencyDomainBodyAccelerationSignalStddevAlongXaxis  
46	frequencyDomainBodyAccelerationSignalStddevAlongYaxis  
47	frequencyDomainBodyAccelerationSignalStddevAlongZaxis  
48	frequencyDomainDerivedBodyLinearAccelerationMeanAlongXaxis  
49	frequencyDomainDerivedBodyLinearAccelerationMeanAlongYaxis  
50	frequencyDomainDerivedBodyLinearAccelerationMeanAlongZaxis  
51	frequencyDomainDerivedBodyLinearAccelerationStddevAlongXaxis  
52	frequencyDomainDerivedBodyLinearAccelerationStddevAlongYaxis  
53	frequencyDomainDerivedBodyLinearAccelerationStddevAlongZaxis  
54	frequencyDomainBodyAngularVelocitySignalMeanAlongXaxis  
55	frequencyDomainBodyAngularVelocitySignalMeanAlongYaxis  
56	frequencyDomainBodyAngularVelocitySignalMeanAlongZaxis  
57	frequencyDomainBodyAngularVelocitySignalStddevAlongXaxis  
58	frequencyDomainBodyAngularVelocitySignalStddevAlongYaxis  
59	frequencyDomainBodyAngularVelocitySignalStddevAlongZaxis  
60	frequencyDomainEuclideanBodyAccelerationMean  
61	frequencyDomainEuclideanBodyAccelerationStddev  
62	frequencyDomainDerivedEuclideanBodyLinearAccelerationMean  
63	frequencyDomainDerivedEuclideanBodyLinearAccelerationStddev  
64	frequencyDomainEuclideanBodyAngularVelocityMean  
65	frequencyDomainEuclideanBodyAngularVelocityStddev  
66	frequencyDomainDerivedEuclideanBodyAngularVelocityMean  
67	frequencyDomainDerivedEuclideanBodyAngularVelocityStddev  
68	subject  

### The Transformations :
(*) The original variable names in the raw data were cryptic e.g. V45. Even the features list provided contained cryptic and error prone feature names.   
(*) The script rectifies the errors in the feature names in features.txt.  
(*) The script expands the provided cryptic feature names from features.txt into reader-friendly, easily understandable variable names.  
(*) The script merges the training and test data sets into one after extracting only the mean and standard deviation for each measurement.  .
(*) The script then replaces the cryptic variable names of the data set with reader-friendly, easily understandable variable names.  
(*) The script creates a second, independent tidy data set with the average of each activity variable for each subject and writes it to the file mentioned earlier.  

