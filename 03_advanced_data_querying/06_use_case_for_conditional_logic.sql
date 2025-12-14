-- CASE EXPRESSION
-- Case statement is like a decision making tools
/*
- Can have multiple conditions
- Looks for first match
- Return value in else clause for no match

-- SYNTAX
SELECT
	column_name,
	CASE
		WHEN condition1 THEN result1
		WHEN condition2 THEN result2
		ELSE default_result
	END AS alias_name
FROM
	table_name

*/
-- USE CASE
-- Assuming on the products table, we have many products. some are cheap, some affordable and some very costly. Write a query which 
-- will check the price of every product and return whether it is cheap, whethe affordable or whether it is expensive.


SELECT 
	name,
	description,
	price,
	CASE
		WHEN price < 100 THEN 'Cheap'
		WHEN price > 100 AND price < 500 THEN 'Affordable'
		ELSE 'Expensive'
	END AS productType		
FROM products;

-- NOTE: Whenever you want to have multiple conditions and you want to get the result based on this multiple condition, the
--		 you can use the power of the case statement which works like if, else if, or switch case.
