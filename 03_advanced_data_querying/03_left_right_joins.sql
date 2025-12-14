-- LEFT JOIN
/*
- Returns all rows from the left table
- Matched rows the right table
*/

-- USE CASE

-- Get all customers names along with the total amount for the orders which they have paid. 
-- ** We dont want to lose any customer if customer has not bought anything, show zero total amount.
SELECT 
	customer_name, 
	total_amount
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id;

-- Identify product which has been sold. If they have been sold, we want to see the total quantity of these product got sold.
SELECT 
	name, 
	total_quantity
FROM products p
LEFT JOIN orders o
	ON p.product_id = o.product_id;

-- RIGHT JOIN
/*
- Returns all rows from the right table
- Matched rows the left table
*/
-- USE CASE
-- Identify product which has been sold. If they have been sold, we want to see the total quantity of these product got sold.
SELECT 
	name, 
	total_quantity
FROM orders o
RIGHT JOIN products p
	ON p.product_id = o.product_id;