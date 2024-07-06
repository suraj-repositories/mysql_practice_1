-- TWO ways to add not null constraint
-- NOT NULL = this column must have a value we don't enter the null value

-- 1st way -- at the time of table creation
CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(5,2) NOT NULL
);

-- 2nd way -- modify the table
ALTER TABLE products		
MODIFY price DECIMAL(5,2) NOT NULL;

SELECT * FROM products;

INSERT INTO products		/* TRY to add null value to the NOT NULL constraint column */
VALUES (104, "cookie", NULL);		-- THROW ERROR : you can't add the null value

INSERT INTO products		/* ZERO is exceptable */
VALUES (104, "cookie", 0);

SELECT * FROM products;
