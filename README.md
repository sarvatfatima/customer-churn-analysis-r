# Customer Churn Analysis using R

## 📌 Project Overview
Customer churn is a major challenge for subscription-based businesses.  
This project analyzes customer behavior and builds multiple machine learning models to predict churn and extract actionable business insights.

---

## 🧰 Tools & Technologies
- R
- RStudio
- ggplot2, plotly
- rpart, randomForest, class
- Data cleaning & feature engineering

---

## 📊 Dataset
- Synthetic telecom customer dataset
- Features include:
  - Gender
  - Senior citizen status
  - Tenure
  - Contract type
  - Monthly & total charges
  - Churn status

---

## 🔍 Exploratory Data Analysis (EDA)
- Bar plots for churn distribution
- Grouped bar charts by contract type
- Numeric distribution analysis
- Business insight: Month-to-month customers show higher churn

---

## 🤖 Machine Learning Models
### 1. Decision Tree
- Built using `rpart`
- Visualized for interpretability

### 2. Random Forest
- Ensemble model with 200 trees
- Improved accuracy over Decision Tree
- Feature importance analysis identified key churn drivers

### 3. K-Nearest Neighbors (KNN)
- Applied feature scaling
- Distance-based classification

### 4. K-Means Clustering
- Unsupervised customer segmentation
- Identified behavioral customer groups

### 5. Linear Regression
- Interpreted relationship between tenure, charges, and total revenue

---

## 📈 Model Evaluation
- Train-test split (70-30)
- Confusion matrix
- Accuracy comparison across models

---

## 💡 Key Business Insights
- Short-tenure customers are more likely to churn
- Higher monthly charges increase churn probability
- Long-term contracts reduce churn
- Customer segmentation can support targeted retention strategies

---

## 🚀 Conclusion
This project demonstrates an end-to-end data science workflow in R, covering data preprocessing, visualization, supervised and unsupervised learning, and business insight generation.

---

## 👩‍💻 Author
Sarvat Fatima
