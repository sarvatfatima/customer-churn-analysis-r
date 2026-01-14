#Select features for KNN
knn_data <- churn_clean[, c("tenure_months", "monthly_charges", "total_charges")]
#SCALE THE NUMERIC DATA 
knn_scaled <- scale(knn_data)
#SPLIT THE SCALED DATA INTO TRAIN AND TEST 
knn_train <- knn_scaled[split == TRUE,]
knn_test <- knn_scaled[split == FALSE,]
#STORE THE TARGET LABEL
knn_train_labels <- churn_clean$churn[split == TRUE]
knn_test_labels <- churn_clean$churn[split == FALSE]
#LOAD KNN LIBRARY 
library(class)
#BUILD A KNN MODEL(k=5)
knn_predictions <- knn(
  train = knn_train,
  test = knn_test,
  cl = knn_train_labels,
  k = 5
)
#CONFUSION MATRIX 
table(Predicted = knn_predictions, Actual = knn_test_labels)
#CALCULATE ACCURACY 
knn_accuracy <- sum(knn_predictions == knn_test_labels) / length(knn_test_labels)
knn_accuracy
