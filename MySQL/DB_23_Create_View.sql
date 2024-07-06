-- Views 
-- vertual tables based on the result-set of an SQL statement
-- The fields in a view are fields from one or more real tables in the databases
-- They're not real tables, but can be interacted with as if they were
use mydb;

SELECT * FROM employees;

CREATE VIEW employee_attendence AS 			-- to create the view 
SELECT first_name, last_name
FROM employees;

SELECT * FROM employee_attendence			-- to select the view with out conditions
ORDER BY last_name ASC;


DROP VIEW employee_attendence;				-- dorp view as well
 

