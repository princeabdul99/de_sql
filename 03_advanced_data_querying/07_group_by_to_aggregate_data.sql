-- GROUP BY
/* Group BY statement group rows that has the same values into the summary rows. e,g: Like find the number of customers in each country.

- Categorize the data
- Data reduction
- Enhance reporting
- Used with aggregation functions:
	* COUNT()
	* MAX()
	* MIN()
	* SUM()
	* AVG()
*/

-- USE CASE
-- Identify customers based on the city
SELECT 
	city,
	COUNT(customer_id)
FROM customers
GROUP BY city;

-- NOTE: The practical aspect of GROUP BY would come when you create dashboards. On dashboards, you want to show the 
--		 summarized data.


/* THINGS TO CONSIDER

- Column selection :=> Be clear on what column you want to perform aggregation.
	** Understand what kind of analysis you are doing and based on that, choose the specific column.
	
- Aggregate functions :=> Using the appropriate aggregate function where necessary

- Multiple columns :=> Sometimes you're not only concern about grouping data based on one column,
					   you want to combine the data based on multiple columns. In such case, you 
					   can group the data based on multiple columns.

- Order of columns :=> The order in which you specify the columns in the GROUP BY clause can affect the 
					   the grouping and the final result, especially when using the multiple columns to 
					   group the data.

					   example: group based on city AND country or group by country OR city

- NULL values :=> Group BY treats all the null values as the same value and group them together.	

- Performance considerations :=> Grouping sometimes can be resource intensive, especially when you have a large data set.
								** Ensure that the database is properly indexed, especially on column that is being used
								   in the GROUP BY clause. That can improve the performance

*/




