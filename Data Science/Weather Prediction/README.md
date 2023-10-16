# Weather Prediction for Oakland Airpot by using Ridge Model
## Libraries (pandas, matplotlib, sklearn)

### Data Cleaning and Processing

1. Check for null value by using .null() method and show percentage by dividing by no. of rows of the dataframe.
2. Drop unnecessary column by .dropna() function.
3. Filled null values by .fillna() function.
4. Changed index to datetime format.
5. Created a target column and its value from max temp by using .shift() fuctiom.
### Applying Machine Learning Model

1. Created train and test datasets.
2. Created predictors list filled with predictor columns.
3. Fiited train data into the model.
4. Calculated mean square error.
5. Created a dataframe that show actual and predicted output.
6. Showed difference between actual and prediction value and visualized using scatterplot.
