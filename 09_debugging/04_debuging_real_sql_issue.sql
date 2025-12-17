-- DEBUGGING REAL SQL ISSUE
/* Assume that we are analyzing our monthly sales figure, but the reported figure which are seeing is unexpectedly low.
   You suspect there might be an issue with the SQL query, which are using to analyze our monthly sales. 
   
   What could be the problem?

*/

SELECT 
	DATE_TRUNC('month', order_timestamp) AS order_month,
	SUM(o.total_quantity * p.price) AS total_sales
FROM orders o
JOIN products p
	ON o.product_id = p.product_id
WHERE 
	o.order_timestamp >= '2023-01-01' AND
	o.order_timestamp < '2025-04-01'
GROUP BY
	order_month
ORDER BY
	order_month;	


SELECT *
FROM orders WHERE total_quantity isNULL

SELECT *
FROM products WHERE price IS NULL

SELECT * 
FROM orders WHERE product_id IN (1, 4)


