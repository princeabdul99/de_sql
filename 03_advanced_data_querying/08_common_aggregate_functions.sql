-- AGGREGATE FUNCTIONS
/* Aggregate function effectiveness comes along with the group by. 
** Note: Aggregate functions goes hand-in-hand

Common Aggregation Functions:
	* COUNT()
	* MAX()
	* MIN()
	* SUM()
	* AVG()
	* STDDEV()
	
-- These functions are critical for data analysis and data engineering in SQL 
*/

-- COUNT FUNCTION
SELECT 
	COUNT(*) AS Total_Row_Count
FROM customers;

SELECT 
	COUNT(customer_id) AS Total_Row_Count
FROM customers;

-- **Note: count(<index column>) has better performance that count(*)

-- To Identity Unique Rows
SELECT
	COUNT(DISTINCT customer_id) AS Total_Row_Count
FROM customers;


-- SUM FUNCTION
SELECT
	SUM(total_amount) AS Total_Amount
FROM orders;	

-- MAX FUNCTION
SELECT
	MAX(total_amount) AS Max_Total_Amount
FROM orders;

-- MIN FUNCTION
SELECT
	MIN(total_amount) AS Min_Total_Amount
FROM orders;

-- AVG FUNCTION
SELECT
	AVG(total_amount) AS Avg_Total_Amount
FROM orders;

-- STDDEV FUNCTION
SELECT
	STDDEV(total_amount) AS Stddev_Total_Amount
FROM orders;



