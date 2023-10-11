# Loan Eligibility Prediction (Python)
## Libraries (pandas, numpy, matplotlib, seaborn)

### Data Cleaning

1. Identified columns with null values.
2. Replaced null values with mode() value for categorical values and mean() value for numerical values.

### Data Processing, Analysis and Visualization

1. Compare Loan Status column with other columns to see which columns should we use for prediction by using countplot, boxplot, histogram etc.
2. Added applicant income and coapplicant income and put new values in a new column TotalIncome.
3. Normalized TotalIncome and LoanAmount by putting taking their log values.

### Applying Machine Learning Models

1. Divided independent and dependent columns
2. Splitted dataset into two, 80% for training and 20% for testing.
3. Replaced categorigal values with numerical values.
4. Using Decision Tree Classifier, we got 72% correct prediction which is not upto standard.
5. Using Naive Bayes Classifier, we got 82% correct prediction.
6. Cleaned test dataset, normalized columns and made prediction.

### Final Output

Naive Bayes Classifier fits better better for this problem with 82% prediction accuracy.
