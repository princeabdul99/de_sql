 -- PERFORMANCE TUNNING TECHNIQUES
 /*
 Database queries need to locate data efficiently. Optimizing SQL queries in PostgreSQL involves various 
 strategies to enhance the performance and ensure efficient data retrieval.

BASIC PERFORMANCE TUNNING TECHNIQUES

- Use indexing
	e.g: CREATE INDEX idx_cust ON ORDERS(customer_id, order_timestamp)
		 SELECT * FROM orders WHERE customer_id = 1 ORDER BY order_timestamp DESC	

- Choosing appropriate data types
	e,g: if you just store the order ID, if you are using a big integer and you don't have more than 1,000 or 10,000 orders,
		 then instead of using the big int, you could use the integer. That will make things faster.

- Avoid SELECT *

- Limit the data returned
 	e.g: SELECT * FROM orders WHERE customer_id = 1 ORDER BY order_timestamp DESC LIMIT 2

- Optimize subquery using CTE (common table expression)



ADVANTAGES OF OPTIMIZATION

 - Reduced redundancy
 - Improved readability
 - Scalability
 - Efficiency
 

** Always assess the specific requirements and structure of your database to choose the most suitable strategy.




 
 */