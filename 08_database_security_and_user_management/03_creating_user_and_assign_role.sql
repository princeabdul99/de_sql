-- CREATING USERS AND ASSIGNING ROLES
/* creating user and assign roles with login capabilities

** Syntax:  CREATING USER
CREATE ROLE <user> WITH login

** Syntax:  CREATING USER WITH AUTHENTICATION
CREATE ROLE <user> WITH login PASSWORD <password>

** Syntax:  CREATING USER WITH AUTHENTICATION AND ROLE
CREATE ROLE <user> WITH login PASSWORD <password> <previlege>


** Use the ALTER command to change the permission to a user
** Use the DROP command to delete the user
    DROP ROLE <user>

*/
-- Simplest form of creating a user
CREATE ROLE mike WITH login;

-- Creating a user and assigning password.
CREATE ROLE musa WITH login PASSWORD 'musa@123';

-- Creating a user with specific previlege. e.g; A user who has all the access
CREATE ROLE malik WITH login PASSWORD 'malik@123' SUPERUSER;

-- Creating a user with specific previlege. e.g; A user who has a limited access. (create database previlege)
CREATE ROLE malik01 WITH login PASSWORD 'malik@123' CREATEDB;

-- Creating a user with specific previlege. e.g; A user who has a limited access. (create role previlege and can assign )
CREATE ROLE malik02 WITH login PASSWORD 'malik@123' CREATEROLE;

-- Creating a role which is having some limited purpose. Create a role with some validity of time.
CREATE ROLE malik03 WITH login PASSWORD 'malik@123' VALID UNTIL '2025-12-31';

-- Creating a role where you want to restrict role with the number of connections they can create.
CREATE ROLE malik04 WITH login PASSWORD 'malik@123' CONNECTION LIMIT 10;

-- Creating a new user with same previleges as an existing user. You create the clone functionality of the existing user.
CREATE ROLE malik05 WITH login PASSWORD 'malik@123' IN ROLE malik04;

-- Create user with a specific command using username and password. This is just another way of creating user.
CREATE USER malik06 WITH password 'malik@123';







