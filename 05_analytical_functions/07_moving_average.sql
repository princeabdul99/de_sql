-- MOVING AVERAGES
/* Assuming you want to understand the trend in daily temperatures in your city. To figure out whether it's getting warmer or cooler
   over time, you colect the temperature data every day for a month.
   Now, instead of looking at the raw daily temperature, you decide to calculate a 7 days moving average. This means for each day, you
   take the average of temperature on that day and the temperature of the six preceeding days.
   This smoothens out the daily flunctuation, and you can get the trend line.

   Moving Averages is a:	
    -- Statical calculation
	-- Used in various fields like finance, economics and others
	-- Helps to identify trends and patterns

	SCENARIO
	** Assume that you want to analyze the trend of order amounts over time for a specific product or category
	   to understand the sales performance.

	   A moving average can help you to find out that trend.

** Also called three-order moving average	   
*/

SELECT 
	order_id,
	customer_id,
	order_timestamp,
	total_amount,
	AVG(total_amount) OVER (PARTITION BY customer_id ORDER BY order_timestamp
	ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS mvg_avg
FROM orders;


-- Note: The biggest advantage of using the moving average in the world of deep trend analysis, with the help of this,
-- 		 you can do the trend analysis much better.

-- Also, be aware of the edge cases and its performance impact.