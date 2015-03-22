# Coursera---Getting-and-Cleaning-Data-Project
run_analysis.R is pretty straightforward.  Here's how it works:

1. Reads in X (the feature dataframe) for both the training and testing data.
2. Uses rbind to comine the testing and training data.
3. Reads in the list of features to use as column labels.
4. I manually found all the columns whose names include "mean" or "std" and created a vector with just these indices.
5. Then I select so now I have only the mean and std vector.
6. For both Y (activity) and subject, I again read in the data and rbind to combine the testing and training data.
7. Finally I cbind X, Y and subject.
8. Finally, I use the aggregate command takes care of the averaging over diffrent runs with the same subject and activity.  

Since I used the feature labels from features.txt, I've included features.txt and features_info.txt for more information about the variables.  