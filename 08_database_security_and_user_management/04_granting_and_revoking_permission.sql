-- GRANTING AND REVOKING PERMISSIONS
/* In SQL, permission control what action users or role can perform on specific database objects

TYPES OF PERMISSIONS IN POSTGRESQL

- SELECT : Allow user to read data from a view
- INSERT : Grant the ability to add new row to a table
- UPDATE : Permit the modification of a column value on a table
- DELETE : Permits the removal of row from a table
- EXECUTE : permit the execution of a stored procedure
- CONNECT: Helps to connect to a database
- CREATE : Grant the ability to create new object within a database or schema. e.g Table
- TEMP/TEMPORARY : Allow the creation of temporary table within a session


-- syntax : GRANT PERMISSION
GRANT SELECT ON <table_name> TO <user> 

GRANT INSERT, DELETE ON <table_name> TO <user>


** GRANTING PERMISSION TO ALL TABLE IN A SCHEMA
GRANT SELECT ON ALL TABLES IN SCHEMA public TO <user>

** GIVING GRANT PERMISSION TO USER TO ALLOW USER GRANT PERMISSION TO OTHERS ASWELL
GRANT SELECT ON <table_name> TO <user> WITH GRANT OPTION


-- syntax : REVOKE PERMISSION
REVOKE SELECT ON <table_name> FROM <user>

REVOKE SEELCT, INSERT ON <table_name> FROM <user>

** Revoke all permission in one shot
REVOKE ALL ON <table_name> FROM <user>
*/

GRANT SELECT ON customers TO malik01;

GRANT INSERT, DELETE ON customers TO malik01

GRANT SELECT ON ALL TABLES IN SCHEMA public TO malik01

-- User will have the capability to grant SELECT Permission on customers table to user under him (like making another admin)
GRANT SELECT ON customers TO malik01 WITH GRANT OPTION


-- Revoking SELECT and INSERT on customers table on malik01 role
REVOKE SELECT, INSERT ON customers FROM malik01

REVOKE ALL ON customers FROM malik01

