-- RUNNING TOTAL
-- Running totlas usese SUM() and OVER() functions.
-- * It provides a running sum of specific column as you go through the dataset.
-- It's a dynamic way to understand cummulative values over a sequence of events.
-- To calulate the running total, SUM function is used to add the value. And use of
-- OVER function will help you to partition the data and create a segment of a data over your entire dataset.

-- USE CASE
/* Imagine you want to analyze the cumulative total of orders placed by each customer over a time.
This can help you in understanding customer spending pattern and identifying the key customers based on their order history.
*/

SELECT
	customer_id, 
	order_id,
	total_amount,
	order_timestamp,
	SUM(total_amount) OVER(PARTITION BY customer_id ORDER BY order_timestamp ) AS running_total
FROM orders;


-- HOW THE TOTAL QUANTITY OF EACH PRODUCT GOT SOLD
-- So that we can identify, which products are moving fast and which product are not. So that we can order
-- from our vendor accordingly.

SELECT
	product_id,
	order_timestamp,
	total_quantity,
	SUM(total_quantity) OVER (PARTITION BY product_id ORDER BY order_timestamp) AS running_qty
FROM orders;


-- NOTE. Running total can be helpful for analyzing the trends, identifying point of interest, or understanding the
-- 		 cummulative impact of values over time.







	