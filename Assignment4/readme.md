<h3>Executive Summary</h3>

<p>Assignment 4 covers chapters 7, 8 and 9 of the MySQL textbook. Here we look at subqueries, data types and functions. We used functions to convert and manipulate different datatypes, strings and numerical in particular. Practice using SELECT subqueries instead of using JOIN.</p>

<h3>Queries</h3>

<ol>
  <li>In the first query we use the provided code and replace the JOIN function with the SELECT subquery with the IN keyword. I copied the provided code, checked the output. After that I replaced the JOIN with the WHERE category_id IN (SELECT category_id FROM products). After checking the output, it was the same as in the example.
  <li>Second query also required the use of subqueries and functions. In this one I used the average function and subquery: WHERE list_price > (SELECT AVG(list_price) FROM products) to select only outputs with the list price that is above average.
  <li>Third query was all about functions and formatting. FORMAT keyword with (list_price, 1) where 1 stands for the number of digits after the decimal point was used to convert the list price to decimals. A CONVERT function that converted the list price to a 'signed' integer. And a CAST function that casted the list price as a signed integer.
  <li>Last query was about manipulating the string (email address). Using LENGTH(email_addtress) I was able to output the length of the string. Next using LOCATE("@", email_address) I got the position of "@" in each row. Lastly, using the LOCATE inside of the SUBSTRING I was able to locate the "@" and separate the string into the Username before the "@" and Domain name after the "@".
</ol>

<h3>Conclusion</h3>

<p>In conclusion we became better with manipulating datatypes, learned more functions to execute and show data in new interesting and useful ways. We learned how to use subqueries and how in certain cases they can be shorter and more useful than the JOIN function. This assignment deepened our understanding of string and numeric data types and how they can be manipulated</p>
