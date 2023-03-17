USE exercise_hr;
-- Write a query to get the total salaries payable to employees.
SELECT SUM(SALARY) AS "Total salary"
FROM employees;

-- Write a query to get the maximum and minimum salary from employees table.
SELECT MIN(salary), MAX(salary)
FROM employees;

-- Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(salary), COUNT(salary)
FROM employees;

-- Write a query to get the number of employees working with the company.
SELECT COUNT(*)
FROM employees; 

-- Write a query to get the number of distinct jobs available in the employees table.
SELECT  COUNT(DISTINCT job_id)
FROM employees; 

-- Write a query get all first name from employees table in upper case.
SELECT UCASE(first_name)
FROM employees;

-- Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTR(first_name, 1,3)
FROM employees;

-- Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table. 
SELECT CONCAT(first_name, ' ',last_name)
FROM employees;

-- Write a query to get the length of the employee names ('<first name> <last name>') from employees table.
 SELECT LENGTH(CONCAT(first_name, ' ',last_name))
FROM employees;

-- Write a query to get monthly salary (round 2 decimal places) of each and every employee
SELECT ROUND(salary, 2) AS 'annual salary'
FROM employees;