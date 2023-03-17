USE exercise_hr;
-- Write a query to find the name (first_name, last name), department ID and name of all the employees.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID, concat(first_name, '', last_name) AS 'name'
FROM employees;

-- Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
SELECT JOB_TITLE, concat(first_name, '', last_name) AS 'Employee_name', (e.salary - j.MIN_SALARY) AS " Salary_difference"
FROM employees As e INNER JOIN jobs AS j
ON e.JOB_ID = j.JOB_ID;

--   Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.

SELECT employee_id, job_title, end_date-start_date Days FROM job_history 
NATURAL JOIN jobs 
WHERE department_id=90;

-- Write a query to get the department name and average salary in the department.
-- (Hint: Notice that the column headings are also properly outputted here)

SELECT department_name AS "Department Name",AVG(salary) AS "Average Salary"
FROM employees AS e 
INNER JOIN departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY department_name
ORDER BY DEPARTMENT_NAME;

-- Write a query to display the department name, manager name, and city. 

SELECT department_name AS "Department Name",first_name AS "Manager Name",city AS "Days" 
FROM employees AS e INNER JOIN departments AS d
ON e.EMPLOYEE_ID = d.MANAGER_ID
INNER JOIN locations AS l
ON d.LOCATION_ID = l.LOCATION_ID
ORDER BY  DEPARTMENT_NAME;
 


