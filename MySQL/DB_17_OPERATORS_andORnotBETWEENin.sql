SELECT * FROM employees;

ALTER TABLE employees
ADD COLUMN job VARCHAR(25) AFTER hourly_pay;

UPDATE employees 
SET job = "manager"
WHERE employee_id = 1;

UPDATE employees 
SET job = "cashie"
WHERE employee_id = 2;

UPDATE employees 
SET job = "cook"
WHERE employee_id = 3;

UPDATE employees 
SET job = "cook"
WHERE employee_id = 4;

-- AND -- 
SELECT *
FROM employees 
WHERE hire_date < "2023-02-2" AND job = "cook";

-- OR --
SELECT * 
FROM employees
WHERE job = "cook" OR job = "cashie";

-- NOT --
SELECT *
FROM employees
WHERE NOT job = "manager" AND NOT job = "cook";

-- BETWEEN --
SELECT *
FROM employees
WHERE hourly_pay BETWEEN 40 AND 60;

-- IN --		-- rows who carry these values
SELECT * 
FROM employees
WHERE job IN ("cook" , "cashie");
