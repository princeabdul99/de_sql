-- USING ROLE FOR PERMISSION MANAGEMENT
/* Previously, we created role interms of there user. Here, we will create role interms of a group. e,g; 'sales team'

syntax:
 CREATE ROLE <role_name>;

Note: This are just role without permissions. 

Best practice: You should choose the clear and descriptive names for your roles. Example, sales team, admins, product manager. etc
Generally, organize the roles around the functions or departments who is going to do the permission management. It should align 
	with the organization structure.

example: 
 sales team: All read permission to be granted
 GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC TO sales_team;

 admin: granting an admin privileges
 GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA PUBLIC TO admins


*The advantage of having this kind of role management is it give you this scalability. Makes it easier to manage large team.


CREATING ROLE HIERARCHY
CREATE ROLE sales_managers IN ROLE sales_team


*/

CREATE ROLE sales_team;

CREATE ROLE admins;

-- Grant permission to sales team
GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC TO sales_team;

-- Grant an admin privilege to perform any actions
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA PUBLIC TO admins


-- ROle Heirarchy
CREATE ROLE sales_managers IN ROLE sales_team;











