USE mydb;

SELECT first_name , last_name		/*SELECT WANTED COLUMNS ONLY */
FROM employees;

SELECT last_name, first_name 		/*you can change the position of columns */
FROM employees;

SELECT *				/* apply the condition */
FROM employees
WHERE employee_id = 3;

SELECT * 		/* Another example */
FROM employees 
WHERE hourly_pay >= 46;

SELECT first_name , last_name 		/* to select only those column what do you want */	
FROM employees
WHERE employee_id = 4;

SELECT * 		/* not operator */	
FROM employees
WHERE employee_id != 2;

SELECT * 		/* THE IS NULL OPERATOR */
FROM employees
WHERE hire_date IS NULL;

SELECT * 		/* THIS SYNTAX IS WRONG  */
FROM employees
WHERE hire_date = NULL;

SELECT * 		/* THE IS NOT NULL OPERATOR */
FROM employees
WHERE hire_date IS NOT NULL;



SELECT * FROM employees;
