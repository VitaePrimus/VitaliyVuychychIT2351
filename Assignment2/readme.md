<h3>Executive Summary</h3>

Assignment #2 is more specialized towards extracting data from different tables and compiling them together. We are also introduced to some first manipulations with the data like changing the format and manipulating the numbers doing simple calculations. Another feature that we will cover in this assignment is concatenation. Allowing to merge columns together.

<h3>Query Overview</h3>

<ol>
<li>We created a query that pulls columns from items table and gave the Aliases. We filtered them to show unit prices between 14 and 17 and sorted them by price then artist.
<li>In this query we used concatenation. Combined first and last names of the customers. Filtered them if the live either in Ohio or California and sorted by state then first and last name.
<li>In this part we modified the dates to show as mm/dd/yy for order and shipping dates.
<li>4th part expended on 2nd and 3d by adding a new table using the JOIN command. We added customers to the orders and sorted the output by customer last name from the customers table.
<li>5th part took the previous part even further. A 3d table was added (order details), first and last names were concatenated again. Output sorted by last name and order quantity.
<li>Next part added another table, items. Item# was replaced with the artist name, and the price was added.
<li>In this query, we multiplied the item price by its quantity to get a total amount and filtered the results to show only those that have no shipping date (have not shipped yet).
<li>In the last part we created a new query that combined items and order detail tables. We got the total price for the distinct items plus 8% tax.
</ol>

<h3>Conclusion</h3>

We learned how to do basic manipulations with data in SQL using proper syntax. We modified the date and made multiplications to compile information from different columns into a new column with meaningful information. We learned an important part of data management - comparing different tables. This was achieved using the <b>JOIN</b> function.
