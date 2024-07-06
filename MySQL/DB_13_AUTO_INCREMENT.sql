-- AUTO_INCREMENT : it is used to auto increment the column value 


CREATE TABLE transactions(		
	transaction_id INT PRIMARY KEY AUTO_INCREMENT ,
    amount DECIMAL(5,2)
);


SELECT * FROM transactions;

INSERT INTO transactions(amount)
VALUES(4.99);

INSERT INTO transactions(amount)
VALUES(5.33);

INSERT INTO transactions(amount)
VALUES(3.22);

SELECT * FROM transactions;

-- DELETEING THE DATA FROM THE TABLE
DELETE FROM transactions;

-- YOU CAN ALSO SET THE START VALUE OF AUTO INCREMENT
ALTER TABLE transactions
AUTO_INCREMENT = 1000;

INSERT INTO transactions(amount)		-- transcation_id should be 1000
VALUES(4.99);

INSERT INTO transactions(amount)		-- transcation_id should be 1001
VALUES(5.33);

INSERT INTO transactions(amount)		-- transcation_id should be 1002
VALUES(3.22);

SELECT * FROM transactions;