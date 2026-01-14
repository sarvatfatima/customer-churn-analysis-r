#BUILD LINEAR REGRESSION MODEL
lm_model <- lm(
  total_charges ~ tenure_months + monthly_charges,
  data = churn_clean
)
#VIEW MODEL SUMMARY 
summary(lm_model)
#VISUALIZE REGRESSION LINES 
ggplot(churn_clean, aes(x = tenure_months, y = total_charges)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", color = "blue") +
  labs(title = "Linear Relationship between Tenure and Total Charges",
       x = "Tenure (Months)",
       y = "Total Charges")
