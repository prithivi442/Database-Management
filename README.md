# Database-Management
This is simple JSP tasks for self practicing. It implements JDBC with little bit of JAVA and bootstrapping. Here user can insert, delete and update the entries.

You need to make sql database name student_db and table in that table named student first with below mentioned entities.

My-Sql commands:

Creating database:
CREATE DATABASE student_db
use student_db

Creating Table:
CREATE TABLE student(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
fname TEXT,
lname TEXT,
phone TEXT,
email TEXT,
username VARCHAR(32).
pass VARCHAR(32),
college VARCHAR(10)
)
