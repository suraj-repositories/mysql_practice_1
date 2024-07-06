-- Stored procedure = is prepared SQL code that you can save
--                    great if there's a query that you write often 
					-- reduces network traffic
                    -- increase	performanse
                    -- secure, admin can grant permission to use
                    -- increases memory usage of every connection
-- DELEMITER = end point of statement/query (generally set on ; semicolon but we can change)

/* CREATING PROCEDURE */

DELIMITER $$		-- changeing the end statement sign ; to $$ 
CREATE PROCEDURE get_customers()	-- creating procedure with a name
BEGIN								-- starting point
SELECT * FROM transactions;			-- we can write our statement/ statements in between BEGIN and END
END $$								-- end point
DELIMITER ;		-- changing delimiter back to ; beacause we don't want to use it later

/*USING PROCEDURE*/
CALL get_customers();

/*TO DELETE PROCEDURE*/
DROP PROCEDURE get_customers();

-- ------------------------------------------------------------------------------------------------------
-- PROCEDURE WITH PARAMETER
-- ------------------------------------------------------------------------------------------------------
/*CREATE PROCEDURE*/
DELIMITER $$
CREATE PROCEDURE find_customer(IN f_name VARCHAR(50), IN l_name VARCHAR(50))
BEGIN
	SELECT * FROM customers
    WHERE first_name = f_name AND last_name = l_name;
END $$
DELIMITER ;

/* CALL THE PROCEDURE*/
CALL find_customer("shubham", "kumar");


