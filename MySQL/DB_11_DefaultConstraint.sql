-- DEFAULT Constraint = it will add the dafault value to the coloumn automatically -- also see next example
USE mydb;

SELECT * FROM products;

INSERT INTO products 		-- that is not a good way to add values bacause we need to add value of price 0.00 every time
VALUES  (105,"straw",0.00),		-- rather than useing this we can use the default constraint
		(106,"napkin",0.00),
		(107,"fork",0.00),
		(108,"spoon",0.00);

DELETE FROM products  -- just deleting the values added here ^
WHERE  price = 0.00;

-- --------------------------------------------------
-- TWO ways to use default constraint

-- 1 st -- at the time of table creation 
CREATE TABLE products (
	product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(5,2) DEFAULT 0.00
    );


-- 2nd -- use an existing table
ALTER TABLE products
ALTER price SET DEFAULT 0;

SELECT * FROM products;

INSERT INTO products(porduct_id, product_name) 		-- also we need to specify the coloumn to be adding
VALUES  (105,"straw"),		
		(106,"napkin"),
		(107,"fork"),
		(108,"spoon");
