# Data-Professional-Survey-Breakdown
PowerBI project to visualize total survey takers, average age, average salary, salary by country etc. 

Data Transformation :

1. Removed empty columns.
2. separated column of Q1 by delimeter("(") and remove newly created column.
3. sperated column of Q5 by delimiter (":") and remove new column.
4. In Q3 column replaced k+ with 000 then k with 000 so we can calculate properly. split the column by
delimeter ("-"). add a new column named average salary (in USD) by adding these 2 columns and divided
by 2 to get average salary. remove previous 2 columns.
5. followed step 2 for column Q11.

Visualization :

1. Created hedding
2. put Unique ID in card and rename it as as Count of Survey Takers to know number of survey takers.
3. took another card and put age and make it average to know average age of survey takers.
4. took a bar chart to know relation between job and average salary.
5. took a clustered column chart to know most popular programming language by job title.
6. created a treemap to visualize things based on geography.
7. used gauge to know how m´happy people are based on work life balance and based on salary.
8. added donut chart to see difficulty survey takers had to get their job.

After final visualization we can answer following questions :

1. Total survey takers : 630
2. Average age of survey takers : 29,87
3. Average salary by job per year, Data Scientist average salary is the highest (88k).
4. How hard it is for people to break into their job.
5. What is the most favourite programming language based on job title.
6. Salary based on their countries.
7. How happy people are based on work/life balance 5.74(10).
8. How happy people are with their salary 4.27(10).
9. Happiness of people based on their work/life balance : 5.74(on scale of 10).
