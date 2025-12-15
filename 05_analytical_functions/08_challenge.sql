-- CHALLENGE
-- Find the cumulative sales volume of each product over time.

-- Hint: The running quantity for each product ID based on order timestamp column

SELECT
	product_id,
	order_timestamp
	total_quantity,
	SUM(total_quantity) OVER (PARTITION BY product_id ORDER BY order_timestamp) AS running_qty
FROM orders;	