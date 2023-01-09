CREATE TABLE items (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
status ENUM('available', 'unavailable', 'paused') DEFAULT ‘available’ NOT NULL,
price_in_cents INTEGER NOT NULL,
measure INTEGER NOT NULL,
stock INTEGER NOT NULL,
seller_id INTEGER NOT NULL REFERENCES customer (id),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
 
CREATE TABLE items (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
status ENUM('available', 'unavailable', 'paused') DEFAULT ‘available’ NOT NULL,
price_in_cents INTEGER NOT NULL,
measure INTEGER NOT NULL,
stock INTEGER NOT NULL,
seller_id INTEGER NOT NULL REFERENCES customers (id),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
 
CREATE TABLE categories (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL UNIQUE
);
 
CREATE TABLE items_categories (
 id SERIAL PRIMARY KEY,
 item_id INTEGER NOT NULL UNIQUE,
 category_id INTEGER NOT NULL UNIQUE,
 FOREIGN KEY (item_id) REFERENCES items (id),
 FOREIGN KEY (category_id) REFERENCES categories (id)
);
