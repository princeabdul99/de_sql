-- MATHEMATICAL FUNCTIONS
/* It helps performs various calculations on numeric data.

DIFFERENT TYPES OF FUNCTIONS
- ABS(x) - absolute value
- CEIL(x) or CEILING(x) - ceiling function
- FLOOT(x) - floor function
- ROUND(x, d) - rounding function
- SQRT(x) - square root function
- COS
- SIN
- RAD, etc

*/

SELECT ABS(-2.6)
-- Output: 2.6

-- CEIL => get the higher integer nearby the number. 
SELECT CEIL(2.3)
-- Output: 3

-- FLOOT => get the lowest integer nearby the number. 
SELECT FLOOR(2.3)  
-- Output: 2

-- ROUND => Round some number to a certain number of places
SELECT ROUND(2.3456, 2)  
-- Output: 2.35

-- SQRT => To find out the square root of a number
SELECT SQRT(4)  
-- Output: 2

SELECT ROUND(SQRT(4.0), 0)  
-- Output: 2





