CREATE DATABASE user_management;
USE user_management;
CREATE TABLE `user` (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120)
);

INSERT INTO `user` (name, email, country) 
	VALUES ('Minh','minh@codegym.vn','Viet Nam');

INSERT INTO`user` (name, email, country) 
	VALUES ('Kante','kante@che.uk','Kenia');
    
SELECT * FROM `user`
ORDER BY name;    

INSERT INTO`user` (name, email, country) 
	VALUES ('Flo','flo@gmail.com','DN');

UPDATE `user`
SET name = "loan", email = "loan@gmail.com", country = "vn"
WHERE id = 5;

SELECT id, `name`, email, country 
FROM `user`
WHERE id = 5;

DELETE FROM `user`
WHERE id = 6;

