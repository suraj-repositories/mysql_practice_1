-- subquery
-- a query within another query
-- query (subquery)

SELECT * FROM employees;

SELECT AVG(hourly_pay) FROM employees;		-- we can use this as a subquery 

-- here we are going to use subquery - query within a query
SELECT first_name, last_name, hourly_pay, (SELECT AVG(hourly_pay) FROM employees)  AS avg_pay
FROM employees;

-- this will the same -- but if the number of employee change this result gone wrong
SELECT first_name, last_name, hourly_pay, 58.06
FROM employees;

SELECT first_name, last_name, hourly_pay 
FROM employees
WHERE hourly_pay > (SELECT AVG(hourly_pay) FROM employees);

