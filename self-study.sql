USE exercise_hr;
-- 1st one
SELECT first_name, last_name,hire_date
FROM employees;

-- 2nd question

SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

-- 3rd question
SELECT first_name, last_name, DEPARTMENT_ID
FROM employees
WHERE DEPARTMENT_ID = 30 OR  DEPARTMENT_ID = 100;

-- 4TH QUESTION
SELECT first_name, last_name, salary
FROM employees
WHERE (DEPARTMENT_ID = 30 OR  DEPARTMENT_ID = 100) AND (salary NOT BETWEEN 10000 AND 15000);

-- 5th question
SELECT *
FROM employees
WHERE last_name IN ('BLACK' , 'SCOTT', 'KING', 'FORD');


USE exercise_hr;

SELECT*
FROM employees
WHERE last_name REGEXP 'b[a-z]*[ru]';


SELECT*
FROM employees INNER JOIN departments
ON employees.department_id = departments.department_id;

-- 1.Write a query to find the name (first_name, last name), department ID and name of all the employees.
 
SELECT employee_id, first_name, last_name, e.department_id, department_name
FROM employees As e INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE department_name = 'IT';

-- 2.Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
SELECT first_name, last_name, job, e.department_id, department_name
FROM employees As e INNER JOIN countries AS c
ON e.department_id = c.country_id
WHERE country_name = 'London';


