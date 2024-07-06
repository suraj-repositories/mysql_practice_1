-- ROLLUP , extension of the GROUP BY clause
-- produce another row and shows the GRAND TOTAL (super-aggregate value)

SELECT * FROM transactions;

SELECT SUM(amount) , order_date
FROM transactions
GROUP BY order_date WITH ROLLUP;

SELECT COUNT(transaction_id) , order_date
FROM transactions
GROUP BY order_date WITH ROLLUP;

-- another example
SELECT COUNT(transaction_id) AS "# of orders", customer_id
FROM transactions
GROUP BY customer_id WITH ROLLUP;

-- EXAMPLE
SELECT SUM(hourly_pay) AS "HOURLY PAY", employee_id
FROM employees
GROUP BY employee_id WITH ROLLUP;
