-- CHALLENGE
/*
A sale is about to come and we have a summer special offer we have to put for the electronics item. So help the team find out
all these product IDs along with their name.

Task:
- Find all the product names along with their ID numbers that belong to category called "Electronics"
*/


SELECT
	p.product_id,
	p.name
FROM products p
JOIN categories c
	ON c.category_id = p.category_id
WHERE c.name = 'Electronics';
