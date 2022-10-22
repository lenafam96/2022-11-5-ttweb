-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2022 lúc 07:46 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_ban_sua`
--

DELIMITER $$
--
-- Thủ tục
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Login` (IN `email_in` VARCHAR(50), IN `password_in` VARCHAR(100))  BEGIN
  select * from user where user.email = email_in and user.password = password_in;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(5) NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`) VALUES
(1, 'Vinamilk'),
(2, 'Nutifood'),
(3, 'Abbott'),
(4, 'Daisy'),
(5, 'Dutch Lady'),
(6, 'Dumex'),
(9, 'TH Truemilk'),
(10, 'Monte');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int(5) NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Sữa đặc'),
(2, 'Sữa tươi'),
(3, 'Sữa chua'),
(4, 'Sữa bột');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(5) NOT NULL,
  `customer_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(1) NOT NULL DEFAULT 0,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `gender`, `address`, `phone`, `email`) VALUES
(1, 'Mai Hà Trang', 1, '192 Kim Giang, Hoàng Mai, Hà Nội', '356254458', 'mhtrang@gmail.com'),
(2, 'Nguyễn Hoàng Nam', 0, '104 Nguyễn An Ninh, Hoàng Mai, Hà Nội', '987654321', 'nhnam@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(5) NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(5) NOT NULL,
  `brand_id` int(5) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `image`, `category_id`, `brand_id`, `weight`, `price`) VALUES
(1, 'Abbott Grow', 'sua-bot-abbott-grow-g-power-3-900g_2.jpg', 4, 3, 400, 87000),
(2, 'Abbott Grow School', 'medium_ose1348625534.jpg', 4, 3, 400, 87000),
(3, 'Lốc 4 hộp sữa chua ăn', '8935217410309-loc-4-hop-sua-chua-an-th-true-milk-trai-cay-100g-637184147773602850.jpg', 3, 9, 400, 28000),
(4, 'Ông thọ', 'sua-dac-co-duong-ong-tho-do-lon-380g-201911071548119343.jpg', 1, 1, 380, 30000),
(5, 'Lốc 4 hộp sữa tươi có đường', 'loc-4-hop-sua-tuoi-co-duong-vinamilk-100-sua-tuoi-180ml-202006101849512251.jpg', 2, 1, 800, 30500),
(6, 'Lốc 4 hộp sữa tươi tiệt trùng không đường', 'loc-4-hop-sua-tuoi-tiet-trung-khong-duong-dutch-lady-180ml-202104150826346937.jpg', 2, 5, 800, 31200),
(7, 'Lốc 4 hộp sữa tiệt trùng hương dâu', 'loc-4-hop-sua-tiet-trung-dutch-lady-cao-khoe-huong-dau-170ml-202001140955197458.jpg', 2, 5, 800, 29600),
(8, 'Sữa đặc có đường Ông Thọ Đỏ tuýp', 'sua-dac-co-duong-ong-tho-do-tuyp-165g-202102222211140079.jpg', 1, 1, 165, 19000),
(9, 'Sữa đặc có đường', 'sua-dac-co-duong-dutch-lady-xanh-bien-lon-380g-201812062152373928.jpg', 1, 5, 380, 24000),
(10, 'Sữa đặc có đường Ông Thọ Đỏ', 'sd-ong-tho-do-vi-40g-2-org.jpg', 1, 1, 40, 5000),
(11, 'Sữa đặc có đường Ông Thọ Trắng', 'sua-dac-co-duong-ong-tho-trang-nhan-xanh-lon-380g-201911071524564853.jpg', 1, 1, 400, 25000),
(12, 'Lốc 4 hộp sữa chua nha đam', 'loc-4-hop-sua-chua-vinamilk-nha-dam-100g-202107051731400686.jpg', 3, 1, 400, 29500),
(13, 'Lốc 4 hộp sữa chua TH True Yogurt nha đam tự nh', 'loc-4-hop-sua-chua-nha-dam-tu-nhien-th-true-yogurt-100g-201911151016503329.jpg', 3, 9, 400, 32500),
(14, 'Lốc 4 hộp sữa chua Vinamilk nếp cẩm', 'loc-4-hop-sua-chua-vinamilk-nep-cam-100g-202110142319252877.jpg', 3, 1, 400, 32500),
(15, 'Lốc 4 hộp sữa chua men sống TH True Yogurt việt ', 'loc-4-hop-sua-chua-men-song-viet-quat-tu-nhien-th-true-yogurt-100g-201911150951203982.jpg', 3, 9, 400, 32000),
(16, 'Lốc 4 hộp sữa chua ăn Nutimilk trân châu đường đ', 'loc-4-hop-sua-chua-an-nutimilk-tran-chau-duong-den-100g-202105171616468556.jpg', 3, 2, 400, 38000),
(17, 'Lốc 4 hộp sữa chua Vinamilk có đường Star', 'loc-4-hop-sua-chua-co-duong-vinamilk-star-100g-201905270835042476.jpg', 3, 1, 400, 22500),
(18, 'Lốc 4 hộp sữa chua ăn thanh trùng TH True Yogurt', 'loc-4-hop-sua-chua-an-thanh-trung-th-true-yogurt-vi-vani-top-kid-60g-202105181753225159.jpg', 3, 9, 400, 24000),
(19, 'Lốc 4 hộp váng sữa Monte socola', 'loc-4-hop-vang-sua-socola-monte-55g-201907290755418851.jpg', 3, 10, 220, 66000),
(20, '1/8 Lốc 4 hộp sữa chua Vinamilk lựu đỏ', 'loc-4-hop-sua-chua-vinamilk-luu-do-100g-202107171747268624.jpg', 3, 1, 400, 29500),
(21, 'Kem đặc có đường Ngôi sao Phương Nam Xanh', 'sd-nspn-xanh-duong-lon-380g-2-org.jpg', 1, 1, 380, 19000),
(22, 'Creamer đặc sữa pha chế Nutimilk', 'creamer-dac-sua-pha-che-nutimilk-hop-380g-202111031559490707.jpg', 1, 2, 380, 18500),
(23, 'Sữa đặc có đường Ông Thọ Trắng', 'sua-dac-co-duong-vinamilk-trang-nhan-xanh-hop-380g-201812061121162215.jpg', 1, 1, 380, 25000),
(24, 'Creamer đặc sữa pha chế Nutimilk', 'creamer-dac-sua-pha-che-nutimilk-lon-380g-202110252212122488.jpg', 1, 2, 380, 19000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`email`, `password`) VALUES
('admin@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
