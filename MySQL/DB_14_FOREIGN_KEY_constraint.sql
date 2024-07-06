/*  FOREIGN KEY constraints = primary key of a one table is foreign key of another table */

-- creating a table with a primary key
CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- adding data to the table
INSERT INTO customers (first_name , last_name)
VALUES ("Shubham", "Kumar"),
		("Tushar", "Srivastav"),
		("Saurabh", "Rathore");
 
 SELECT * FROM customers;

-- creating another table of named transactions
	drop table transactions;/* just deleting already existing table */

CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

SELECT * FROM transactions;

-- to drop the foreign key 
ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_1;

-- you can also add the name of foreign key constraint 
-- this is also the way to add foreign key constraint on the existing table
-- you can skip the nameing of the foreign key
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id		-- add any unique name
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE transactions		-- just setting the foreign key constraint
AUTO_INCREMENT = 1000;

INSERT INTO transactions(amount, customer_id)
VALUES  (4.99,3),
		(2.89,2),
		(3.38,3),
		(4.99,1);
        
SELECT * FROM transactions;


DELETE FROM customers		-- IMPORTANT : we can't delete or update a parent row : a foreign key constraint fails
WHERE customer_id = 3;