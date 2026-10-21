/*
Ex1C – Workbench Readiness Check
Name: Matthew Pena Date: 10/20/2026
Q1: The host name is localhost and the port number is 3306, and it logs in as root user.
Q2: You would click the plus icon to create a brand new connection.
Q3: 1 is Navigator, 2 is Information, 3 is Query Editor, 4 is Output, and 5 is SQL Additions. In this course, we won't be using SQL Additions.
Q4: root, 3306, 26.7.0
Q5: Server Status and Client Connections
Q6: the data type for actor_id is smallint. AI stands for Automatic Increment and PK means Primary Key.
Q7: The columns in film_actor are actor_id, film_id, and last_update. It has 2 foreign keys and they point to the actor and film tables.
Q8: It highlighted the entire header row.
Q9: 200 rows were returned. This was shown in the Output panel.
Q10: The first and second statements succeeded, and the third one failed. Error code: "MYSQL Error (1146): Table 'sakila.actr' doesn't exist". 
Q11: Vertical text is the transposed opposite of Result Grid. It might be useful when you're working with a lot of records.
Q12: Akroyd
Q13: Three actors matched.
Q14: The data type of first_name is varchar and its maximum length is 45.
*/

USE sakila;
SELECT * FROM actor;
SELECT * FROM sakila.film;
SELECT * FROM actor;