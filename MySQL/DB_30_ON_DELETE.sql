-- two forms
-- ON DELETE SET NULL = when a fourign key(FK) is deleted, replace the FK  with NULL
-- ON DELETE CASCADE  = When a FK is deleted , delete row

/*ON DELETE SET NULL*/
-- AT the time of table creation
CREATE TABLE transactions(
		transaction_id INT PRIMARY KEY,
        amount DECIMAL(5, 2),
        customer_id INT,
        order_date DATE, 
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
        ON DELETE SET NULL
	);

ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;	-- deleteing foreign key

-- already have a table
ALTER TABLE transactions    
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE SET NULL;

/*ON DELETE CASCADE*/
-- Already have a table

ALTER TABLE transactions 
ADD CONSTRAINT fk_transaction_id
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;