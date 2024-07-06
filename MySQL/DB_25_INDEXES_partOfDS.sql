-- INDEX(BTree data structure)
-- Indexes are used to find values within a specific column more quickly
-- MySQL normally searches sequentially through a column
-- The longer the column, the more expensive the operation is 
-- UPDATE takes more time , SELECT takes less time

SELECT * FROM customers;

SHOW INDEXES FROM customers;

-- creating an index;
CREATE INDEX last_name_idx
ON customers(last_name);

SHOW INDEXES FROM customers;

-- after creating the index the search will be faster then ever but if the dataset is to small it will be invisible
SELECT * FROM customers
WHERE last_name = "Verma";
-- but it is faster then this
SELECT * FROM customers
WHERE first_name = "Suraj" ;		-- because we don't create the index 

/* MULTY COLUMN INDEX */
CREATE INDEX last_name_first_name_idx
ON customers(last_name, first_name);    -- sequnce is very important

SHOW INDEXES FROM customers;

ALTER TABLE customers			-- to drop an index
DROP INDEX last_name_idx;

SHOW INDEXES FROM customers;

SELECT * FROM customers		-- benifitial
WHERE last_name = "Verma" AND first_name = "Ajay";

SELECT * FROM customers		-- benifitial
WHERE last_name = "Verma" ;

SELECT * FROM customers		-- not much benifitial -- because we do not create index for seperate first name __ and in  |last_name_first_name_idx| this index the sequence of first name is second 
WHERE first_name = "Ajay";

