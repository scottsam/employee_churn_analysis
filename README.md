# Employee Churn Analysis and Prediction with R

## Project Overview

Employee churn, or employee turnover, refers to the phenomenon of employees leaving an organization. High churn rates can indicate issues with employee satisfaction, management practices, or organizational culture. This project explores the factors that contribute to employee churn using a dataset of employee performance and demographic data. The goal is to predict whether an employee will leave the company and identify the key factors that influence their decision to stay or leave.

Using **R**, we employ various data analysis and machine learning techniques to explore the dataset, build predictive models, and provide actionable insights.

## Dataset

The dataset used in this project contains detailed information about employees' performance, demographics, and whether they have left the company or not. The columns in the dataset are as follows:

- **service_year**: Number of years the employee has been with the company.
- **comm_score**: Communication score of the employee.
- **train_score**: Training score of the employee.
- **working_score**: Performance score related to the employee's working efficiency.
- **leave**: Whether the employee has left the company ("Yes" or "No").
- **gender**: Gender of the employee.
- **age**: Age of the employee.
- **hours**: Whether the employee works full-time (FT) or part-time (PT).

### Sample of Dataset

| service_year | comm_score | train_score | working_score | leave | gender | age | hours |
|--------------|------------|-------------|---------------|-------|--------|-----|-------|
| 3.2          | 3.2        | 3.4         | 3             | No    | Male   | 32  | FT    |
| 3.8          | 3          | 3.2         | 3.8           | No    | Male   | 32  | FT    |
| 2.4          | 3.4        | 4.4         | 2.8           | No    | Female | 27  | PT    |
| ...          | ...        | ...         | ...           | ...   | ...    | ... | ...   |

This data allows us to analyze which factors (like communication score, training score, service year, etc.) influence whether employees leave or stay with the company.

## Project Objectives

The primary objectives of this project are:

1. **Data Exploration & Preprocessing**:  
   - Load and clean the data for analysis.
   - Handle missing values, categorical variables, and potential outliers.
   - Standardize or normalize features where necessary.
   
2. **Exploratory Data Analysis (EDA)**:  
   - Analyze relationships between various employee characteristics (e.g., age, service year, training scores) and churn.
   - Create visualizations to uncover patterns and trends in the data (e.g., churn rate by gender, churn rate by work hours).

3. **Predictive Modeling**:  
   - Develop machine learning models to predict employee churn.
   - Experiment with various algorithms such as Logistic Regression, Decision Trees, and Random Forest.
   - Optimize the model using techniques such as cross-validation, hyperparameter tuning, and feature selection.

4. **Model Evaluation**:  
   - Evaluate the model using common metrics like accuracy, precision, recall, F1-score, and confusion matrix.
   - Perform model diagnostics to understand model behavior and improve performance.

5. **Insights & Recommendations**:  
   - Extract insights from the data and models that can help HR and management teams understand churn patterns.
   - Provide actionable recommendations for reducing churn, such as improving training programs or addressing specific employee demographics at risk of leaving.

## Technologies Used

- **R**: The primary programming language for data analysis, manipulation, and visualization.
- **tidyverse**: A collection of R packages (ggplot2, dplyr, tidyr, etc.) for data manipulation and visualization.
- **caret**: For training machine learning models and evaluating their performance.
- **ggplot2**: For creating advanced data visualizations and plots.


## Setup and Installation

To run this project on your local machine, you'll need to have **R** installed along with several R packages. Follow the steps below to set up the environment and run the analysis:

### 1. Install R and RStudio

If you don’t already have R and RStudio installed, download and install them from the following links:

- [R](https://cran.r-project.org/)
- [RStudio](https://posit.co/download/rstudio-desktop/)

### 2. Install Required Packages

Once you have R and RStudio installed, open RStudio and install the necessary packages by running the following commands:

```r
install.packages("tidyverse")
install.packages("caret")
install.packages("ggplot2")

