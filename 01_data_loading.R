# ================================
#PROJECT: CUSTOMER CHURN ANALYSIS in R 
#SCRIPT : 01_data_loading.R
#PURPOSE: Load required libraries and data 
# ================================
#Load required libraries 
library(readr)
library(dplyr)
library(ggplot2)
churn_data <- read.csv('customer_churn.csv')
head(churn_data)
str(churn_data)
names(churn_data)
summary(churn_data)
churn_clean <- churn_data
colSums(is.na(churn_clean))
sum(duplicated(churn_clean))