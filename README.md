GetDataCourseProject
====================

Programming Assignment for the 'Data Science' course 'Getting and Cleaning Data'

## Run Script : 
**run_analysis.R**
## Output file : 
**SubjectwiseActivityVariablewiseAVGs.csv**
## Input : 
Files contained in the Samsung HAR data set

## Transformation Logic included in the script

1. Load the data files into R tables.

2. Extracts the entries(feature no.s and feature names) from features table corresponding to the mean and standard deviation for each measurement and create two vectors containing the reqquisite feature numbers and feature names 

3. Rectifies the errors in the feature names in features table.
4. Expand the cryptic feature names from features table into reader-friendly, easily understandable variable names.
5. Merges the training and test data sets into one after extracting only variables for the mean and standard deviation for each measurement..
6. Replace the cryptic variable names of the data set with reader-friendly, easily understandable variable names.
7. Match each subject to the corresponding activity.
8. Finally create a second, independent tidy data set with the average of each activity variable for each subject and activity. 
9. Write the tidy dataset to the output file mentioned above/

