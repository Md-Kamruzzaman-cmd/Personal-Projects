# Stock Market Prediction using Random Forest Classifier
## Libraries (yfinance, pandas, sklearn)

### Data Cleaning, Processing and Transforming

1. Downloaded daily stock and index prices by yahoo finance api using yfinance package.
2. Initialized ticket class for downloading price history for a single symbol.
3. "^GSPC" symbol is used which is the sp500 index.
4. Queried histirocal prices by using history method where period = max.
5. Plotted a line graph where y-axis is close column and x axis is index column to get chart of sp500 price history.
6. Removed Dividends and Stock splits columns.
7. Crated column tommorrow which value is the value of close column from next day, we did this using shift method.
8. Set our target target column based on if column tomorrow value is greater than column close value.
9. Removed all data that came before 1990.

### Machine Learning Model

1. Inititalize Random Forest Classifier and put parameters such as n_estimators which indicates number of individual decision trees we want to train, min_sample _split to avoid overfitting and random_state.
2. Put last 100 rows for testing and rest of the data for training.
3. Set open, close, high, low, volume clomuns as predictors.
4. Fitted the model.
5. Import precision_score from sklearn.metric to check accuracy.
6. Combine actual value and predicted value using concat() method and plot the data.
7. Created the predict function with tran, test, predictors and model parameters that returns combined data.
8. Created the backtest function with data, predictors, model, start and step parameters that returns combined data under this fuction test data is current year and train data is previous years.
9. Checked predictions using value_counts() and check accuracy by prediction_score.
10. Added more predictors to our model to check if it improves accuracy.
11. Updated our model with m_estimators with a higher value and lower min_sample_split.
12. In the end we get a better accuracy.
