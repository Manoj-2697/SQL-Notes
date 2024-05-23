-- The command is used to update delete data from the table.
-- Syntax: DELETE FROM table_name.
-- This command deletes all the records within the table.
delete from coviddeaths;

-- This command deletes only the records that satisfies the condition.
-- Syntax: DELETE FROM table_name WHERE condition.
delete from coviddeaths where new_cases_per_million = 0;