# Bike-Sales-Analysis
Excel project to visualize customer behavior to increase use of bikes.

Data Cleaning :

1. Removed duplicates
2. Replaced M with Married and S with Single in marital status column and replaced M with Male and F with Female in gernder column.
3. Changed income column category to currency

Data Processing :

1. Added a new column named age group and consider students more than 50 years old as old, less than 30 years old as young age and middle age
the others. determined this by using Age column with IF statement.

Data Analysis : 

1. Created pivot table and put gernder column in row and income in value and change it to avegare. Then added Purchased Bike column in
columns field. Created a bar chart so we can see purchaed bike based on average income. It is clear that poeple who make more money
tends to buy bike. Created a bar chart for visualization.
2. Created another pivot table, put purchased bike column in column and value, add commute distance in mile. we see that people
covering short distances tends to buy bikes. Created a line chart for visualization.
3. Created another pivot table and put age group in rows field, purchased bike column in columns and values and see middle aged people buy
more bikes. Created a line chart for visualization.

Added 3 slicers based on marital status, Region and Education. We make connections to all the pivot table, so we 
can interact all the visualizations based on marital status, education and region.
