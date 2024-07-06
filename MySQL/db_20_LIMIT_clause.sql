/*
LIMIT clause is used to limit the number of records,
Useful if you're working with a lot of data;
can be used to display a large data on pages (pagination)
*/

-- you can choose what amount of rows you like to display
SELECT * FROM customers
LIMIT 2;

-- you can use it with order by clause -- 
SELECT * FROM customers 
ORDER BY last_name LIMIT 1;

SELECT * FROM customers 
ORDER BY last_name DESC LIMIT 1;

-- there are offset available
-- in the given example it will show the offset of first limit -- desi language : pahale ke baad
SELECT * FROM customers
LIMIT 1,1;

SELECT * FROM customers		-- THESRE KE BAAD EEK 
 LIMIT 3,1;

SELECT * FROM customers		-- dusre ke baad do 
LIMIT 2,2;

/* when you want to display your data in parts */
-- like you have data of hundred customers you can show only 10 customers on each time total 10 times

SELECT * FROM customers 		-- FIRST 10 (1-10)
LIMIT 10;

SELECT * FROM customers 		-- SECOND 10 (10-20)
LIMIT 10,10;

SELECT * FROM customers 		-- THIRD 10 (20-30)
LIMIT 20, 10;

SELECT * FROM customers 		-- FORTH 10 (30-40)
LIMIT 30, 10;

-- SO ON AND SO FAR