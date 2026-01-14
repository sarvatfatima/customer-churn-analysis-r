#CHECK THE CHURN DISTRIBUTION
table(churn_clean$churn)
#CALCULATE THE CHURN PERCENTAGE 
prop.table(table(churn_clean$churn)) * 100
#EXPLORE THE NUMERIC COLUMNS (SUMMARY STATISTICS)
summary(churn_clean$tenure_months)
summary(churn_clean$monthly_charges)
summary(churn_clean$total_charges)
#GROUP-WISE CHURN INSIGHTS
table(churn_clean$contract_type,churn_clean$churn)
#VISUALIZE YOUR CHURN DISTRIBUTION
ggplot(churn_clean, aes(x=churn))+
  geom_bar(fill="steelblue") +
  labs(title = "Customer Churn Count", x="Churn Status",y="Number of Customers")
#GROUPED BAR PLOT - CHURN BY CONTRACT TYPE
ggplot(churn_clean, aes(x = contract_type, fill = churn)) +
  geom_bar(position = "dodge") +
  labs(title = "Churn by Contract Type", x = "Contract Type", y = "Number of Customers") +
  scale_fill_manual(values = c("Yes" = "red", "No" = "green"))
#HISTOGRAM FOR NUMERIC COLUMNS 
#histogram tenure in months 
ggplot(churn_clean, aes(x = tenure_months)) +
  geom_histogram(
    aes(y = ..density..),
    bins = 20,
    fill = "skyblue",
    color = "black",
    alpha = 0.7
  ) +
  geom_density(color = "red", size = 1) +
  labs(
    title = "Customer Tenure Distribution with Density Curve",
    x = "Tenure (Months)",
    y = "Density"
  )
