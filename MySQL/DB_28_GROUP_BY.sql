-- GROUP BY = aggregate all rows by a specific column
-- 			  often used with aggregate function
-- 				ex. SUM(), MAX(), AVG(), COUNT()

select * from transactions;

SELECT SUM(amount) , order_date		-- we can use any function in the place of sum
FROM transactions
GROUP BY order_date;

SELECT SUM(amount), customer_id
FROM transactions
GROUP BY customer_id;

-- IF you want to use the WHERE clause with GROUP BY clause you can't use 
-- use HAVING clause this will do the same as WHERE

SELECT COUNT(amount) , customer_id
FROM transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1 AND customer_id IS NOT NULL;


