-- This command is used to sort the result from a SELECT statement in ascending or descending order. 
-- It sorts the records in ascending order by default. 
-- If the result needs to be sorted in descending order, append DESC keyword after the column names.
-- Syntax: SELECT column1, column2, ... FROM table_name
-- ORDER BY column1, column2, ... ASC/DESC.
-- Result will be sorted in ascending order.
SELECT * from coviddeaths
order by total_cases;

-- Result will be sorted in descending order.
SELECT * from coviddeaths
order by total_cases DESC;