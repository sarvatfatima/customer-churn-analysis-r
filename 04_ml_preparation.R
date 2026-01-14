#CONVERT THE CATEGORICAL COLUMNS TO FACTORS 
churn_clean$gender <- as.factor(churn_clean$gender)
churn_clean$contract_type <- as.factor(churn_clean$contract_type)
churn_clean$churn <- as.factor(churn_clean$churn)

library(caTools)
set.seed(123) #ensures reproductibility
#70% TRAINING, 30% TESTING
split <- sample.split(churn_clean$churn, SplitRatio = 0.7)
train_data <- subset(churn_clean, split==TRUE)
test_data <- subset(churn_clean , split == FALSE)
