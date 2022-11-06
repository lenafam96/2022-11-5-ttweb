-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2022 at 10:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qldt`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(5) NOT NULL,
  `productName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `yearOfManufacture` int(11) DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `price`, `quantity`, `yearOfManufacture`, `brand`, `description`) VALUES
(1, 'Iphone 14 Pro Max 1tb', 49990000, 100, 2022, 'apple', 'iPhone 14 Pro Max đem đến những trải nghiệm không thể tìm thấy trên mọi thế hệ iPhone trước đó với màu Tím Deep Purple sang trọng, camera 48MP lần đầu xuất hiện, chip A16 Bionic và màn hình “viên thuốc” Dynamic Island linh hoạt, nịnh mắt.'),
(2, 'Galaxy Z Fold4 5G 256GB', 379990000, 59, 2021, 'samsung', 'Với Samsung Galaxy Z Fold4, smartphone màn hình gập đã trở nên thân thiện, tiện dụng và bền bỉ hơn rất nhiều. Những cải tiến thiết thực trong từng khía cạnh giúp sản phẩm biến hóa linh hoạt hơn và đem lại những trải nghiệm không thể tìm thấy ở đâu khác.'),
(3, 'Iphone 13 Pro 256gb', 27490000, 123, 2021, 'Apple', 'Tận hưởng tốc độ khó tin trên chiếc smartphone nhanh nhất thế giới, iPhone 13 Pro với màn hình ProMotion 120Hz đột phá, bộ vi xử lý A15 Bionic cho hiệu năng không đối thủ, thời lượng pin vượt trội và bộ 3 camera được nâng cấp đáng kể, xứng đáng là chiếc điện thoại đầu bảng trên thị trường.'),
(4, 'Galaxy S22 Bora Purple', 13990000, 439, 2021, 'Samsung', 'Bật nét kiêu kỳ, sẵn sàng trendy với phiên bản Samsung Galaxy S22 màu tím (Bora Purple), bạn sẽ trở nên thật thời thượng, ấn tượng và cá tính. Đồng hành đó là những công nghệ tốt nhất của Samsung từ hiệu năng Snapdragon 8 Gen 1, màn hình cao cấp cho đến hệ thống camera chuyên nghiệp.'),
(5, 'Galaxy Z Flip4 5G', 22990000, 312, 2021, 'Samsung', 'Linh hoạt biến hóa, không ngừng sáng tạo, Samsung Galaxy Z Flip4 mang đến những xu hướng công nghệ hiện đại, đậm chất thời trang cho người dùng sành điệu. Nay điện thoại còn thêm phần cuốn hút với phiên bản giới hạn Samsung Galaxy Z Flip4 Flex Mode Collection – một sự kết hợp của Samsung và GIA STUDIOS cho phiên bản màu Pink Gold hoặc Blue.'),
(6, 'Galaxy Z Fold3 5G 256GB', 26490000, 139, 2020, 'Samsung', 'Khi bạn mở ra màn hình gập lớn tới 7,6 inch trên Samsung Galaxy Z Fold3 5G là lúc bạn đã mở ra một tương lai hoàn toàn mới cho thế giới smartphone, nơi công nghệ vượt qua mọi giới hạn, cho trải nghiệm hoàn hảo nhất ở một thiết bị di động nhỏ gọn.'),
(7, 'Find X5 Pro', 27990000, 239, 2021, 'OPPO', 'Hội tụ những tinh hoa công nghệ – OPPO Find X5 Pro đưa bạn đến trải nghiệm vượt trội từ hiệu năng Snapdragon 8 Gen 1, sạc nhanh 80W, cảm biến Sony cao cấp đến thiết kế độc đáo, điện thoại phô diễn trọn bộ đột phá, khẳng định sức mạnh của chiếc flagship đầu bảng.\r\n'),
(8, 'Reno8 Pro 5G 12GB', 18990000, 492, 2020, 'OPPO', 'Hội tụ những điểm mạnh của dòng Reno, OPPO Reno8 Pro thể hiện bản lĩnh của phiên bản cao cấp từ hiệu năng Dimensity 8100-Max, bộ xử lý hình ảnh tiên tiến Marisilicon-X, camera đỉnh cao và sạc siêu tốc đến 80W. Đây chính là thiết bị công nghệ mang tới sự tiện lợi và khai phá hiệu suất cao trong cuộc sống hiện đại.'),
(9, 'ROG Phone 5S 5G 16GB', 18490000, 349, 2020, 'Asus', 'Với chip xử lý Qualcomm Snapdragon 888+ 5G cực mạnh, màn hình AMOLED tần số quét 144Hz/1ms và viên pin dung lượng pin 6.000 mAh, chiếc điện thoại Asus ROG 5S 5G sẽ đem đến trải nghiệm gaming mà không một mẫu smartphone nào trên thị trường có thể đạt được. Ngoài ra, loạt tính năng như AirTrigger 5 kết hợp cùng âm thanh GameFX cao cấp cũng hứa hẹn những trải nghiệm hàng đầu thế giới hiện tại.'),
(10, '12T Pro 12GB', 16990000, 883, 2021, 'Xiaomi', 'Chiếc flagship Xiaomi 12T Pro là lựa chọn không thể bỏ qua để ghi lại mọi khoảnh khắc quý giá trong cuộc sống của bạn. Chiếc điện thoại này sẽ lưu giữ thay bạn và mang đến một không gian giải trí cực đỉnh và trải nghiệm hiệu năng hàng đầu trong giới smartphone. Mọi thứ trên chiếc điện thoại này luôn sẵn sàng kiến tạo những gì tốt nhất dành cho bạn. '),
(11, '11T Pro 5G 12GB', 11490000, 817, 2020, 'Xiaomi', 'Xiaomi 11T Pro là chiếc điện thoại cao cấp có mức giá tốt nhất hiện nay. Bạn sẽ nhận được camera chuyên nghiệp 108MP, sạc siêu nhanh 120W, màn hình AMOLED 120Hz mượt mà hỗ trợ Dolby Vision và bộ vi xử lý đầu bảng Snapdragon 888, một loạt những tính năng đỉnh cao sẽ mang tới trải nghiệm thú vị hơn bao giờ hết.'),
(12, 'Reno8 Z 5G 8GB', 9990000, 128, 2020, 'OPPO', 'Kế thừa một trong những thương hiệu smartphone được lòng người dùng Việt nhất, OPPO Reno8 Z 5G cho thấy nét cuốn hút riêng với phong cách thiết kế độc đáo, độ hoàn thiện tốt, khả năng hỗ trợ 5G và bộ ba camera sau AI 64MP xứng danh chuyên gia chân dung.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
