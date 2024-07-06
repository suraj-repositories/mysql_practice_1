-- FUNCTIONS : there are lots of functions in mysql only few of them used below to see all the disctiption
-- 			   of those functions go to official website

SELECT * FROM transactions;

-- COUNT() -------------------------------------------------------------
SELECT COUNT(amount)		
FROM transactions;

/*you can also set the name */
SELECT COUNT(amount) AS count_of_table		-- also use like "count_of_table"
FROM transactions;

-- MAX() & MIN() & AVG() & SUM() -----------------------------------------------------------------
SELECT MAX(amount) AS maximum
FROM transactions;

SELECT MIN(amount) AS maximum
FROM transactions;

SELECT AVG(amount) AS maximum
FROM transactions;

SELECT SUM(amount) AS maximum
FROM transactions;

-- CONCAT() -- to merge values as a string you can also give the name of this type of value
SELECT CONCAT(first_name," ", last_name) AS full_name
FROM employees;

SELECT * FROM employees;

