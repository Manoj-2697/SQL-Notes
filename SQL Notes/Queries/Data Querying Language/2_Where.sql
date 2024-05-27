-- This command is used to filter the data in the table.
--  If the condition specified in the WHERE clause satisfies, then only it returns the specific value from the table.
-- WHERE clause is not only used in SELECT statement, but it is also used in UPDATE, DELETE statement, etc.
-- Syntax: SELECT column1, column2, ... FROM table_name WHERE condition.
select * from coviddeaths
where total_cases <> 0;

-- Aggregate function using WHERE condition.
select min(total_cases) minCases from coviddeaths
where total_cases <> 0;

-- WHERE command within INSERT INTO function.
-- To INSERT data from another table, the following syntax will be followed.
-- Syntax: INSERT INTO table1 (column1, column2, ...)
-- SELECT column1, column2, ...  FROM table_name WHERE condition.
-- This command inserts condition satisfied data from source table into the destination table .
-- The schema of both the tables must match for this sort of insertion.
INSERT INTO coviddeaths 
SELECT * FROM covidvaccinations
WHERE iso_code like 'IND';

-- WHERE command within UPDATE function.
-- This command updates only the records that satisfies the condition.
-- Syntax: UPDATE table_name SET column1 = value1, column2 = value2, .... WHERE condition.
UPDATE coviddeaths SET total_cases = 1 WHERE total_cases = 0;