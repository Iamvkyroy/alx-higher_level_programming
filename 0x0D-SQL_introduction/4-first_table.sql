-- script that creates a table called first_table in the current database in my MySQL server.
-- The database name will be passed as an argument of the mysql command
-- If the table first_table already exists, my script should not fail
-- first_table description:
--     	 id INT
--       name VARCHAR(256)

CREATE TABLE IF NOT EXISTS first_table (id INT, name VARCHAR(256));
