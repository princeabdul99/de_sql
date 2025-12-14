-- AND : Retrieve rows that satisfy both condition1 and condition2
SELECT *
FROM products
WHERE price > 100
AND category_id = 2;





-- OR : Retrieve rows that satisfy either condition1 or condition2 or both.
SELECT *
FROM products
WHERE price > 100
OR category_id = 2;