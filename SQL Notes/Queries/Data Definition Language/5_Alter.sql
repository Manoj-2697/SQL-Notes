-- The command is used to alter the schema a table within a database.
-- Syntax: ALTER TABLE table_name ADD column1 datatype.
ALTER TABLE coviddeaths
ADD dummy_column varchar(10);

-- The schema can be altered by adding multiple columns.
-- Syntax: ALTER TABLE table_name ADD (column1 datatype, column2 datatype,...).
ALTER TABLE coviddeaths
ADD (dummy_column2 varchar(10),
dummy_column3 varchar(10));

-- This command modifies the data type of the existing column.
-- Syntax: ALTER TABLE table_name MODIFY COLUMN column1 datatype.
ALTER TABLE coviddeaths
MODIFY COLUMN dummy_column2 int;

-- This command modifies the constraint of the existing column.
-- Syntax: ALTER TABLE table_name MODIFY COLUMN column1 datatype.
-- For adding NOT NULL constraint, the following syntax needs to be followed.
ALTER TABLE coviddeaths 
MODIFY COLUMN dummy_column varchar(50) NOT NULL;

-- This command drops the existing column in a table.
-- Syntax: ALTER TABLE table_name DROP COLUMN column1.
ALTER TABLE coviddeaths
DROP dummy_column3;

-- This command drops the constraint in existing column in a table.
-- Syntax: ALTER TABLE table_name DROP CONSTRAINT constraint name.
-- For dropping NOT NULL constraint, the following syntax needs to be followed.
ALTER TABLE coviddeaths
MODIFY dummy_column varchar(50);