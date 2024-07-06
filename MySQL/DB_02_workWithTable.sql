CREATE TABLE employees(			/*To caeate a new table*/
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5,2),
    hire_date DATE
);

SELECT * FROM employees;	/* to select all the table */

RENAME TABLE employees TO workers;	/* rename table */
RENAME TABLE workers TO employees;

DROP TABLE employees;	/* to drop the table */

ALTER TABLE employees ADD phone_no VARCHAR(10); /* add a new column in the table */

ALTER TABLE employees RENAME COLUMN phone_no TO email;		/* rename column !changing the datatype */

ALTER TABLE employees MODIFY COLUMN email VARCHAR(100);  /* to modify the column */

ALTER TABLE employees 			/* to move any column in a specific location */
MODIFY email VARCHAR(100)
AFTER last_name;

ALTER TABLE employees 			/* to move any column on FIRST place */
MODIFY email VARCHAR(100)
FIRST;

ALTER TABLE employees  /* to drop the column */
DROP COLUMN email;
