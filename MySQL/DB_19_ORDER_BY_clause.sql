-- ORDER BY clause  -- to order anything in a specific order
-- one important in the last


-- it set the rows in asc alfabetical orde  -- that is default
 SELECT * FROM employees
 ORDER BY first_name ;
 
-- you can set this in decending order
 SELECT * FROM employees
 ORDER BY first_name DESC;
 
 -- also there is acending order -- but we dont need this because it is default
  SELECT * FROM employees
 ORDER BY first_name ASC;
 
 -- YOU CAN ALSO USE IT IN THE NUMBERS
 SELECT * FROM employees
 ORDER BY hourly_pay ;
 
 -- in DESC 
  SELECT * FROM employees
 ORDER BY hourly_pay DESC;
 
 -- IMPORTANT : you can order by more than on e column 
 SELECT  * FROM employees
 ORDER BY first_name ASC , last_name DESC;