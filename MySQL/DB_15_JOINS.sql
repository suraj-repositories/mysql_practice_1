-- JOINS : TO join the two tables for any specific purpose

-- ADDING values on existing table
INSERT INTO transactions(amount, customer_id)
VALUES (1.00,NULL);

SELECT * FROM transactions;

INSERT INTO customers (first_name, last_name)		-- adding value in another column 
VALUES ("Ajay","Verma");

SELECT * FROM customers;

-- INNER JOIN ----------------------------------------------------------------------------
-- same in both tables
SELECT * 
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

-- you can also show only wanted columns
SELECT transaction_id , amount, first_name, last_name 
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

-- LEFT JOIN ------------------------------------------------------
-- in the left join we select all the data of left table
SELECT * 
FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;

-- RIGHT JOIN ------------------------------------------------------
-- in the right join we select all the data of right table
SELECT * 
FROM transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;

