USE mydb;

-- wild card characters ->  % _  (percentage and underscore)
-- used to substitute one or more characters in a string

-- % wild card character -- LIKE Operator
SELECT * FROM employees
WHERE first_name LIKE "s%";  -- the word start with s character

SELECT * FROM employees 
WHERE hire_date Like "2023%";

SELECT * FROM employees 
WHERE last_name Like "%r";	-- the word ends with r character

-- also use more than one character
SELECT * FROM employees
WHERE first_name LIKE "Ti%";

-- _ (underscore) wild card character -- LIKE Operator
-- underscore determines any random character : and it try to fill yoiur space
SELECT * FROM employees
WHERE job LIKE "_ook";

-- you can use more than one _ wild card character
SELECT * FROM employees
WHERE job LIKE "_oo_";

-- another example
SELECT * FROM employees
WHERE hire_date LIKE "____-01-__";  -- we only know he month and we need all the data of this particular month of all years 
									-- generally this is not used
                                    
-- you  can use both wild card caracter in the same time                                    
SELECT * FROM employees 
WHERE job LIKE "_a%";