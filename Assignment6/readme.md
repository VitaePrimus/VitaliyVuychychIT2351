<h3>Executive Summary</h3>

<p>This assignment covers stored procedures in SQL. It dives deeper into logic and a way to preprogram queries to display certain information when called upon.</p>

<h3>Query Overview</h3>

<ol>
<li>In the first query I created a variable countProduct. Then I made the procedure count the number of rows in the product_id. If the product_id was less than 17 the system would put out a message that the count is less than 17 when it got called, or more than or equal to 17 if there are more than 17 rows.
<li>In the second query I created a variable duplicateRow that was set to a tinyit data type and defaulted to false. If the program encountered a duplicate entry, it would trigger a 1062 error, which I set to make duplicateRow true in case the error is triggered. After that I wrote a function to insert a row with a default category_id and "Flute" as a category name into the categories column. After the program inserted the row it would put out a message in the console that the procedure was successful. If the program is ran the second time it would give out an error stating that there is a row like that already.
<li>Here I created a procedure that would take in variable called id, the type of int. The procedure would also show the item_price, discount_amount and the difference between the two, called "New Price". When the procedure is called it requires an input of the id. My variable id is equal to item_id and the output would only show the results for the item_id that is entered when calling the procedure.
</ol>

<h3>Conclusion</h3>

<p>In this assignment we created 3 stored procedures. They varied and covered important problems that might be encountered. First was a general procedure to count the amount of rows in a table. Second taught us to deal with errors and a way to use errors in SQL to still display important information that is more understandable than just the error code. In the last one we used parameters which make the use of stored procedure more customizable. It was an interesting assignment that felt much closer to programming languages like Java and C++.</p>
