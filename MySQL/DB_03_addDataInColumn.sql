USE  mydb;		/* to start use the pre created database */

INSERT INTO employees 			/* insert data into the column */
VALUES (1, "Shubham", "kumar", 65.30, "2023-01-02");

INSERT INTO employees 		/* just adding more rows in the table */
VALUES  (2, "Suraj", "kumar", 65.50, "2023-02-07"),
		(3, "Timmy", "parker", 45.56, "2023-04-02"),
		(4, "Tushar", "shrivastav", 55.90, "2023-01-23");

INSERT INTO employees(employee_id, first_name, last_name)	/* IMPORTANT : Adding partial data of the employee -- it stores the null value on empty space */
VALUES (5, "Ajay","nishad");


SELECT * FROM employees;
