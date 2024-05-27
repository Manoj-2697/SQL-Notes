-- This command arranges identical data into groups.
-- More oftern, this command is used whenever any aggregarions needs to be done on each groups.
-- Syntax:SELECT column1, column2, ... FROM table_name1 GROUP BY column1, column2, ....
-- When ever GROUP BY is used, the column needs to be specified within the SELECT clause.
select iso_code, count(*) from coviddeaths
group by iso_code;


-- GROUP BY using WHERE condition.
-- Syntax:SELECT column1, column2, ... FROM table_name1 WHERE condition GROUP BY column1, column2, ....
select iso_code, count(*) from coviddeaths
where new_cases_per_million <> 0
group by iso_code;