-- BEST PRACTICES FOR MANAGING ROLES AND PERMISSIONS
/*
	Managing roles and permission in SQL, or any database system is critical for maanging security and maintaining
	efficient access control, and ensuring that user have the appropriate level of access needed for their task.

	BEST PRACTICES
	- Principle of least privilege : This ensures that the users and roles have only the minimum level of access necessary
									 to perform their function.

	- Role hierarchies : It involve creating roles with a specific set of permissions, and then assigning these roles to 
						 other roles or users. This effectively grouping permissions into manageable units.

	- Schema-based access control : use schema based access control.

	- Regular audits and reviews 

	- Segregation of duties : Divide the responsibilities among the different roles and users to reduce the risk of unauthorized
							  access for any kind of fraudulent activities.

	- NOINHERIT and explicit role setting : this attribute prevents the role from automatically inheriting the permissions from 
											the roles it is member of. Users must explicitly set their role to one they are member
											of to use its permissions.

	- Limit superuser role usage : 	Superuser permission will grant you the full access	that this user can do anything.	If you give
									someone superuser permission, you are breaking the least privilege rule.

	- Application-specific roles : Sometimes, it's not just a user who is connected to the database. Maybe you have a website or mobile 
									application, desktop based application. Those application directly connecting to the database
									to get or push the information. In that case, you should have a specific role assigned to them
									because this is something of a programmatic way. You give them only the least privilege based 
									access control.

	- Data encryption and masking : You can also think of using the data encryption	and data masking. Sometimes when you store the PII,	
									i.e, Personal Identification Information, like account number, card details or some medical data,
									probably you can use the masking where every user cannot see that data directly.





By following these best practices, you can create a robust security model for your postgreSQL database that protects sensitive data, 
ensures user have appropriate access level, and helps maintaining the integrity and confidentiality of your database environment.
									
*/