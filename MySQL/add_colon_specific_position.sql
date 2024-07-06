
use company_db;

ALTER TABLE employees
ADD COLUMN salary DECIMAL(10,2) AFTER hourly_pay;

select * from employees;