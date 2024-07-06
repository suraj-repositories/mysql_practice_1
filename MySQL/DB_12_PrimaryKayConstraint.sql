use mydb;

/* PRIMARY KEY constraint = every value must be unique and not null
							ONLY ONE PRIMARY KEY FOR TABLE
                            USE AS IDENTFIER
*/	
						
-- two ways to apply constraint

-- 1 st -- in the time of table creation
CREATE TABLE transactions (
	transaction_id INT PRIMARY KEY,
    amount DECIMAL(5,2)
);

-- 2 nd -- add in existing table
ALTER TABLE transactions 
ADD CONSTRAINT 
PRIMARY KEY(transaction_id);

-- IMPORTANT : if i try to add another primary constraint it throws an error because it will be only one in the table 
ALTER TABLE transactions 
ADD CONSTRAINT 
PRIMARY KEY(amount);

INSERT INTO transactions
VALUES(1000,4.99);

INSERT INTO transactions
VALUES(1001,2.89);

INSERT INTO transactions	-- it throw an error because for duplicate entry in primary key 
VALUES(1001,3.23);

INSERT INTO transactions	-- it throw an error because primary key cannot be null 
VALUES(NULL,3.23);

INSERT INTO transactions	-- let's add some data
VALUES(1003,3.89),
	  (1004,4.99);

SELECT * FROM transactions;

-- if anyone wants refond so we can uniqly identify him by his transaction_id

SELECT amount
FROM transactions 
WHERE transaction_id = 1004;
