X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
X <- rbind(X_test, X_train)
features <- read.table("UCI HAR Dataset/features.txt")
colnames(X) <- features[,2]
colsToKeep <- c(seq(1,6), seq(41,46), seq(81,86), seq(121, 126), 
                seq(121,126), 201, 202, 214, 215, 227, 228, 240, 241,
                253, 254, seq(266,271), seq(294,296), seq(345,350),
                seq(373,375), seq(424,429), seq(452,454), 503, 504,
                516, 517, 526, 529, 530, 539, 542, 543, 552)
meansStds <- X[, colsToKeep]
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
Y <- rbind(Y_test, Y_train)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject <- rbind(subject_test, subject_train)
merged <- cbind(subject, Y, meansStds)
colnames(merged)[1] <- 'Subject'
colnames(merged)[2] <- 'Activity'
tidy <- aggregate(merged[,3:80], by = list(merged$Subject, merged$Activity), mean )
colnames(tidy)[1] = 'Subject'
colnames(tidy)[2] = 'Activity'
