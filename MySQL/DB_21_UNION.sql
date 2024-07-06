-- UNION combines the result of two or more SELECT statements

-- it is must to both tables have same numbers of columns 
SELECT * FROM employees
UNION 
SELECT * FROM customers;

-- you can also use only wanted columns
SELECT first_name , last_name FROM employees
UNION 											-- no duplicacy    -- IF IT SHOW two times that means the data is different
SELECT first_name , last_name FROM customers;

SELECT first_name , last_name FROM employees
UNION ALL										 /*IT shows the duplicates*/
SELECT first_name , last_name FROM customers;

