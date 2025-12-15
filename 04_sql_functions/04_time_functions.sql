-- TIME FUNCTION

-- TO GET CURRENT TIME => use CURRENT_TIME function
SELECT CURRENT_TIME;
-- Output: "03:32:14.351967+00:00"

-- TO GET CURRENT TIMESTAMP => use CURRENT_TIMESTAMP function
SELECT CURRENT_TIMESTAMP;
-- Output: "2025-12-15 03:33:09.930392+00"

-- TO GET LOCAL TIME WITHOUT TIMEZONE => use LOCALTIME function
SELECT LOCALTIME;
-- Output: "03:35:18.148642"

-- TO GET LOCAL DATETIME WITHOUT TIMEZONE => use LOCALTIMESTAMP function
SELECT LOCALTIMESTAMP;
-- Output: "2025-12-15 03:36:06.2125"

-- EXTRACT PART

-- TO EXTRACT PART OF THE TIMESTAMP(hour) => use EXTRACT function
SELECT EXTRACT(hour FROM CURRENT_TIMESTAMP);
-- Output: "3"

-- Ex: on orders table
SELECT EXTRACT(hour FROM order_timestamp)
FROM orders;

-- TO EXTRACT PART OF THE TIMESTAMP(minute) => use EXTRACT function
SELECT EXTRACT(minute FROM CURRENT_TIMESTAMP);
-- Output: "42"

-- TO EXTRACT PART OF THE TIMESTAMP(second) => use EXTRACT function
SELECT EXTRACT(second FROM CURRENT_TIMESTAMP);
-- Output: 30.161522


-- TRUNCATING USING DATE
-- You can truncate timestamp of a column base on month, year or day

-- TO TRUNCATE TIMESTAMP BY DAY => use DATE_TRUNC function on date column
SELECT DATE_TRUNC('day', CURRENT_TIMESTAMP);
-- Output: "2025-12-15 00:00:00+00"


-- TIMESTAMP WITH AGE

-- TO IDENTIFY THE AGE FROM A TIMESTAMP  => use AGE function on date column
SELECT AGE(timestamp '2024-01-01');
-- Output: "1 year 11 mons 14 days

SELECT AGE(order_timestamp) 
FROM orders;

-- Output: "2 years 10 mons 11 days 09:40:00"
-- Output: "2 years 10 mons 30 days 13:30:00"
-- Output: "2 years 9 mons 2 days 15:15:00"

-- TO GET THE SPECIFIC AGE BETWEEN TWO TIMESTAMPS  => use AGE function on date column
SELECT AGE(delivery_timestamp, order_timestamp)
FROM orders;
-- Output: "1 day 05:15:00"
-- Output: "1 day 20:50:00"
-- Output: "2 days 00:45:00"
-- Output: "12 days 06:05:00"


-- TO GET TIME BASED ON SPECIFIC TIMEZONE
SELECT CURRENT_TIMESTAMP AT Time Zone 'America/New_York'
-- Output: "2025-12-14 22:58:40.425333"