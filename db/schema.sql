DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS products;

CREATE TABLE clients (
	id INTEGER PRIMARY KEY,
	organization VARCHAR,
	individual VARCHAR,
	legislation VARCHAR,
	product_id REFERENCES products(id),
	committees VARCHAR,
	legislators VARCHAR,
	mobile_access VARCHAR,
	capital VARCHAR,
	road VARCHAR,
	time VARCHAR,
	tech VARCHAR,
	others VARCHAR,
	create_date DATETIME
);

CREATE TABLE products (
	id INTEGER PRIMARY KEY,
	kind VARCHAR
);