DROP DATABASE IF EXISTS `qldt`;

CREATE DATABASE `qldt`;

DROP TABLE IF EXISTS `qldt`.`products`;

CREATE TABLE `qldt`.`products` (
  `productId` INT(5) NOT NULL AUTO_INCREMENT,
  `productName` VARCHAR(100) NULL COLLATE 'utf8mb4_unicode_ci',
  `price` INT(11) NULL,
  `quantity` INT(11) NULL,
  `yearOfManufacture` INT(11) NULL,
  `brand` VARCHAR(100) NULL COLLATE 'utf8mb4_unicode_ci',
  `description` VARCHAR(2000) NULL COLLATE 'utf8mb4_unicode_ci',
  PRIMARY KEY (`productId`))
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `qldt`.`products` (`productName`,`price`,`quantity`,`yearOfManufacture`,`brand`,`description`)
VALUES 
    ('iphone 14 pro max 1tb',49990000,100,2022,'apple','iPhone 14 Pro Max đem đến những trải nghiệm không thể tìm thấy trên mọi thế hệ iPhone trước đó với màu Tím Deep Purple sang trọng, camera 48MP lần đầu xuất hiện, chip A16 Bionic và màn hình “viên thuốc” Dynamic Island linh hoạt, nịnh mắt.'),
    ('galaxy fold 4',379990000,59,2021,'samsung','Với Samsung Galaxy Z Fold4, smartphone màn hình gập đã trở nên thân thiện, tiện dụng và bền bỉ hơn rất nhiều. Những cải tiến thiết thực trong từng khía cạnh giúp sản phẩm biến hóa linh hoạt hơn và đem lại những trải nghiệm không thể tìm thấy ở đâu khác.');
