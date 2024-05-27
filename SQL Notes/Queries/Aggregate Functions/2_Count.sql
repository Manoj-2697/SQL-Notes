-- This command returns the number of rows that match a specified criteria.
-- This is used when count of a record is recorded in a certain table’s column.
-- There are two types of count function; COUNT(*) and COUNT(column).
-- COUNT(*) counts all the rows in the target table whether columns contain null values or not.
-- COUNT(column) counts the rows in the column of a table excluding null.
-- Syntax: SELECT COUNT(*) FROM table_name.
-- SELECT COUNT(column_name) FROM table_name.
SELECT count(*) from coviddeaths;
SELECT count(total_cases) from coviddeaths;