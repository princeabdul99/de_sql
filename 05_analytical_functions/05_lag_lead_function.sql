-- LEAD() and LAG

-- Considering E-Commerce database. If we want to analyze whether the demand for a specific product is increasing or decreasing,
-- or it is unstable. It can be understand by analysing the change in total quantity of our successive or consecutive orders.

-- LAG and LEAD functions can be deployed to track the changes in sequential order data.

/*
- LAG() allows you to retrieve data from the previous row
- LEAD() allows you to retrieve data from the next row

-- e.g; If we want to compare the current row's value with the previous or preceeding row.
*/	

-- USE CASE
-- Find out orders based on the order_timestamp for each customer
SELECT 
	customer_id,
	order_id,
	order_timestamp,
	LAG(order_timestamp, 1) OVER (PARTITION BY customer_id ORDER BY order_timestamp) AS prev_order
FROM orders;


SELECT 
	customer_id,
	order_id,
	order_timestamp,
	LEAD(order_timestamp, 1) OVER (PARTITION BY customer_id ORDER BY order_timestamp) AS next_order
FROM orders;



-- Note: Handle NULL values properly on boundary condition or edge case