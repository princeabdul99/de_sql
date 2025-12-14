-- FULL OUTER JOIN
/*
- Returns all matching records
- Handling of unmatched rows
*/

-- USE CASE
-- JOINING 2 TABLES

SELECT 
	customer_name, 
	total_quantity
FROM customers c
FULL OUTER JOIN orders o
	ON c.customer_id = o.customer_id;

-- JOINING MORE THAN 2 TABLES
-- We want to findd out the customer name, the product name and the total quantity that was bought or total amount paid

--**Hint: join two table first and use the result to join the third table

SELECT 
	customer_name,
	name,
	total_quantity
FROM customers c
FULL OUTER JOIN orders o
	ON c.customer_id = o.customer_id
FULL OUTER JOIN products p
	ON p.product_id = o.product_id;


/* POINTS TO CONSIDER WHILE JOINING

- Understand the data
- Clear join condition
- Be aware of nulls
- Performance considerations
- Filtering data
- Ambiguous column name
- Data redundancy
- Test your queries
*/