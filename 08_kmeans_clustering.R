#SELECT NUMERIC FEATUES FOR CLUSTERING
cluster_data <- churn_clean[, c("tenure_months", "monthly_charges", "total_charges")]
#SCALE THE DATA
cluster_scaled <- scale(cluster_data)
#DECIDE THE NUMBER OF METHODS(ELBOW METHOD)
wss <- numeric(10)

for (i in 1:10) {
  wss[i] <- sum(kmeans(cluster_scaled, centers = i, nstart = 10)$withinss)
}

plot(1:10, wss, type = "b",
     xlab = "Number of Clusters",
     ylab = "Within-Cluster Sum of Squares",
     main = "Elbow Method for Optimal Clusters")
#APPLY K-MEANS WITH k=3
set.seed(123)

kmeans_model <- kmeans(cluster_scaled, centers = 3, nstart = 25)
#ATTACH CLUSTER LABELS TO THE DATASET
churn_clean$cluster <- as.factor(kmeans_model$cluster)
#VISUALIZE CLUSTERS
library(ggplot2)

ggplot(churn_clean, aes(x = tenure_months, y = monthly_charges, color = cluster)) +
  geom_point(alpha = 0.7) +
  labs(title = "Customer Segmentation using K-Means",
       x = "Tenure (Months)",
       y = "Monthly Charges")
