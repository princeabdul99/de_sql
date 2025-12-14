-- CHALLENGE
-- Assuming your retail store is distributing an end of year gift,  and they are looking for all customers that belongs to the
-- New York region, and they want to get the list of all the customers in  alphatical order, so that they can arrange some 
-- special gift for them and distribute.
--
-- Task: 
-- Find the list of the customers who live in New York and arrange in alphabetical order by thier names.
SELECT * 
FROM customers
WHERE city = 'New York'
ORDER BY customer_name ASC;