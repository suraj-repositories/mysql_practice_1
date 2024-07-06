-- example of default constraint

CREATE TABLE Transactions(
	transaction_id INT,
    amount DECIMAL(5,2),
    transaction_date DATETIME DEFAULT NOW()
);

SELECT * FROM transactions;

INSERT INTO transactions(transaction_id, amount)		-- The time stamp will add automatically
VALUES (1, 4.99);

INSERT INTO transactions(transaction_id, amount)
VALUES (2, 3.21);

INSERT INTO transactions(transaction_id, amount)
VALUES  (3, 4.26),
		(4, 2.51);

SELECT * FROM transactions;

DROP TABLE transactions;