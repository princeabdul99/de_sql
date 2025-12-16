-- CREATING VIEWS
/* Syntax:

CREATE VIEW view_name AS
SELECT col1, col2, ...
FROM table_name
WHERE condition;

*/
-- USE CASE
-- Assuming you want to create a view to summarize the orders for each customers, which shows 
-- the total number of orders and total amount spent.

CREATE VIEW customer_order_summary AS
SELECT 
	customer_id,
	COUNT(order_id),
	SUM(total_amount)
FROM orders
GROUP BY customer_id;

SELECT *
FROM customer_order_summary;