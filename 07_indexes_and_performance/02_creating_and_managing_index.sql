-- CREATING AND MANAGING INDEXES
/*
syntax to create index: 

The CREATE INDEX statement is used to create indexes in tables.

CREATE INDEX index_name
ON table_name (col1, col2...);


*/
-- USE CASE
-- In E-commerce app, customers often login using their email address. Create an index on email column of the customers table
-- can speed up the login operation.

-- Create an index on the customers table with the column email ID
CREATE INDEX ind_customer_email
ON customers(email);

-- Create an index on the products table with the column category ID
CREATE INDEX idx_prod_cat
ON products(category_id);


-- UNIQUE INDEX (to prevent duplicate)
-- Create a unique index on the products table with the column name
CREATE UNIQUE INDEX idx_prod_name
ON products(name);

-- COMPOSITE INDEX (for multiple column combination)
-- Sometimes there's lot of searches happens onthe orders table based on the customer ID and timestamp.
-- We can create the composite index based on this two columns.

-- Create a composite index on the orders table with the columns customer ID and order timestamp
CREATE INDEX idx_cust_order 
ON orders(customer_id, order_timestamp)









