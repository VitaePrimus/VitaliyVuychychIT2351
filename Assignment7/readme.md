<h3>Executive Summary</h3>

<p>Assignment 7 continues to look at preprogrammed stored programs, this time diving into triggers and events. Both can be utilized to a great benefit in large companies for automation and ease of use. They allow to automatically execute lines of code when a certain trigger is triggered or when a particular time approaches (end of month, year, etc.)</p>

<h3>Queries</h3>

<ol>
  <li>For creating a stored procedure for deleting a row from the customers table, first I would need to create the procedure. I named it deleteRow and created a parameter <i>id</i> type int. Next I created a DELETE FROM function, making the table to delete from a customers table. I passed a condition to delete WHERE customer_id = id. When called, the stored procedure would require an int to be passed which would be the id of a customer that a user wishes todelete from the table.
  <li>To create this trigger I started with the usual procedyre, starting DELIMITER, creating nad naming trigger, triggering BEFORE UPDATE ON products and making it trigger for each row. I created a variable myVar and made the <b>NEW</b>.list_price insert into the variable. Next I signaled SQLSTATES for a default error 45000 if the price on update is either lower than 100 or higher than 1200. If it is in the bounds, the price would update. After that I tested my trigger and it worked.
  <li>Bakery as any business in modern world can heavily benefit from having a database. They can store their products, prices, employees' information, different information from stores if they have multiple locations. The EVENT handler can come in handy when checking monthly finances. For example, an event can be set up for deleting or moving to a different table (for achieving) the income and expenses for the last month. There can also be an event that sums up all expenses and revenue into a total balance and moves it into a different table.
</ol>

<h3>Conclusion</h3>

<p>This lesson provides good understanding of triggers and events. We learned the benefit of having them in larger data bases. When time comes and we encounter data bases as a data scientist or any other profession that might work with structured query languages we would be prepared to know what they are, what we can expect from them and what might happen to the data if some trigger is triggered.</p>
