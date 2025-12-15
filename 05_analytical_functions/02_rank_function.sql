-- RANK FUNCTION
-- A window function that assigns a rank to each row within a partition of a result set.
-- The Rank of a row is one plus the number of ranks that comes before it.
-- example: In a school setting, Students are ranked based on their exam result.

-- Rank is useful in a scenario where you want to compare items accross some ordered groups.

-- Assigns a unique rank to each distinct row based on the specified order
-- Ranks are not consecutive
-- Ranking values have gaps when there are ties.

-- Scenario
-- Ex. We want to have our orders get ranked based on the order amount

SELECT 
	customer_id,
	RANK() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS order_rank,
	total_amount
FROM orders;	

/* BUSINESS USECASES

- When identifying your top performing products
- You want to identify the top orders
- Or you want to make some business decision based on it.
*/







