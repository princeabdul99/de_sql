-- CHALLENGE
/*

1. Create a view to get the product name along with the category name.
2. Display all the products with their corresponding category names.
*/

CREATE VIEW product_detail_view 
AS 
SELECT 
	p.name AS product_name,
	c.name AS category_name
FROM products p
JOIN categories c
	ON p.category_id = c.category_id;


SELECT *
FROM product_detail_view;