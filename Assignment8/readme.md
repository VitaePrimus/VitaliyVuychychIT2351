<h3>Executive Summary</h3>

<p></p>

<h3>Database Administrator Responsibilities</h3>

<p>
<ol>
  <li>Maintenence. Under maintenence the database administrator is responsible for monitoring the status of the server, fixing errors, checking on log files and cofiguring the server when something changes to keep it up to date.
  <li>Design. Design means that a database administrator is supposed to be able to create the architecture of a database, connect all of the tables and code it in the SQL.
  <li>Security. Security means keeping all of the user accounts secure, making sure that the database does not have any vulnrabilitis or exploits and is resiliant to SQL injections.
  <li>Backup. DB administrator should backup the database regularly in case something happens to the main file or if there is an attack, database can be restored or migrated to a different server if necessary.
  <li>Miscellaneous. Under this category fall any other duties connected to a DB, such as launching and stopping the server, optimizing the server, updating the software, etc.
</ol>
</p>

<h3>Log Files</h3>

<p>There are 5 types of LOG files divided into text files and binary files:
<ol>
  <li>General. This text file keeps the reccord of clien connections, record of received SQL statements, etc. Best file or monitoring the server.
  <li>Error. Second text file. It keeps the record of the sserver startup and shutdown as well as any errors occuring on the server. This log is used for troubleshooting.
  <li>Slow QUery. Third text file. As the name suggests it keeps the SQL statements that take a long time to execute. Can be used to identify querries that need to be rewritten.
  <li>Binary. A binary file contains record of changes made to a database. Can be used to restore data after a crash.
  <li>Relay. Last file is also a binary file. It is located on a slave server and keeps records of logs of any changes on the master server.
</ol>
</p>

<h3>Variables</h3>

<p>Purpouse of the status variables is to get additional information about the status of the server. You can view them in hte status variables tab that shows the name of each variable as well as their status. An example of a status variable is hte "Connections" variable that shows the number of connection attempts.
<br>Purpouse of the system variables is to check how the SQL server is currenly configured. They have their own tab similar to the status variables. An example is "basedir" variable that shows the installation directory or "Autocommit" that shows if the autocommit is on or off.</p>

<h3>Privileges</h3>

<p>CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word';
<br>CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word';
  <br>
  <br>//These 2 lines create 2 users: a guitar_admin and guitar_user from a specific host, localhost in this example. They are also required to have a password which is "pa55word" in this example for both of them.
  <br>
<br>GRANT ALL
<br>ON guitar.*
<br>TO guitar_admin@localhost;
  <br>
  <br>//This command grants the guitar_admin all privalages for the guitar database, making him the master user for this database.
  <br>
<br>GRANT SELECT , INSERT, UPDATE, DELETE
<br>ON guitar.*
<br>TO guitar_user@localhost; 
  <br>
  <br>//This last command grants privilages to the guitar_user user on the guitar database. These privilages are limited compared to the previous example. the guitar_user will only have access to SELECT, INSERT, UPDATE, and DELETE commands in the guitar database.
  <br>
<br>There are 4 privilage levels that can be granted to a user:
  <ol>
    <li>Global. This grants access to all databases and all tables.
    <li>Database. It grants access to all tables in a specified database.
    <li>Table. This grants access to all columns to a user in a specific table.
    <li>Column. This last one grans access to a specific column or columns in a specific table.
  </ol>
<br>
<br>This code would allow a user to make changes to the customers only in the following columns: first_name, last_name, and email_address.
<br>This is beneficial if you have a clerk at the front desk who is updating the new clients/customers. They do not necessarily need to have access to any other commands so having only this access first makes their job more straightforward, and most importantly makes the server more secure and protected from accidental unwanted commands. Countless more examples can be listed with various roles and needs of organizations that utilize databases.
</p>

<h3>Roles</h3>

<p>MySQL exaple screenshot is includer for this part. To create a ROLE, we use CREATE ROLE statement followed by a desired role name. We can use DROP ROLE IS EXISTS as well. Next we use keyword GRNT to give the role privilges, is our exmple followed by UPDTE. Next we specify the table, row, etc (categories in this example) and use the keyword TO to grant the privilages to the specific role, that was named updater in this example.
<br> To add a user to a role first we need to: CREATE USER (username, masterUser was used for this example). After the role is created we GRANT rolename (updater) TO username (masterUser) and the role is set.
<br>Specifying users and roles can be important for security and data management. In big companies there cn be multiple users working on one database. To avoid confusion, a database administrator or the management can decide that certain positions can work only on certain tables, can not copy tables, can not drop content. For example one position can have access to only updating a specific table. This helps to assure security and control over the database.</p>

<h3>Conclusion</h3>

<p></p>
