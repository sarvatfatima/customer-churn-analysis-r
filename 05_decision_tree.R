library(rpart)
library(rpart.plot)

#BUILD THE TREE 
dt_model <- rpart(churn ~ gender + senior_citizen + tenure_months + contract_type + monthly_charges + total_charges,
                  data = train_data,
                  method = "class")
#VISUALIZE THE TREE
rpart.plot(dt_model,type = 3, extra = 104,fallen.leaves = TRUE)
#MAKE PREDICTIONS ON TEST DATA 
dt_predictions <- predict(dt_model,test_data,type = "class")
#CREATE A CONFUSION MATRIX 
table(Predicted = dt_predictions, Actual = test_data$churn)
#CALCULATE THE ACCURACY
accuracy <- sum(dt_predictions== test_data$churn) / nrow(test_data)
accuracy