-- The command is used to update data in an existing table for the affected records.
-- Syntax: UPDATE table_name SET column1 = value1, column2 = value2, .... .
-- This command updates all the records within the column.
UPDATE coviddeaths SET weekly_hosp_admissions_per_million = 10;

-- This command updates only the records that satisfies the condition.
-- Syntax: UPDATE table_name SET column1 = value1, column2 = value2, .... WHERE condition.
UPDATE coviddeaths SET total_cases = 1 WHERE total_cases = 0;