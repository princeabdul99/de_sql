-- Use the index to improve order searching using the timestamp column

CREATE INDEX idx_timestamp 
ON orders(order_timestamp)