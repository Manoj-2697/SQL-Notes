-- The command is used to insert data into existing table.
-- Syntax: INSERT INTO table_name VALUES (value1, value2, ...).
-- This type of syntax is used when data needs to be inserted into entire columns.
INSERT INTO coviddeaths values (
'AFG','Asia','Afghanistan','2020-03-01',41128772,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
);

-- To INSERT data into specific columns, the following syntax will be followed.
-- Syntax: INSERT INTO table_name (column1, column2, ...)  VALUES (value1, value2, ...).
INSERT INTO coviddeaths (iso_code, continent, location, date, population)
VALUES ('AFG','Asia','Afghanistan','2020-04-01',41128772)

-- To INSERT data from another table, the following syntax will be followed.
-- Syntax: INSERT INTO table1 (column1, column2, ...)
-- SELECT column1, column2, ...  FROM table_name.
-- This command inserts entire data from source table into the destination table.
-- The schema of both the tables must match for this sort of insertion.
INSERT INTO coviddeaths 
SELECT * FROM covidvaccinations;

-- To INSERT data from another table, the following syntax will be followed.
-- Syntax: INSERT INTO table1 (column1, column2, ...)
-- SELECT column1, column2, ...  FROM table_name WHERE condition.
-- This command inserts condition satisfied data from source table into the destination table .
-- The schema of both the tables must match for this sort of insertion.
INSERT INTO coviddeaths 
SELECT * FROM covidvaccinations
WHERE iso_code like 'IND';