library(randomForest)
#BUILD THE RANDOM FOREST MODEL
set.seed(123)

rf_model <- randomForest(
  churn ~ gender + senior_citizen + tenure_months + contract_type + monthly_charges + total_charges,
  data = train_data,
  ntree = 200,
  importance = TRUE
)
rf_model
#MAKE PREDICTIONS
rf_predictions <- predict(rf_model,test_data)
#CONFUSION MATRIX
table(Predicted = rf_predictions, Actual = test_data$churn)
#CALCULATE ACCURACY 
rf_accuracy <- sum(rf_predictions == test_data$churn) / nrow(test_data)
rf_accuracy
#VIEW FEATURE IMPORTANT VALUES 
importance(rf_model)
#PLOT FEATURE IMPORTANCE 
varImpPlot(rf_model)