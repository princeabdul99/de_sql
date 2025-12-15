-- DENSE_RANK FUNCTION
-- It assign a rank to each row within a partition of a result set.
/*
	The most important thing about DENSE_RANK() is, it provides no gaps in the ranking values. 

	- Consecutive ranks are not skipped
	- Even if rows have the same values

	USE CASES**
	Imagine that you want to analyze your sales data to understand the ranking of orders for each customer,
	but this time, you want to ensure a continuos sequence of the rank will come even where there are ties.

	i.e: Orders with the same total amount whenever occur, you should not skip the rank.

	This could an effective or important analysis you want to do because you might be assigning some rewards
	or points based on the rank somebody achieves and therefore, you dont want to skip any levels because of
	these ties.

	
*/

-- Scenario
-- Ex. We want to have our orders get ranked based on the order amount
SELECT 
	customer_id,
	DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) as order_rank,
	total_amount
FROM orders;	

	