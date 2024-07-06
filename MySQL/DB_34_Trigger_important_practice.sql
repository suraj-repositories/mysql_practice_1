/* TRIGGER EXAMPLE before read this read other tow  writeen before it */

-- creata a trigger 
CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + (NEW.salary - OLD.salary)
WHERE expense_name = "salaries";

-- updating the table
UPDATE employees
SET hourly_pay = 100
WHERE employee_id = 1;

SELECT * FROM expenses;

/*the expense tables total is changed because it depends on employees table through trigger */


















