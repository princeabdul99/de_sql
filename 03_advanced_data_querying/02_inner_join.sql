-- INNER JOIN
/*
- Intersection
- Common data
- Elimination of unmatched rows
- Efficient retrieval
- JOIN is the same as INNER JOIN
*/
-- USE CASES
-- What are the products that has been bought?
SELECT 
	name,
	description,
	total_amount
FROM orders o
INNER JOIN products p
	ON p.product_id = o.product_id;

-- Find the names of the customers who has placed orders
SELECT
	customer_name,
	city
FROM orders o
JOIN customers c
	ON c.customer_id = o.customer_id;