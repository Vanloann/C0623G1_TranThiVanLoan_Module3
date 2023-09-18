CREATE DATABASE quan_li_ban_hang;
USE quan_li_ban_hang;
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

CREATE TABLE product (
product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
product_name VARCHAR(200) NOT NULL,
product_price FLOAT NOT NULL
);

CREATE TABLE order_detail (
order_id INT NOT NULL ,
product_id INT NOT NULL,
order_quantity INT NOT NULL,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders (order_id),
FOREIGN KEY (product_id) REFERENCES product (product_id)
);

INSERT INTO customer (customer_name, age)
VALUES ('Minh Quan', 10), ('Ngoc Oanh', 20), ('Hong Ha', 50);

INSERT INTO orders (order_date, customer_id)
VALUES ('2006-3-21', 1), ('2006-3-23', 2), ('2006-3-16', 1);

INSERT INTO product (product_name, product_price)
VALUES ('May Giat', 3), ('Tu Lanh', 5), ('Dieu Hoa', 7), ('Quat', 1), ('Bep Dien', 2);

INSERT INTO order_detail (order_id, product_id, order_quantity)
VALUES (1, 1, 3), (1, 3, 7), (1, 4, 2), (2, 1, 1), (3, 1, 8), (2, 5, 4), (2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT order_id, order_date, order_total_price
FROM orders;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT customer_name, product_name
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_detail od ON o.order_id = od.order_id
JOIN product p ON od.product_id = p.product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT c.customer_name 
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)
SELECT o.order_id, o.order_date, SUM(p.product_price * od.order_quantity) AS total_price
FROM orders o 
JOIN order_detail od ON o.order_id = od.order_id
JOIN product p ON p.product_id = od.product_id
GROUP BY order_id;







