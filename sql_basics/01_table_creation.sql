CREATE TABLE categories(
	category_id SERIAL PRIMARY KEY,
	name VARCHAR(100)
);

CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	price DECIMAL(10, 2),
	description VARCHAR(255),
	tags VARCHAR(255),
	category_id INT,
	FOREIGN KEY (category_id) REFERENCES categories(category_id),
	supplier VARCHAR(100)
);

CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone_number VARCHAR(20),
	address VARCHAR(255),
	city VARCHAR(255)
);


CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	customer_id INT,
	product_id INT,
	total_quantity INT,
	total_amount DECIMAL(10, 2),
	order_rating DECIMAL(3, 1),
	length DECIMAL(5, 2),
	width DECIMAL(5, 2),
	order_timestamp TIMESTAMP,
	delivery_timestamp TIMESTAMP,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
);