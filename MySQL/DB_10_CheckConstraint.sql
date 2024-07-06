-- TWO WAYS to add check constaint
-- CHECK constraint : it is use to check the input also make a condition for input


-- 1st -- in the time of table creation
CREATE TABLE employees(
	employee_id INT,
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    hourly_pay DECIMAL(5,2),
    hire_date DATE,
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00) -- we are giving a name "chk_hourly_pay" to identify the check condition
);

-- 2nd -- add on existing table
ALTER TABLE employees 
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00);

-- if we want to insert a data we must to follow the CHECK constraint condition
INSERT INTO employees
VALUES (6, "Nishant","singh", 5.00, "2023-02-12");		-- otherwise it will throw error

ALTER TABLE employees
DROP CHECK chk_hourly_pay;


SELECT * FROM employees;

