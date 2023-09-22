## Loading Datasets ----
### STEP 1: Download sample datasets ----
require("readr")
library(readr)
### STEP 2. Load the downloaded sample datasets ----
# Load the datasets
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset <- read_csv("data/20230412-20230719-BI1-BBIT4-1-StudentPerformanceDataset.csv")
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

dim(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset, class)

# Descriptive Statistics ----

### STEP 3. Measures of Frequency ----

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_class_group_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group)))
]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_class_group_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_alcohol_or_narcotics_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics)))
]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_alcohol_or_narcotics_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_financial_wellness_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness)))
]

print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_financial_wellness_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_romantic_relationships_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships)))
]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_romantic_relationships_mode)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender)))
]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode)

### STEP 4. Measure the distribution of the data for each variable ----
summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

### STEP 5. Measure the standard deviation of each variable ----
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], sd)

### STEP 6. Measure the variance of each variable ----
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], var)


### STEP 7. Measure the kurtosis of each variable ----
if (!is.element("e1071", installed.packages()[, 1])) {
  install.packages("e1071", dependencies = TRUE)
}
require("e1071")
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)],kurtosis, type=2)

### STEP 8. Measure the skewness of each variable ----
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)],skewness, type=2)

### STEP 9. Measure the covariance between variables ----
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov <- cov(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov)

### STEP 10. Measure the correlation between variables ----
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor <- cor(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor)
