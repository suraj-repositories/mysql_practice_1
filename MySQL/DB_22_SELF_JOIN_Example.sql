-- ANOTHER EXAMPLE

ALTER TABLE employees
ADD supervisor_id INT;

-- suppose supervisor is suraj & employee is shubham although they are selected by their id (your selection)
UPDATE employees
SET supervisor_id = 1
WHERE employee_id = 2;		-- here shubham is supervised by suraj 

UPDATE employees
SET supervisor_id = 2
WHERE employee_id = 3;

UPDATE employees
SET supervisor_id = 2				
WHERE employee_id = 4;

SELECT * 
FROM employees AS a 
INNER JOIN employees AS b
ON a.supervisor_id = b.employee_id;

-- we can choose only wanted columns
SELECT a.first_name, a.last_name,
		CONCAT(b.first_name," ", b.last_name) AS "reports_to"
FROM employees AS a 
INNER JOIN employees AS b
ON a.supervisor_id = b.employee_id;

SELECT * FROM employees;

-- YOU CAN ALSO USE OTHER JOIN IN THE PLACE OF INNER JOIN
-- INNER JOIN
-- LEFT JOIN 
-- RIGHT JOIN