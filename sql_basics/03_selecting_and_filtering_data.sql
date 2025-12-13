SELECT * FROM categories;
SELECT * FROM orders;
SELECT * FROM customers;
SELECT * FROM products;

-- SELECTING & FILTERING DATA
SELECT 
	name,
	price
FROM products;

SELECT *
FROM orders
WHERE total_amount > 100;

SELECT *
FROM customers
WHERE customer_name LIKE 'A%';