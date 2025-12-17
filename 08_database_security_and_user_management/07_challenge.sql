-- CHALLENGES
/*
Our retail have hired a new team member and the name of that team member is Bob. Our retail store team wants to give Bob
some specific permissions to view the product details.

- Create a user for Bob and grant him the select permission.


	* New team member "Bob"
	* Grant access to view product details
*/

CREATE ROLE bob WITH login PASSWORD 'bob@123';

GRANT SELECT ON products TO bob; 