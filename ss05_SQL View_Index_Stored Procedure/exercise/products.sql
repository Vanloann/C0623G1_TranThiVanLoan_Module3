CREATE DATABASE products;
USE products;
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_code VARCHAR(50) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_price FLOAT NOT NULL,
    product_amount INT NOT NULL,
    product_description VARCHAR(50) NOT NULL,
    product_status VARCHAR(50) NOT NULL
);

INSERT INTO products (product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES  ('123','Book', 3500, 2, 'comic', 'new'),
		('124','Pencil', 2000, 4, 'red', 'new'),
		('125','Board', 6000, 5, 'black', 'old');

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)        
CREATE UNIQUE INDEX product_index
ON products (product_code);
SHOW INDEXES FROM products;
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT * FROM products WHERE product_code = '124';

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
CREATE INDEX products_index
ON products (product_name, product_price);
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT * FROM products WHERE product_name = 'Board' OR product_price = '3500';

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW product_view AS 
SELECT product_code, product_name, product_price, product_status
FROM products;

SELECT * FROM product_view;
-- Tiến hành sửa đổi view
UPDATE product_view
SET product_code = '111'
WHERE product_name = 'Pencil';
SELECT * FROM product_view;

-- Tiến hành xoá view
DROP VIEW product_view;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
DELIMITER //
CREATE PROCEDURE get_product_infor()
BEGIN
	SELECT * FROM products;
END //
DELIMITER ;
CALL get_product_infor();

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER //
CREATE PROCEDURE insert_product(p_code VARCHAR(50), p_name VARCHAR(50), p_price FLOAT, p_amount INT, p_des VARCHAR(50), p_status VARCHAR(50))
BEGIN
    INSERT INTO products (product_code, product_name, product_price, product_amount, product_description, product_status)
    VALUES (p_code, p_name, p_price, p_amount, p_des, p_status);
END //
DELIMITER ;
CALL insert_product('112', 'notebook', 4500, 10, 'adorable', 'thick');

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER //
CREATE PROCEDURE update_product(p_id INT, new_name VARCHAR(50))
BEGIN
	UPDATE products
    SET product_name = new_name
    WHERE id = p_id;
END //
DELIMITER ;
CALL update_product(4, 'bag');

-- Tạo store procedure xoá sản phẩm theo id
DELIMITER //
CREATE PROCEDURE delete_product(p_id INT)
BEGIN
	DELETE FROM products
    WHERE id = p_id;
END //
DELIMITER ;
CALL delete_product(4); 