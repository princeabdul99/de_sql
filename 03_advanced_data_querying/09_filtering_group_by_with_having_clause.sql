-- FILTERING GROUP BY RESULTS WITH THE HAVING CLAUSE

-- The HAVING clause in SQL is used to filter the groups of data written by the GROUP BY operation.
/*
- Combining aggregation and filtering
- Fine-grained control
*/

-- USE CASE
/*
Example.
	* Business owner looking to pull a report
		- Group by city
		- Filter by cities with more than 100 customers
*/

SELECT 
	city,
	COUNT(*)
FROM customers
GROUP BY city
HAVING COUNT(*) > 100;

-- WHERE vs HAVING
-- WHERE clause comes before the GROUP BY clause, which could have filter out the record and we don't need grouping based on that.
-- When using GROUP BY, if you have to filter on the Grouped data, then you have to use the HAVING clause.
-- TIPS: 
--   The HAVING will come after the GROUP BY, and GROUP BY always come after the WHERE clause.
--   WHERE filter the record based on the rows, HAVING filter the record based on the group data.


-- USE CASE
-- Find all categories for which product count is more than one
SELECT
	c.category_id,
	c.name,
	COUNT(p.product_id)
FROM categories c
JOIN products p
	ON p.category_id = c.category_id
GROUP BY c.category_id
HAVING COUNT(p.product_id) > 1;




