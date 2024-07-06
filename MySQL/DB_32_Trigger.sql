-- Trigger = When an event happens , do something
--           ex. (INSERT , UPDATE, DELETE)
-- 			check data, handles error, auditing table

/* CREATING TRIGGER */
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees  			-- we can set BEFORE/AFTER     || UPDATE/SELECT/DELETE
FOR EACH ROW							-- 	to do the  same thing with all rows
SET NEW.salary = (NEW.hourly_pay * 2080);

/*TO SHOW TRIGGERS*/
SHOW TRIGGERS;

-- so we created the trigger when we update hourly pay of any employee the salary will update automatically 
-- because it is related by hourly pay in trigger who update it on the specific event called

-- try to update -- 
UPDATE employees
SET hourly_pay = hourly_pay + 1;
SELECT * FROM employees;


-- ----------------------------------------------------------------------------------------------------------
-- let's see another example
-- ----------------------------------------------------------------------------------------------------------

CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employee
FOR EACH ROW 
SET NEW.salary = (NEW.hourly_pay * 2080);

-- at the time of insertion

INSERT INTO employees
VALUES (6, "Shubham", "kumar", 10, NULL, "janitor", "2023-01-07", 5);		-- here the salary(null) automatically updated because we of we created a trigger to handle this
SELECT * FROM employees;

