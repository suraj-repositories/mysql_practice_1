SELECT * FROM customers;

ALTER TABLE customers
ADD COLUMN email VARCHAR(50);

UPDATE customers
SET email = "shubham@gmail.com"
WHERE customer_id = 1;

-- just adding data to each row and shortcut is
UPDATE customers
SET email = "ajay@gmail.com"
WHERE customer_id = 4;

-- ----------------------------------- CREATING VIEW 
CREATE VIEW customer_emails AS 
SELECT email
FROM customers;

SELECT * FROM customer_emails;

-- IMP -- if you make any changes in the table , it will reflect in the view
-- updating table -- adding a customer

INSERT INTO customers
VALUES (5, "Suraj", "Maurya", NULL, "tushar@gmail.com");

SELECT * FROM customer_emails;
