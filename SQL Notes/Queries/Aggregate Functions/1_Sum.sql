-- This command is used to calculate the sum of a column. 
-- Syntax: SELECT SUM(column_name) FROM table_name.
SELECT sum(total_deaths) DEATHS from coviddeaths;

--Note: Since the aggregation returns a single calculated record, 
-- if many columns needs to be selected, then either use GROUP BY
-- or use SUB QUERIES, else the query will be errored.
SELECT iso_code, sum(total_deaths) DEATHS from coviddeaths
GROUP BY iso_code;