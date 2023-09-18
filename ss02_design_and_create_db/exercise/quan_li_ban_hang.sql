CREATE DATABASE quan_li_ban_hang;
CREATE TABLE customer(
customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
customer_name VARCHAR(200) NOT NULL,
age INT
);

CREATE TABLE orders (
order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_date DATETIME NOT NULL,
order_total_price FLOAT NOT NULL,
customer_id INT NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

CREATE TABLE order_detail (
order_id INT NOT NULL,
product_id INT NOT NULL,
order_quantity INT NOT NULL,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders (order_id),
FOREIGN KEY (product_id) REFERENCES product (product_id)
);

CREATE TABLE product (
product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
product_name VARCHAR(200) NOT NULL,
product_price FLOAT NOT NULL
);

-- INSERT INTO customer (customer_name, age)
-- VALUES ('Minh Quan', 10), ('Ngoc Oanh', 20), ('Hong Ha', 50);

-- INSERT INTO orders (order_date, customer_id)
-- VALUES ('2006-3-21', 1), ('2006-3-23', 2), ('2006-3-16', 1);

-- INSERT INTO product (product_name, product_price)
-- VALUES ('May Giat', 3), ('Tu Lanh', 5), ('Dieu Hoa', 7), ('Quat', 1), ('Bep Dien', 2);

-- INSERT INTO order_detail (order_id, product_id, order_quantity)
-- VALUES (1, 1, 3), (1, 3, 7), (1, 4, 2), (2, 1, 1), (3, 1, 8), (2, 5, 4), (2, 3, 3);


