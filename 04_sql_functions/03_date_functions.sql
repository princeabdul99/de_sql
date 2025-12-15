-- DATE FUNCTIONS
/* To manipulate different date or want to know today's date, extract a specific portion of the date or want to do some 
	additional, substraction in the date. There is alot of built-in functions for this purpose.

*/
-- TO GET CURRENT DATE => use CURRENT_DATE function
SELECT CURRENT_DATE;
-- Output: 2025-12-15

-- TO EXTRACT SPECIFIC DAY => use EXTRACT function on date column
SELECT EXTRACT(Day FROM CURRENT_DATE);
-- Output: 15

-- TO EXTRACT SPECIFIC MONTH => use EXTRACT function on date column
SELECT EXTRACT(Month FROM CURRENT_DATE);
-- Output: 12

-- TO EXTRACT SPECIFIC YEAR => use EXTRACT function on date column
SELECT EXTRACT(Year FROM CURRENT_DATE);
-- Output: 2025


-- TO GET PART OF THE DATE (day) => use DATE_PART function on date column
SELECT DATE_PART('day', CURRENT_DATE);
-- Output: 15

-- TO GET PART OF THE DATE (month) => use DATE_PART function on date column
SELECT DATE_PART('month', CURRENT_DATE);
-- Output: 12

-- TO GET PART OF THE DATE (year) => use DATE_PART function on date column
SELECT DATE_PART('year', CURRENT_DATE);
-- Output: 2025

-- TRUNCATING DATE

-- TO TRUNCATE A DATE BY MONTH => use DATE_TRUNC function on date column
SELECT DATE_TRUNC('month', CURRENT_DATE);
-- Output: "2025-12-01 00:00:00+00"

-- TO TRUNCATE A DATE BY YEAR => use DATE_TRUNC function on date column
SELECT DATE_TRUNC('year', CURRENT_DATE);
-- Output: "2025-01-01 00:00:00+00"


-- DATE WITH AGE

-- TO IDENTIFY THE AGE FROM A DATE OF BIRTH DATE  => use AGE function on date column
SELECT AGE(timestamp '2024-01-01');
-- Output: "1 year 11 mons 14 days"

-- TO GET THE SPECIFIC AGE BETWEEN TWO DATES  => use AGE function on date column
SELECT AGE(timestamp '2024-01-01', timestamp '2024-01-31');
-- Output: "-30 days"

-- CONVERT STRING TO DATE

-- TO CONVERT A STRING INTO DATE  => use TO_DATE function on date column
SELECT TO_DATE('01/01/2024', 'DD/MM/YYYY');
-- Output: "2024-01-01"

-- TO REPRESENT DATE TO A STRING => use TO_CHAR function on date column
SELECT TO_CHAR(CURRENT_DATE, 'DD/MM/YYYY');
SELECT TO_CHAR(CURRENT_DATE, 'DD-MM-YYYY');
-- Output: "15/12/2025"
-- Output: "15-12-2025"