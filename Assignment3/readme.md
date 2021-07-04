<h3>Executive Summary</h3>

Assignment #3 covers chapters 5 and 6 of the MySQL textbook. Here we utilize a new data base my_guitar_shop. We create and copy information from existing tables into newly created tables. Insert new information into tables. Use operations to work on the data and summarize information.

<h3>Query Overview</h3>

<ol>
<li>In the first task we uploaded the new data base into MySQL workbench with the same approach as the previous data base.
<li>Using an INSERT command we added information into the customers table. I used DEFAULT keyword for the columns that did not require information to be filled in.
<li>In this query I created a new table called NewProductPrices to the liking of the products table using the keyword LIKE and copied all of the information from the orders table into the new table using INSERT INTO command.
<li>Using the UPDATE and SET commands we changed all of the values for the discount_percent WHERE the discount_percent was equal to 30.00 and made it 28.00. Safe update had to be turned off in the preferences in order to complete this task.
<li>Using COUNT(order_id) and SUM(ship_amount) we were able to get out 1 row of information with 2 coulumns. 1st column showed the amount of orders and the second showed the sum of the Ship Value.
<li>In this query we returned a category name, count of the products in the products table using the COUNT function and the price of the most expensive item using the MAX function. We had to use 2 tables so I used LEFT JOIN to connect the tables. The output was grouped by the category name so we were able to see the numbers of products for each category and ordered by unit price in the ASC(ascending) order.
<li>Last query was to make a column for the category name and product name that we had to use the IF(GROUPING(column) = 1, alias, column) in order to group the quantity of items of the same category together. We also used the COUNT function on the quantity to get the sum of items in each category. 3 tables were used here, joined by hte LEFT JOIN to categories. In the end the query was GROUPED BY the category name and the product name using the WITH ROLLUP function in the end to summarize the categories.
</ol>

<h3>Conclusion</h3>

<p></p>
