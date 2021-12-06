-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 05:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2021-11-02 16:21:18', '24-11-2021 11:35:30 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `categoryDescription` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Sách Giáo Khoa', 'Sách giáo khoa các cấp', '2021-11-24 10:57:43', NULL),
(8, 'Truyện', 'Các thể loại truyện', '2021-11-24 10:58:06', NULL),
(9, 'Sách Tham Khảo', 'Sách giải các bài tập từ cơ bản đến nâng cao', '2021-11-24 10:58:28', '24-11-2021 04:28:45 PM'),
(10, 'Từ Điển', 'Các loại từ điển của nhiều thứ tiếng', '2021-11-24 10:59:22', NULL),
(11, 'Sách Chính Trị – Pháp Luật', 'Các đầu sách tham khảo về Chính trị và pháp luật', '2021-11-24 11:00:06', '24-11-2021 05:50:05 PM'),
(12, 'Sách Văn Học Nghệ Thuật', 'Sách Văn học dân gian và sách về nghệ thuật', '2021-11-24 11:00:25', '24-11-2021 04:31:30 PM'),
(13, 'Sách Tâm lý, Tâm linh, Tôn giáo', 'Các đầu sách thuộc suy nghĩ tâm linh và mang nhiều thứ đáng sợ', '2021-11-24 11:02:18', NULL),
(14, 'Giáo Trình', 'Giáo trình một số trường Đại học', '2021-11-24 11:02:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `orderStatus` varchar(55) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 1, '1', 1, '2021-12-03 04:25:19', NULL, NULL),
(8, 1, '1', 1, '2021-12-03 04:25:43', NULL, NULL),
(9, 1, '1', 3, '2021-12-03 04:28:25', NULL, NULL),
(10, 1, '2', 1, '2021-12-03 04:28:25', NULL, NULL),
(11, 1, '1', 3, '2021-12-03 04:28:48', NULL, NULL),
(12, 1, '2', 2, '2021-12-03 04:28:48', NULL, NULL),
(13, 4, '1', 1, '2021-12-03 04:31:29', NULL, NULL),
(14, 4, '2', 1, '2021-12-03 04:31:29', NULL, NULL),
(15, 4, '8', 1, '2021-12-03 04:31:29', NULL, NULL),
(16, 4, '1', 1, '2021-12-03 04:32:42', NULL, NULL),
(17, 4, '2', 1, '2021-12-03 04:32:42', NULL, NULL),
(18, 4, '8', 1, '2021-12-03 04:32:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `remark` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `summary` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `review` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `productCompany` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `productImage1` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `productImage2` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `productImage3` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 7, 13, 'Sách Tiếng Việt Lớp 1', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 39000, '<span style=\"color: rgb(3, 3, 3); font-family: Roboto, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(249, 249, 249);\">SÁCH CÁNH DIỀU-SGK LỚP 1- SÁCH TIẾNG VIỆT 1| Hành Trang Cho Bé Vào Lớp 1</span><br>', 'sachtiengviet1.jpg', 'sachtiengviet1_1.jpg', 'sachtiengviet1_2.jpg', 5000, 'In Stock', '2021-11-24 12:27:04', NULL),
(2, 7, 13, 'Sách Tiếng Việt Lớp 2', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 39000, '<h1 style=\"box-sizing: border-box; margin-bottom: 6px; padding: 0px; font-family: Roboto, sans-serif; font-size: 20px; line-height: 1.2; color: rgb(0, 0, 0);\"><br></h1>', 'sachtiengviet2.jpg', 'sachtiengviet2_1.jpg', 'sachtiengviet2_2.jpg', 5000, 'In Stock', '2021-11-24 12:42:49', NULL),
(3, 7, 13, 'Sách Tiếng Việt Lớp 3', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 39000, 'Sách Tiếng Việt Lớp 3<br>', 'sachtiengviet3.jpg', 'sachtiengviet3_1.jpg', 'sachtiengviet3_2.jpg', 5000, 'In Stock', '2021-11-24 12:46:51', NULL),
(4, 7, 13, 'Sách Tiếng Việt Lớp 4', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 39000, 'Sách Tiếng Việt Lớp 4<br>', 'sachtiengviet4.jpg', 'sachtiengviet4_1.jpg', 'sachtiengviet4_2.jpg', 5000, 'In Stock', '2021-11-25 01:52:43', NULL),
(5, 7, 13, 'Sách Tiếng Việt Lớp 5', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 39000, 'Sách Tiếng Việt Lớp 5<br>', 'sachtiengviet5.jpg', 'sachtiengviet5_1.jpg', 'sachtiengviet5_2.jpg', 5000, 'In Stock', '2021-11-25 01:59:35', NULL),
(6, 7, 14, 'Sách Toán Lớp 1', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 40000, 'Sách Toán Lớp 1<br>', 'sachtoan.jpg', 'sachtoan1.jpg', 'sachtoan1_2.jpg', 5000, 'In Stock', '2021-11-25 02:03:44', NULL),
(7, 7, 14, 'Sách Toán Lớp 2', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 40000, 'Sách Toán Lớp 2<br>', 'sachtoan2.jpg', 'sachtoan2_1.jpg', 'sachtoan2_2.jpg', 5000, 'In Stock', '2021-11-25 02:15:50', NULL),
(8, 7, 15, 'Sách Vật Lý Lớp 10', 'Nhà xuất bản giáo dục VIệt Nam', 50000, 52000, 'Sách Vật Lý Lớp 10<br>', 'vatly10.jpg', 'vatly10_1.jpg', 'vatly10_2.jpg', 5000, 'In Stock', '2021-11-25 03:15:29', NULL),
(9, 7, 15, 'Sách Vật Lý Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 50000, 52000, 'Sách Vật Lý Lớp 11<br>', 'vatly11.jpg', 'vatly11_2.jpg', 'vatly11_2.jpg', 5000, 'In Stock', '2021-11-25 03:16:01', NULL),
(10, 7, 15, 'Sách Vật Lý Lớp 12', 'Nhà xuất bản giáo dục VIệt Nam', 50000, 52000, 'Sách Vật Lý Lớp 12<br>', 'vatly12.jpg', 'vatly12_1.jpg', 'vatly12_2.jpg', 5000, 'In Stock', '2021-11-25 03:16:31', NULL),
(11, 7, 16, 'Sách Hóa Học Lớp 10', 'Nhà xuất bản giáo dục VIệt Nam', 50000, 54000, 'Sách Hóa Học Lớp 10<br>', 'hoahoc10].jpg', 'hoahoc10_.jpg', 'hoahoc10_1.jpg', 5000, 'In Stock', '2021-11-25 03:17:14', NULL),
(12, 7, 16, 'Sách Hóa Học Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 50000, 54000, 'Sách Hóa Học Lớp 11<br>', 'hoahoc11.jpg', 'hoahoc11_1.jpg', 'hoahoc11_2.jpg', 5000, 'In Stock', '2021-11-25 03:17:44', NULL),
(13, 7, 16, 'Sách Hóa Học Lớp 12', 'Nhà xuất bản giáo dục VIệt Nam', 50000, 54000, 'Sách Hóa Học Lớp 12<br>', 'hoahoc12.jpg', 'hoahoc12_1.jpg', 'hoahoc12_2.jpg', 5000, 'In Stock', '2021-11-25 03:18:19', NULL),
(14, 7, 17, 'Sách Sinh Học Lớp 10', 'Nhà xuất bản giáo dục VIệt Nam', 50000, 54000, 'Sách Sinh Học Lớp 10<br>', 'sinhhoc10.jpg', 'sinhhoc10_1.png', 'sinhhoc10_2.jpg', 5000, 'In Stock', '2021-11-25 03:19:08', NULL),
(15, 7, 17, 'Sách Sinh Học Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 52000, 56000, 'Sách Sinh Học Lớp 11<br>', 'sinhhoc11.jpg', 'sinhhoc11_1.jpg', 'sinhhoc11_2.jpg', 5000, 'In Stock', '2021-11-25 03:19:53', NULL),
(16, 7, 17, 'Sách Sinh Học Lớp 12', 'Nhà xuất bản giáo dục VIệt Nam', 52000, 54000, 'Sách Sinh Học Lớp 12<br>', 'sinhhoc12.jpg', 'sinhhoc12_1.jpg', 'sinhhoc12_2.jpg', 5000, 'In Stock', '2021-11-25 03:20:24', NULL),
(17, 7, 18, 'Sách GDCD Lớp 10', 'Nhà xuất bản giáo dục VIệt Nam', 40000, 42000, 'Sách GDCD Lớp 10<br>', 'gdcd10.jpg', 'gdcd10_1.jpg', 'gdcd10_2.jpg', 5000, 'In Stock', '2021-11-25 03:21:19', NULL),
(18, 7, 18, 'Sách GDCD Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 40000, 'Sách GDCD Lớp 11<br>', 'gdcd11.jpg', 'gdcd11_1.jpg', 'gdcd11_2.jpg', 5000, 'In Stock', '2021-11-25 03:22:06', NULL),
(19, 7, 18, 'Sách GDCD Lớp 12', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 40000, 'Sách GDCD Lớp 12<br>', 'gdcd12.jpg', 'gdcd12_1.jpg', 'gdcd12_2.jpg', 5000, 'In Stock', '2021-11-25 03:22:37', NULL),
(20, 7, 19, 'Sách Lịch Sử Lớp 10', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 39000, 'Sách Lịch Sử Lớp 10<br>', 'lichsu10.jpg', 'lichsu10_1.jpg', 'lichsu10_2.jpg', 5000, 'In Stock', '2021-11-25 03:23:35', NULL),
(21, 7, 19, 'Sách Lịch Sử Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 39000, 'Sách Lịch Sử Lớp 11<br>', 'lichsu11.jpg', 'lichsu11_.jpg', 'lichsu11_2.jpg', 5000, 'In Stock', '2021-11-25 03:24:18', NULL),
(22, 7, 19, 'Sách Lịch Sử Lớp 12', 'Nhà xuất bản giáo dục VIệt Nam', 35500, 39000, 'Sách Lịch Sử Lớp 12<br>', 'sachsu12.jpg', 'sachsu12_1.jpg', 'sachsu12_2.jpg', 5000, 'In Stock', '2021-11-25 03:24:47', NULL),
(23, 7, 20, 'Sách Địa Lý Lớp 10', 'Nhà xuất bản giáo dục VIệt Nam', 0, 35000, 'Sách Địa Lý Lớp 10<br>', 'dialy10.jpg', 'dialy10_1.jpg', 'dialy10_2.jpg', 5000, 'In Stock', '2021-11-25 03:25:34', NULL),
(24, 7, 20, 'Sách Địa Lý Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 35500, 'Sách Địa Lý Lớp 11<br>', 'dialy11.jpg', 'dialy11_1.jpg', 'dialy11_2.jpg', 5000, 'In Stock', '2021-11-25 03:26:18', NULL),
(25, 7, 20, 'Sách Địa Lý Lớp 12', 'Nhà xuất bản giáo dục VIệt Nam', 35000, 35500, 'Sách Địa Lý Lớp 11<br>', 'dialy12.jpg', 'dialy12_1.jpg', 'dialy12_2.jpg', 5000, 'In Stock', '2021-11-25 03:26:49', NULL),
(26, 7, 21, 'Sách Tin Học Lớp 10', 'Nhà xuất bản giáo dục VIệt Nam', 19500, 20000, 'Sách Tin Học Lớp 10<br>', 'tinhoc10.jpg', 'tinhoc10_1.jpg', 'tinhoc10_2.jpg', 5000, 'In Stock', '2021-11-25 03:27:36', NULL),
(27, 7, 21, 'Sách Tin Học Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 19500, 20000, 'Sách Tin Học Lớp 11<br>', 'tinhoc11.jpg', 'tinhoc11_1.jpg', 'tinhoc11_2.jpg', 5000, 'In Stock', '2021-11-25 03:28:15', NULL),
(28, 7, 21, 'Sách Tin Học Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 19500, 20000, 'Sách Tin Học Lớp 11<br>', 'tinhoc12.jpg', 'tinhoc12_1.jpg', 'tinhoc12_2.jpg', 5000, 'In Stock', '2021-11-25 03:28:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Sách Tiếng Việt', '2021-11-24 12:00:33', NULL),
(14, 7, 'Sách Toán', '2021-11-24 12:00:41', NULL),
(15, 7, 'Sách Lý', '2021-11-24 12:00:47', NULL),
(16, 7, 'Sách Hóa', '2021-11-24 12:00:59', NULL),
(17, 7, 'Sách Sinh Học', '2021-11-24 12:01:07', NULL),
(18, 7, 'Sách Giáo Dục Công Dân', '2021-11-24 12:01:25', NULL),
(19, 7, 'Sách Sử', '2021-11-24 12:01:38', NULL),
(20, 7, 'Sách Địa Lý', '2021-11-24 12:01:50', NULL),
(21, 7, 'Sách Tin Học', '2021-11-24 12:02:01', NULL),
(22, 8, 'Truyện Dân Gian', '2021-11-24 12:02:13', NULL),
(23, 8, 'Truyện Cười', '2021-11-24 12:02:28', NULL),
(24, 8, 'Truyện Thiếu Nhi', '2021-11-24 12:02:45', NULL),
(25, 8, 'Truyện Ma', '2021-11-24 12:03:06', NULL),
(26, 9, 'Sách Tham Khảo Tiếng Việt', '2021-11-24 12:03:33', NULL),
(27, 9, 'Sách Tham Khảo Toán', '2021-11-24 12:03:45', NULL),
(28, 9, 'Sách Tham Khảo Vật Lý', '2021-11-24 12:04:00', NULL),
(30, 9, 'Sách Tham Khảo Hóa Học', '2021-11-24 12:17:09', NULL),
(31, 10, 'Từ Điển Anh - Việt', '2021-11-24 12:17:37', NULL),
(32, 10, 'Từ Điển Việt - Anh', '2021-11-24 12:17:53', NULL),
(34, 10, 'Từ Điển Việt Nhât', '2021-11-24 12:18:40', NULL),
(35, 10, 'Từ Điển Anh - Anh', '2021-11-24 12:18:54', NULL),
(36, 13, 'Sách Tâm Lý', '2021-11-24 12:19:10', NULL),
(37, 13, 'Sách Tâm Linh', '2021-11-24 12:19:17', NULL),
(38, 13, 'Sách Tôn Giáo', '2021-11-24 12:19:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-03 04:30:34', NULL, 0),
(25, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-03 04:30:38', NULL, 0),
(26, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-03 04:31:17', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `shippingState` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `shippingCity` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `billingState` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `billingCity` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'user', 'user@gmail.com', 0, 'ee11cbb19052e40b07aac0ca060c23ee', 'Lạc Long Quân, ', 'phường 5', 'Hồ Chí Minh', 333, 'Lạc Long Quân,', ' phường 5', 'Hồ Chí Minh', 444, '2021-12-03 04:31:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
