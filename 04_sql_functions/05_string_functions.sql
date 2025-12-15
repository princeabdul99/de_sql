-- STRING FUNCTIONS
/*

*/
-- STRING CONCATENATION WITH PIPE (||)
SELECT city ||'-'|| address
FROM customers

-- STRING CONCATENATION WITH CONCAT FUNCTION
SELECT CONCAT(city, address)
FROM customers;

-- STRING CONCATENATION WITH CONCAT_WS FUNCTION
SELECT CONCAT_WS(', ', city, address)
FROM customers;

-- USING TRIM TO REMOVE EXTRA SPACES
SELECT TRIM(' hello ')

-- USING TRIM TO REMOVE UNWANTED CHARACTERS FROM BOTH SIDES
SELECT TRIM('X' FROM 'XXXHelloXXX')

-- USING LTRIM TO REMOVE UNWANTED SPACES FROM ONLY LEFT SIDE
SELECT LTRIM(' hello ')

-- USING RTRIM TO REMOVE UNWANTED SPACES FROM ONLY RIGHT SIDE
SELECT RTRIM(' hello ')

-- USING BTRIM TO REMOVE UNWANTED SPACES FROM BOTH SIDE
SELECT BTRIM(' hello ')


-- CHANGING CASE AND EXTRACTING SUBSTRING

-- Display Customer name to captial letters
SELECT UPPER(customer_name) 
FROM customers;

-- Display Customer name to lowercase letters
SELECT LOWER(customer_name) 
FROM customers;

-- Using INITCAP to change every first letter of the string to Uppercase and the rest lowercase
SELECT INITCAP(customer_name) 
FROM customers;

-- SPLITING STRING
-- Split string to get a substring

-- Get the first five characters
SELECT SUBSTRING('Hello from prince' from 1 for 5);

-- Get the string from the 7th characters
SELECT SUBSTRING('Hello from prince' from 7 for 5);

-- Using the LEFT functions to pullout characters from the start
SELECT LEFT('Hello from prince', 5);

-- Using the RIGHT functions to pullout characters from the end
SELECT RIGHT('Hello from prince', 6);

-- Using POSITION function to Check whether a word exist or not in a string and return the position
SELECT POSITION('Alice' in 'Hello from prince');

-- Using LENGTH function to Identify the size of the characters in a string
SELECT LENGTH('Hello from prince')