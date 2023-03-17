-- 1.Write a query to get the total salaries payable to employees.
use exercise_hr;
select SUM(SALARY) AS "total"
from employees;

-- 2.Write a query to get the maximum and minimum salary from employees table.
select MAX(salary) AS "max salary" , MIN(salary) AS "min salary"
from employees;

--  3.Write a query to get the average salary and number of employees in the employees table.
 select  AVG(salary) AS "average"
from employees;

-- 4.Write a query to get the number of employees working with the company.
select COUNT(EMAIL) AS "total employees"
from employees;

-- 5.Write a query to get the number of distinct jobs available in the employees table.
select  COUNT(distinct job_id)
from employees;

-- 6.Write a query get all first name from employees table in upper case.
select UCASE(first_name) AS "First Name"
 from employees;
 
-- 7.Write a query to get the first 3 characters of first name from employees table.
select SUBSTR(first_name,1,3) AS "First 3 Character"
from employees;

-- 8.Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table.
select CONCAT(first_name,last_name) AS Singlecolumn 
from employees;

-- 9.Write a query to get the length of the employee names ('<first name> <last name>') from employees table.
select COUNT(concat(first_name,last_name))
 from employees;
 
-- 10.Write a query to get monthly salary (round 2 decimal places) of each and every employee
-- Note : Assume the salary field provides the 'annual salary' information.
select ROUND(salary, 2) AS RoundValue 
from employees;