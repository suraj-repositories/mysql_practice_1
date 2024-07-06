
CREATE TABLE expenses(
			expense_id INT PRIMARY KEY,
            expense_name VARCHAR (50),
            expense_total DECIMAL(10,2)
);
SELECT * FROM expenses;

INSERT INTO expenses
VALUES (1, "salaries",0),
	   (2, "supplies", 0),
	   (3, "taxes", 0);
       
-- updating one of those values

UPDATE expenses
SET expense_total = (SELECT SUM(salary) FROM employees)
WHERE expense_name = "salaries";

-- CREATING TRIGGER
CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW 
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

-- try to delete employee this will change the expenses table salaries expense_total
DELETE FROM employees
WHERE employee_id = 6;
SELECT * FROM expenses;

-- CREATING ANOTHER TRIGGER
CREATE TRIGGER after_salary_insert
AFTER INSERT ON employees
FOR EACH ROW 
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";

-- inserting a value in employeee table 
INSERT INTO employees
VALUES (6, "Rohit", "Kumar", 10, NULL, "janitor", "2023-02-07",5); /*here the null(salary) will updated by trigger and our expenses table is also updated by another trigger*/
SELECT * FROM expenses;

