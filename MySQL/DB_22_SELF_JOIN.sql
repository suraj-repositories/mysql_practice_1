USE mydb;
/*
SELF JOIN 
join another copy of a table to itself 
used to compare rows of the same table
helps to display a heirarchy of data
*/

-- creating a new column referral_id
ALTER TABLE customers
ADD referral_id INT;
 
 -- adding data to the table
UPDATE customers
SET referral_id = 1
WHERE customer_id = 2;
 
 UPDATE customers
SET referral_id = 2
WHERE customer_id = 3;

UPDATE customers
SET referral_id = 2
WHERE customer_id = 4;

-- 
SELECT * 
FROM customers AS a 
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;			-- the referral id of table A is linked to the customer id of table b

-- selecting only specific columns
SELECT a.customer_id, a.first_name, a.last_name,
		b.first_name, b.last_name
FROM customers AS a 
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;	

-- concatting b.first_name and b.last_name as reffered_by
SELECT a.customer_id, a.first_name, a.last_name,
		CONCAT(b.first_name," ", b.last_name) AS "reffered_by"
FROM customers AS a 
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;

SELECT * FROM customers;

-- YOU CAN ALSO USE OTHER JOIN IN THE PLACE OF INNER JOIN
-- INNER JOIN
-- LEFT JOIN 
-- RIGHT JOIN
SELECT a.customer_id, a.first_name, a.last_name,
		CONCAT(b.first_name," ", b.last_name) AS "reffered_by"
FROM customers AS a 
LEFT JOIN customers AS b
ON a.referral_id = b.customer_id;