-- Create a new database named "database_name"
CREATE DATABASE database_name;

-- Create a new table named "tablename" with columns "column1" and "column2"
CREATE TABLE tablename (
    column1 datatype,
    column2 datatype,
    ...
);

-- Insert a new row into the "tablename" table with values for "column1" and "column2"
INSERT INTO tablename (column1, column2, ...) VALUES (value1, value2, ...);

-- Select all rows from the "tablename" table
SELECT * FROM tablename;

-- Update the values of "column1" and "column2" in the "tablename" table where the condition is true
UPDATE tablename
SET column1 = new_value1, column2 = new_value2
WHERE condition;

-- Delete rows from the "tablename" table where the condition is true
DELETE FROM tablename WHERE condition;

-- Select all rows from the "tablename" table where the condition is true
SELECT * FROM tablename WHERE condition;

-- Select all rows from the "tablename" table and order them by "column_name"
SELECT * FROM tablename ORDER BY column_name;

-- Select "column1" and "column2" from "table1" and "table2" where the columns match
SELECT column1, column2
FROM table1
INNER JOIN table2 ON table1.column = table2.column;

-- Create an index named "index_name" on the "tablename" table for the "column_name" column
CREATE INDEX index_name ON tablename (column_name);

-- Select "column1" and the sum of "column2" from the "tablename" table and group them by "column1"
SELECT column1, SUM(column2) FROM tablename GROUP BY column1;

-- Select the average value of "column_name" from the "tablename" table
SELECT AVG(column_name) FROM tablename;

-- Add a new column named "column_name" to the "tablename" table with the specified datatype
ALTER TABLE tablename
ADD column_name datatype;

-- Drop the "tablename" table
DROP TABLE tablename;

-- Drop the "database_name" database
DROP DATABASE dbname;




-- Select all distinct values from the "column_name" column in the "table_name" table
SELECT DISTINCT column_name FROM table_name;

-- Select the top 10 rows from the "tablename" table
SELECT TOP 10 * FROM tablename;

-- Count the number of rows in the "table_name" table
SELECT COUNT(*) FROM table_name;

-- Select the minimum value from the "column_name" column in the "table_name" table
SELECT MIN(column_name) FROM table_name;

-- Select the maximum value from the "column_name" column in the "table_name" table
SELECT MAX(column_name) FROM table_name;

-- Select the sum of all values in the "column_name" column in the "table_name" table
SELECT SUM(column_name) FROM table_name;

-- Select all values from the "column_name" column in the "table_name" table where the value contains the "search_term" string
SELECT column_name FROM table_name WHERE column_name LIKE '%search_term%';

-- Select all values from the "column_name" column in the "table_name" table where the value is between "value1" and "value2"
SELECT column_name FROM table_name WHERE column_name BETWEEN value1 AND value2;

-- Select all values from the "column_name" column in the "table_name" table where the value is in the list of values (value1, value2, ...)
SELECT column_name FROM table_name WHERE column_name IN (value1, value2, ...);

-- Select all values from the "column_name" column in the "table_name" table where the value is not in the list of values (value1, value2, ...)
SELECT column_name FROM table_name WHERE column_name NOT IN (value1, value2, ...);

-- Select all values from the "column_name" column in the "table_name" table where the value is null
SELECT column_name FROM table_name WHERE column_name IS NULL;

-- Select all values from the "column_name" column in the "table_name" table where the value is not null
SELECT column_name FROM table_name WHERE column_name IS NOT NULL;

-- Select all values from the "column_name" column in the "table_name" table where both "condition1" and "condition2" are true
SELECT column_name FROM table_name WHERE condition1 AND condition2;

-- Select all values from the "column_name" column in the "table_name" table where either "condition1" or "condition2" is true
SELECT column_name FROM table_name WHERE condition1 OR condition2;

-- Select all values from the "column_name" column in the "table_name" table where "condition" is not true
SELECT column_name FROM table_name WHERE NOT condition;

-- Select all values from the "column_name" column in the "table_name" table where the value is equal to the value of the "column_name" column in the "other_table" table where "condition" is true
SELECT column_name FROM table_name WHERE column_name = (SELECT column_name FROM other_table WHERE condition);

-- Select all values from the "column_name" column in the "table_name" table where there exists a value in the "column_name" column in the "other_table" table where "condition" is true
SELECT column_name FROM table_name WHERE EXISTS (SELECT column_name FROM other_table WHERE condition);

-- Select "column1" and the count of "column2" from the "table_name" table and group them by "column1" where the count of "column2" is greater than 10
SELECT column1, COUNT(column2) FROM table_name GROUP BY column1 HAVING COUNT(column2) > 10;

-- Select the distinct "salary" values from the "employees" table, order them in descending order, and return the fifth value
SELECT DISTINCT salary FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 4;

-- Select the average "salary" value as "avg_salary" and the "department" column from the "employees" table, group them by "department", order them in descending order by "avg_salary", and return the fifth value
SELECT AVG(salary) AS avg_salary, department FROM employees GROUP BY department ORDER BY avg_salary DESC LIMIT 1 OFFSET 4;
