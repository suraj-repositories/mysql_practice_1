-- two ways to add unique constraint

-- 1 -- /* adding unique constraint in the time of creating table */
CREATE TABLE products(				
	porduct_id INT,
    product_name VARCHAR(45) UNIQUE, 		-- in this column every value must be unique
    price DECIMAL(5,2)				
);

-- 2 -- /* after creating the table and want to add a constraint */
ALTER TABLE products 
ADD CONSTRAINT
UNIQUE(product_name);		-- in this column every value must be unique 

SELECT * FROM products;

INSERT INTO products		/* it will throw an error bacause the product_names must be unique (we applied constraint)*/
VALUES  (101,"Shirt",3.99),			-- same procuct_name Shirt
		(102,"Bag Pack", 20.23),
		(103, "pants", 2.22),
		(104, "keyboard", 3.22),
        (104, "Shirt", 3.22);  		-- same procuct_name Shirt
        

INSERT INTO products		-- making correct
VALUES  (101,"Shirt",3.99),			
		(102,"Bag Pack", 20.23),
		(103, "pants", 2.22),
		(104, "keyboard", 3.22);  	       

SELECT * FROM products;