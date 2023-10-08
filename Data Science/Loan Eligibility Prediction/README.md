### Loan Eligibility Prediction
1. Replaced null values with mode() value for categorical values and mean() value for numerical values.
2. Compare Loan Status column with other columns to see which columns should we use for prediction.
3. Added applicant income and coapplicant income and put new values in a new column TotalIncome.
4. Normalized TotalIncome and LoanAmount by putting taking their log values.
5. Removed nonimportant columns.
6. Divided independent and dependent columns
7. Splitted dataset into two, 80% for training and 20% for testing.
8. Replaced categorigal values with numerical values.
9. Using Decision Tree Classifier, we got 72% correct prediction which is not upto standard.
10. Using Naive Bayes Classifier, we got 82% correct prediction.
11. Cleaned test dataset, normalized columns and made prediction.
