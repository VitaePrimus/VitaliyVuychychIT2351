<h3>Executive Summary</h3>

<p>Assignment 5 of IT 2351 coveres the subject of normalization which so far is one of hte most important and also hardest topics to understand. We will be creating our own database and normalizing it so it can be used for better data management.</p>

<h3>Query Overview</h3>

<ol>
<li>To create an EER I used a bit different approach. In the MySQL launcher I wend to the models and clicked on an arrow to create a model out of an existing data base. After that I followed the prompts until I received a reverse engineered my_gutair_shop database.
<li>To normalize the provided information, it should have bees separated into a couple tables. Using the EER models I created 3 tables, 1 with the student information, for a major and for a class. This helped achive the 1st norml form. To achive the 2nd and 3d normal forms, I made each table dependant on 1 primary key and created a relationship between the tables. Each table has an ID: student_id, class_id, and major_id that are unique and autoincremented. At the end I forward engineered the model, copied the script, pasted it into the MySQL and added script to fill in the data from the table provided plus 3 additional students.
<li>To obtain a view, I used a CREATE VIEW function folowed by a view name and AS. After AS came the problem of selecting what I want to be in the view using the SELECT keyword. In the end I was able to obtain the result by selecting the view as: SELECT * FROM <i>view_name</i>;
</ol>

<h3>Conclusion</h3>

<p></p>

