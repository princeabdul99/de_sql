-- CAPSTONE PROJECT:
-- INSURANCE CLAIMS ANALYSIS
/*
OJECTIVES
 - Database schema creation for insurance data
 - Populating database with sample insurance data
 - Analyzing claim data for insights
 - Creating index for better performance
 - Setting up roles and permissions for database security


TASK DESCRIPTION
- Database schema creation
	- Define tables: Customers, Policies, Claims and PolicyTypes.
	- Include fields such as CustomerID, PolicyID, ClaimID, PolicyTypeID, ClaimAmount, ClaimDate,
							 PolicyStartDate, PolicyEndDate, etc.


- Data population
	- Insert realistic sample data into each table, ensuring a variety of scenarios are represented,
	  such as different policy types, claim amounts, and customer profiles.

- Analytical queries
	- Write a query to calculate the total number of claims per policy type.

	- Use analytical functions to determine the monthly claim frequency and average claim amount.

- Optimization
	- Discus the creation of indexes on any columns used frequently in WHERE clauses or as join keys
	  to improve performance.

- Roles and permissions
	- Create roles: ClaimsAnalyst and ClaimsManager.
	- "ClaimsAnalyst" role should have read-only access to claims and policies data.
	- "ClaimsManager" role should have full access to claims data and the ability to update policy information.

*/