# Car Price Prediction using Linear and Lasso Regression
## Libraries (pandas, numpy, seaborn, matplotlib, sklearn)

### Data Cleaning

1. Replaced '?' with nan.
2. Rplaced null values with as it requred (i.e average, maximum frequency etc).
3. Drop unnecessary rows.

### Data Processing

1. Converted given units to standard units.
2. Normalized columns for better analysis.
3. Replaced continues value by categorical value by binning.

### Data Analysis and Visualization

1. Analyzed correlation between target column and other useful columns using regplot, boxplot.
2. Identified most affected columns by using pearson correlation.

### Machine Learning Model

1. Splitted independent and dependent columns.
2. Replaced continuous value with categorical value.
3. Splitted training and test data.
4. Applied Linear Regression and Lasso Regression models on train data and test data, showed the results with scatterplot.
5. Found data prediction accuracy using R square error.

### Final Output

1. Linear Regression gave 83% accuracy and 79% accuracy on train and test data respectively.
2. Linear Regression gave 83% accuracy and 78% accuracy on train and test data respectively.
3. Both Linear and Lasso Regression models fitted properly.
