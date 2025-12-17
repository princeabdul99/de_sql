-- DEBUGGING NULL VALUES
/* A crucial aspect of database management. NULL represents the absence of a value in a column. NULL is not the same as empty string or zero
 It signifies unknown or not applicable.

 How to Handle null value.
 - Whenever you are comparing NULL, you should a function called IS NULL.
 - If you dont want a null value, you should use IS NOT NULL


COMMON DEBUGGING SCENARIOS
- Unexpected empty result sets
- Incorrect aggregations.
- Join conditions


DEBUGGING STRATEGIES
- IS NULL/ IS NOT NULL
- Using COALESCE
	* In the COALESCE function, you can pass some default value. If the column is having a null value,instead if calling the null,
	  it will give the default value.
- Using NULLIF	  
	- It returns null if two expressions are equal.
- Conditional aggregations
	- When you aggregate data, consider whether you need to count the null values or treat them differently.
- Outer joins 
	- If you need to include rows that have a null values in the join key, consider using the outer joins like
	  left join, right join or full outer join.

- Testing and validation

- Documentation and comments
	  
*/



SELECT * 
FROM products
WHERE price IS NULL;

SELECT *
FROM products
WHERE price IS NOT NULL;










