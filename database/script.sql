DROP DATABASE IF EXISTS `ql_ban_sua`;

CREATE DATABASE `ql_ban_sua`;

DROP TABLE IF EXISTS `ql_ban_sua`.`brands`;

CREATE TABLE `ql_ban_sua`.`brands` (
  `brand_id` INT(5) NOT NULL AUTO_INCREMENT,
  `brand_name` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
  PRIMARY KEY (`brand_id`))
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `ql_ban_sua`.`brands` (`brand_name`)
VALUES 
    ('Vinamilk'),
    ('Nutifood'),
    ('Abbott'),
    ('Daisy'),
    ('Dutch Lady'),
    ('Dumex');

DROP TABLE IF EXISTS `ql_ban_sua`.`categories`;

CREATE TABLE `ql_ban_sua`.`categories` (
  `category_id` INT(5) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
  PRIMARY KEY (`category_id`))
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `ql_ban_sua`.`categories` (`category_name`)
VALUES 
    ('Sữa đặc'),
    ('Sữa tươi'),
    ('Sữa chua'),
    ('Sữa bột');


DROP TABLE IF EXISTS `ql_ban_sua`.`products`;

CREATE TABLE `ql_ban_sua`.`products` (
  `product_id` INT(5) NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
  `image` VARCHAR(200) NULL,
  `category_id` INT(5) NOT NULL,
  `brand_id` INT(5) NOT NULL,
  `weight` INT(11),
  `price` INT(11) NULL,
  PRIMARY KEY (`product_id`),
  FOREIGN KEY (`category_id`) REFERENCES `categories`(`category_id`),
  FOREIGN KEY (`brand_id`) REFERENCES `brands`(`brand_id`))
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `ql_ban_sua`.`products` (`product_name`,`image`,`category_id`,`brand_id`,`weight`,`price`)
VALUES 
    ('Abbott Grow','',4,3,400,87000),
    ('Abbott Grow School','',4,3,400,87000);


DROP TABLE IF EXISTS `ql_ban_sua`.`user`;

CREATE TABLE `ql_ban_sua`.`user` (
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB;

INSERT INTO `user` (`email`, `password`) VALUES
('admin@gmail.com', '202cb962ac59075b964b07152d234b70');

DROP PROCEDURE IF EXISTS `USP_Login`;

DELIMITER //

CREATE PROCEDURE `USP_Login` (
  IN `email_in` varchar(50),
  IN `password_in` varchar(100)
)
BEGIN
  select * from user where user.email = email_in and user.password = password_in;
END //

DELIMITER ;