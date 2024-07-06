/* EXAMPLE */
-- suggestion -- first visualise the subquery within () and then what the value or values are come 
			  -- then visualise the outer query with those values


SELECT * FROM transactions;


SELECT first_name, last_name
FROM customers
WHERE customer_id IN
(SELECT DISTINCT customer_id
FROM transactions
WHERE customer_id IS NOT NULL);

-- this will same and look more easier but it also have update problem 
SELECT first_name, last_name
FROM customers
WHERE customer_id IN (1,2,3);