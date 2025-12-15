-- CHALLENGE
/*
On the product tags column, you will find that the tags contain the multiple tag value, which is separated by a comma.
However, when the team was analysing, they find that the names are improper. Some of them are uppercase, some lowercase, 
this does not look professional.
So, for reporting purposes, team has been asked to print all these tag values along with the product ID in such a manner
that look more decent like your normal title case.

TASK:
	- Currently, product tags in the Product table are stored as a single string with each tag separated by commas-
	for example. "electronics, portable, tech"

	- Help the design team adjust the tags to be like this: "Electronics, Portable, Tech"
*/

SELECT 
	product_id,
	name,
	price,
	description,
	INITCAP(tags) AS tags,
	category_id,
	supplier
FROM products;


