-- The command is used to drop a table within a database.
-- Syntax: DROP TABLE table_name.
DROP TABLE covidvaccinations;

-- Considerations before dropping a table:
-- This action is Irreversible, i.e., unlike DELETE and TRUNCATE, once a table is dropped, the action cannot be rolled back.
-- Cascading Effects: Dropping a table that is referenced by a foreign key constraint will also drop that foreign key relationship. Similarly, any dependent objects like views, stored procedures, or functions that reference the table might be affected.
-- Permissions: This requires DROP privilege on the table.
-- Limitations
-- Foreign Key Constraints: If the table is referenced by foreign keys from other tables, dropping it might require using CASCADE to also drop the dependent foreign keys.
-- Replication: Tables published using transactional or merge replication should be carefully considered before dropping.
-- Dependency: Dropping a table will invalidate any dependent objects such as views, procedures, and functions that reference the table.
-- Syntax: DROP TABLE table_name CASCADE.
DROP TABLE cascadedtable CASCADE;

-- This command is also used to drop a database.
-- Syntax: DROP DATABASE database_name.
drop database covid;