use exercise_hr;

SELECT first_name, last_name, department_id, department_name
FROM employees JOIN departments
USING (department_id);
​
SELECT job_title, first_name, last_name, (salary-min_salary) as 'difference_between'
FROM employees
INNER Join jobs;

 SELECT employee_id, job_title, (end_date-start_date) as 'Dates' FROM job_history
natural JOIN jobs
WHERE department_id=90;
​
SELECT d.department_name, e.first_name, l.city 
FROM departments  d 
JOIN employees  e
ON (d.manager_id = e.employee_id) 
JOIN locations l USING (location_id);