# Store-Data-Analysis
Excel project to know how to grow sales.

Problem : How to grow sales.

Questions solved :

1. compare sales and orders
2. which month got the highest sales and orders
3. who purchased more-men or women in 2022
4. what are different order status in 2022
5. top 5 states contributing to the sales
6. relation between age and gender based on number of orders
7. which company is contributing to maximum sales
8. highest selling category etc

Data Cleaning : 

1. In gender column the values inconsistent. Change M to Men and W to Women to make it consistent.
2. Quantity column is in consistent as well. Made it consistent.

Data Processing :

1. Created a new column named Age Group and categorize age in 3 groups. Did this by using Age column inside IF statement.
2. Added a new column named Month and extract month names in text from date column.

Data Analysis :

1. Created a pivot table to make comparison between sales and orders. Added month column in rows, order ID and
Amount in values. Added a combo chart to visualize the  comparison between sales and order on monthly basis.
We could see that March month had the highest sales.
2. Added another pivot table to know which gender purchased the most. Added gernder column in rows and amount in values.
Added a pie chart to visualize and saw that women had more purchase rate with 64%.
3. Our next pivot table is to know the rate of order status. Put status column in row and order ID in values. 
Used pie chart to visualize that.
4. Created one more pivot table to know top five states contributing to the sales. Put ship-state in rows
and amount in values. Sorted in decending order. We filtered top 10 sates. Created a bar chart to visualize.
5. Our next pivot able is to know relation age and gender based on number of orders. Put age group and gender
in rows and order ID in values. we visualize it with a bar chart.
6. We wanted to know which company contributes the most in sales. Visualized it with pie chart.
7. At last, we wanted to know highest selling category and create a pivot table and put cateogry in rows and put order ID
in values. Visualized it with a pie chart.

Finally, added three slicers, Month, Company and Category and make connections among all the pivot tables
so we can interact with them and extract data that we need.

Sample Insights :

1. Womena are more likely to buy compared to men (~65%).
2. Maharashtra, Karnataka and Uttar Pradesh are the top 3 states (~35%).
3. Middle age group (30-49) is max contributing (~50%).
4. Amazon, Flipkart and Myntra companies are max contributing (~80%).

Final Conclusion to improve Sales :

Target women customers of age group (30-49) living in Maharashtra, Karnataka and Uttar Pradesh by showing
ads/offers/coupons available on Amazon, Flipkart and Myntra.
