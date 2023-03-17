USE store;
 -- Get top 3 customers
SELECT *
FROM customers
LIMIT 3;

-- Exercise: Get top 3 loyal customers
USE store;

SELECT*
FROM customers
ORDER BY points DESC
LIMIT 3;

-- thE LIMIT clause should always come at the end.
-- The order of the clauses matter. SELECT -> FROM -> optionally WHERE -> optionally ORDER BY -> LIMIT
-- Not following the order gives error.
 
 USE exercise_hr;
 
 EXPLAIN SELECT * 
 FROM employees
 WHERE first_name = "LEX";
 
 SELECT * 
 FROM employees
 WHERE first_name = "LEX";
 
 EXPLAIN SELECT * 
 FROM employees
 WHERE employee_id = 102;
 
 EXPLAIN SELECT *
 FROM employees
 WHERE last_name = 'De Haan';
 
-- Add a new column 'whatsapp_no' with datatype int

