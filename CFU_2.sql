CREATE DATABASE IF NOT EXISTS cfu_2;

USE cfu_2;

-- Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id.  
CREATE TABLE IF NOT EXISTS countries (
COUNTRY_ID VARCHAR(2) ,
COUNTRY_NAME VARCHAR(40),
REGION_ID decimal(10, 0)
);

DESCRIBE countries;



-- Write a SQL statement to add the column country_code from the table countries

    ALTER TABLE countries
    ADD COUNTRY_code int;
    DESCRIBE countries;

--  Write a SQL statement to drop the column country_code from the table countries.

ALTER TABLE countries
    DROP COUNTRY_code;
    DESCRIBE countries;
    
-- Write a SQL statement to insert a record with your own value into the table countries against each columns.

INSERT INTO countries
VALUES(1234,'greece','t532134');
DESCRIBE countries;

--  Write a SQL statement to insert one row into the table countries against the column country_id and country_name.
ALTER table COUNTRIES
add COLUMN COUNTRY_TYPE varchar(5);
describe COUNTRIES;

