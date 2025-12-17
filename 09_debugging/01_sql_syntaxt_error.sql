-- SQL SYNTAX ERROR
/*
Understanding SQL Syntax error is crucial for anyone working with database.

common sql errors

typo:
	selec * from customer

placememt of different keywords:
	select * where city = 'City' from customer

missing single quote or string comparison:
	select * from customer where city = city1

not closing open parentesis:
	select * from customer where city in ('City1', 'City2'

performing operation on wrong data type
	select AVG(name) from customers;

not joinning two tables on the correct column:
	select * from orders join customers on ..

DIAGNOSING SQL SYNTAX ERROR
- View the Error messages.
- Use SQL linters/formatters
- Break down the query
- Consult documentation

SQL SYNTAX ERRORS CHECKLIST
- Careful review on written query
- Check SQL keywords 
- Review identifiers
- Validate parentheses
- Confirm data types
- Syntax reference

*/
