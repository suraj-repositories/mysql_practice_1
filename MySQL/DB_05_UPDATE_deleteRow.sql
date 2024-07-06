SELECT * FROM employees;

UPDATE employees 			/* to update the data of the specific column */
SET hourly_pay = 10.23
WHERE employee_id = 5;

UPDATE employees 			/* you can also change the data of multiple coloumns */
SET hourly_pay = 10.23 , hire_date = "2023-02-12"
WHERE employee_id = 5;

UPDATE employees		/* when you don't have idea about any data ---- setting the null value there*/
SET hourly_pay = NULL
WHERE employee_id = 5;

DELETE FROM employees		/*delete row from table */
WHERE employee_id = 5 ;

