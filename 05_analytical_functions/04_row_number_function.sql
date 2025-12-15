-- ROW NUMBER FUNCTIONS
-- The Row number function is a window function that assigns a unique number to each row in the result set according to the specified order.

/* HOW ROW_NUMBER FUNCTION WORKD

- Assigns a unique sequential integer to each row
- Numbering start from 1 and increments with each subsequent row
- 

USE CASE
	Imagine you want to analyze the sequence of orders place by each customers to identify which was their 
	first order, second order, third order etc. This can be insightful for understanding customer behavior
	such as how quickly they place the order, or when they place the last order, what is the gap between 
	these multiple orders and what could be the pattern?


SCANARIO
	We want to assign the unique number to every order which was placed by every customer
*/
SELECT
	order_id,
	customer_id,
	order_timestamp,
	ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_timestamp ASC) AS order_seq_num
FROM orders;

/* BUSINESS USECASES

- Useful for customer journey analysis
- It allow businesses to track and understand the progression of each customer's engagement over time through their order history.
- You might also be interested in knowing what customer has ordered previously or what customer will order next.
*/


	