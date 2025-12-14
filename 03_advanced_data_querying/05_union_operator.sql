-- UNION OPERATOR
/*
- Combining results
- Removing duplicates
- Number of columns retrieved by each SELECT command, within the UNION, must be the same
*/

-- USE CASE
/* We want to find out all the records which belongs to a specific category. i.e; find all the products from
the electronics category. Also find out all the product which has been sold in more than 10 quantities.

Challenges: We need all the product names under the category. e.g: electronics, plus We need all the products is more than 10.
*/

SELECT 
	name 
FROM products
WHERE category_id = 1

UNION

SELECT 
	name
FROM products p
JOIN orders o
	ON p.product_id = o.product_id
WHERE o.total_quantity > 1;

-- USING UNION ALL TO RETRIVE DUPLICATES ALONG
SELECT 
	name 
FROM products
WHERE category_id = 1

UNION ALL

SELECT 
	name
FROM products p
JOIN orders o
	ON p.product_id = o.product_id
WHERE o.total_quantity > 1;


-- UNION vs. JOIN
/*
- Operation
	- UNION try to join two queries together. however, the join try to join two tables together,
	
- Result Structure
	- In UNION, the final result is set of rules combined vertically, whereas JOINs combined data horizontally to add more 
	  columns to the result set.
	
	** In the JOIN, the column from both the tables can come and that's its a horizontal. However, in the UNION, you try to
		copy the value from both of the results into a same column.
		
- Relationship requirement
	- JOIN operation requires a defined relationship between tables.
		** example: We are joining orders and the products table. For this, we expect that the order ID or product ID should 
		   have some kind of relationship between these two.

		   if we join order with the category, It will not work out because we are not storing the category ID in the orders table,
		   neither are we storing the order ID in the categories table. So for the JOIN, relationship has to exist. For the UNION,
		   it doesn't matter because the UNION is trying to combine the query output.

- Use context
	- You use UNION whenever you want to aggregate similar data from different tables of the queries.
	- You use JOIN whenever you need to retrieve the information from multiple table that are related with some common relationship.
*/