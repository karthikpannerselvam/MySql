-- USE exercise_hr;

-- show tables;

-- SELECT first_name AS "First Name", last_name AS "Last Name"
-- FROM employees;

-- SELECT first_name AS "First Name", last_name AS "Last Name", salary AS Salary , salary*15/100 AS "PF"
-- FROM employees;
-- SELECT department_id
-- FROM employees;

-- -- SELECT*
-- -- FROM customers;

-- -- SELECT*
-- -- FROM customers
-- -- ORDER BY first_name;

-- -- SELECT*
-- -- FROM customers
-- -- ORDER BY first_name DESC;

-- /*    
-- */
-- SELECT 1,2;

-- SELECT 1+2;

-- SELECT 100-50/2;

/*
order of arithmetic operation;
()
/
*
+
-
*/

-- SELECT 100-50 / 2 AS value;


-- SELECT 100-50 / 2 AS 'answer value';


-- SELECT first_name, last_name, city, state,points,points + 10 AS 'new ponts'
-- FROM customers;

-- SELECT 171*214+625;

USE store;
SELECT*
FROM customers
WHERE city = 'FL';

SELECT *
FROM customers
WHERE points > 3000;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

SELECT*
FROM customers
WHERE state != 'FL';

SELECT *
FROM customers
WHERE points > 3000 AND birth_date > '1990-01-01';

SELECT *
FROM customers
WHERE points > 3000 OR birth_date > '1990-01-01';

-- born after 1889 or points > 1000 living in virginia(VA)
SELECT *
FROM customers
WHERE  birth_date > '1889-01-01'OR points > 1000  AND state = 'VA';

-- ORDER;
-- 1. NOT
-- 2. AND
-- 3. OR

-- SELECT *
-- FROM customers
-- WHERE  birth_date > '1989-01-01' AND  points > '1000' OR state = 'VA';

-- SELECT *
-- FROM customers
-- WHERE NOT (state ='FL');

USE store;

SELECT *
FROM customers
WHERE state IN ('FL', 'VA', 'GA');

-- 09-02-2023 
-- quantity in stock equal to 49, 38, 72
SELECT*
FROM products
WHERE quantity_in_stock IN ('38', '49', '72');

SELECT*
FROM products
WHERE quantity_in_stock != 72;

SELECT*
FROM customers
WHERE points>3000 AND points < 10000;

-- between 1/1/1990 and 1/1/2000
SELECT*
FROM customers	
WHERE birth_date>'1990-01-01' AND birth_date<'2000-01-01';

-- 3, 1. addresses contain TRAIL or AVENUE

-- LIKE method %
SELECT*
FROM customers
WHERE address LIKE '%Trail' OR 	address LIKE '%Avenue';

--  3, 2. phone numbers end with 9 
SELECT*
FROM customers
WHERE  phone LIKE '%9';

-- 3, 3. phone numbers do not end with 9
SELECT*
FROM customers
WHERE  phone NOT LIKE '%9';

-- 4. Get the customers whose

-- 1. first names are ELKA or AMBUR
SELECT*
FROM customers
WHERE first_name LIKE 'Elka' OR first_name LIKE 'Ambur';

-- 2. last names end with EY or ON
SELECT*
FROM customers
WHERE last_name REGEXP 'ey$|on$';

-- 3. last names start with MY or contains SE
SELECT*
FROM customers