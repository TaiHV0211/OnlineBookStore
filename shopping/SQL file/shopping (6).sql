-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 05:03 AM
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
(7, 'Sách Giáo Khoa', 'Sách giáo khoa các cấp', '2021-11-24 10:57:43', '05-12-2021 05:26:12 PM'),
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
(13, 4, '1', 1, '2021-12-03 04:31:29', NULL, 'Delivered'),
(14, 4, '2', 1, '2021-12-03 04:31:29', NULL, 'Delivered'),
(15, 4, '8', 1, '2021-12-03 04:31:29', NULL, NULL),
(16, 4, '1', 1, '2021-12-03 04:32:42', NULL, NULL),
(17, 4, '2', 1, '2021-12-03 04:32:42', NULL, NULL),
(18, 4, '8', 1, '2021-12-03 04:32:42', NULL, 'Delivered'),
(19, 4, '2', 1, '2021-12-05 13:11:34', NULL, NULL);

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

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 13, 'in Process', 'oke', '2021-12-05 12:29:28'),
(6, 13, 'Delivered', 'oke', '2021-12-05 12:30:10'),
(7, 18, 'Delivered', 'oke', '2021-12-05 12:30:37'),
(8, 14, 'Delivered', 'ok1', '2021-12-05 12:57:46');

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

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 30, 1, 5, 2, 'LƯƠNG THỊ THƠM', 'Hơi Hay', 'Hay', '2021-12-05 04:00:43'),
(6, 30, 1, 2, 3, 'Hồ Văn Tài', 'Hơi Hay', 'Hay', '2021-12-05 04:00:59');

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
(28, 7, 21, 'Sách Tin Học Lớp 11', 'Nhà xuất bản giáo dục VIệt Nam', 19500, 20000, 'Sách Tin Học Lớp 11<br>', 'tinhoc12.jpg', 'tinhoc12_1.jpg', 'tinhoc12_2.jpg', 5000, 'In Stock', '2021-11-25 03:28:38', NULL),
(31, 8, 22, 'Tấm Cám', 'NXB Kim Đồng', 19500, 20000, 'Tấm Cám', 'TamCam1.jpg', 'TamCam2.jpg', 'TamCam3.jpg', 5000, 'In Stock', '2021-12-05 04:01:13', NULL),
(32, 8, 22, 'TRANH TRUYỆN DÂN GIAN VIỆT NAM - SỌ DỪA', 'NXB Kim Đồng', 13500, 15000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Bà mẹ nghèo sau khi uống nước ở một cái gáo\r\ndừa trở về thì có mang. Đến ngày trở dạ, bà sinh ra một đứa con kì hình dị\r\ndạng: tròn lông lốc, có đủ mồm miệng, mắt mũi… nhưng không có cổ và tay chân…\r\nBà mẹ thương tình vẫn gắng nuôi con, cho đến một ngày kia, đứa bé lớn lên, nhận\r\nviệc đi chăn dê cho nhà phú ông… Rồi lại đến một ngày, đứa bé ấy thành quan\r\nTrạng…<o:p></o:p></span></p>', 'Sọ Dừa 1.jpg', 'Sọ Dừa 2.jpg', 'Sọ Dừa 3.jpg', 5000, 'In Stock', '2021-12-05 13:47:58', NULL),
(33, 8, 22, 'TRANH TRUYỆN DÂN GIAN VIỆT NAM - CÂY KHẾ', 'NXB Kim Đồng', 13500, 15000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">“Ăn một quả khế, trả một cục vàng May túi ba\r\ngang, đem đi mà đựng!” Đó là lời con chim lạ nói với người em nghèo khó khi đến\r\năn những quả khế trên cây cạnh túp lều của chàng. Người em thật thà làm theo,\r\nrồi cùng chim đi lấy một ít&nbsp; vàng về làm vốn để sinh sống. Người anh tham\r\nlam, may túi mười hai gang, nhét chặt túi đầy, nhưng cuối cùng vì sao mà bị\r\nnhấn chìm dưới đáy biển sâu…&nbsp;<o:p></o:p></span></p>', 'Cây khế 1.jpg', 'Cây khế 2.jpg', 'Cây khế 3.jpg', 5000, 'In Stock', '2021-12-05 13:49:15', NULL),
(34, 8, 22, 'Tranh Truyện Dân Gian Việt Nam - Thạch Sanh', 'NXB Kim Đồng', 15000, 18000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">“Đàn kêu tích tịch tình tang/Ai mang công chúa\r\ndưới hang trở về!” Từ trong ngục sâu, tiếng đàn trách móc, oán thương&nbsp; đã\r\nkhiến công chúa cất lên tiếng nói. Thế rồi Thạch Sanh – người anh hùng diệt xà\r\ntinh được minh oan, còn Lý Thông – kẻ cướp công, hại người bị biến thành con bọ\r\nhung suốt ngày chui rúc ở nơi bẩn thỉu. Nhưng câu chuyện về chàng Thạch Sanh\r\nchưa kết thúc, vì vừa lúc đó, đại quân 18 nước láng giềng ầm ầm kéo đến vây\r\nkinh đô, đòi bắt công chúa…<o:p></o:p></span></p>', 'Thạch Sanh 1.jpg', 'Thạch Sanh 2.jpg', 'Thạch Sanh 3.jpg', 5000, 'In Stock', '2021-12-05 13:50:00', NULL),
(35, 8, 22, 'Tranh Truyện Dân Gian Việt Nam: Sơn Tinh Thuỷ Tinh (Tái Bản 2018)', 'NXB Kim Đồng', 13500, 15000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Vua Hùng thứ mười tám có một người con gái tên\r\nlà Mị Nương, người đẹp như hoa, tính nết hiền dịu. Một hôm, có hai chàng trai\r\nđến xin cầu hôn. Một người có tài tạo non dời núi, một người có tài gọi gió hô\r\nmưa… Vua Hùng đã chọn một người làm rể. Vì thế kẻ thua cuộc liền sinh lòng oán\r\nhận muốn trả thù. Mối thù ấy còn đọng mãi cho tới ngày nay…<o:p></o:p></span></p>', 'ST-TT 1.jpg', 'ST-TT 2.jpg', 'ST-TT 3.jpg', 5000, 'In Stock', '2021-12-05 13:50:45', NULL),
(36, 8, 23, 'Tranh Truyện Cười Dân Gian Việt Nam - Giấu Đầu Hở Đuôi', 'NXB Kim Đồng', 24000, 25000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Gồm các truyện cười dân gian sau:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Giấu đầu hở đuôi<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Làm theo bố vợ<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Anh chàng keo kiệt<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Của con đấy ạ!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Hâm lên chứ<o:p></o:p></span></p>', 'Giấu đầu lòi đuôi 1.jpg', 'Giấu đầu lòi đuôi 2.jpg', 'Giấu đầu hở đuôi 3.jpg', 5000, 'In Stock', '2021-12-06 01:52:44', NULL),
(37, 8, 23, 'Tranh Truyện Cười Dân Gian Việt Nam - Phù Thủy Sợ Ma', 'NXB Kim Đồng', 21000, 25000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Ngày xửa ngày xưa, ở một làng kia, có một thầy\r\nphù thủy chuyên hành nghề trừ ma tróc quỷ. Làng trên bản dưới đều đồn rằng thầy\r\ncao tay ấn. Nhà nào mỗi khi có việc phải mời thầy cũng đều đón rước trọng vọng.<o:p></o:p></span></p>', 'phù thuỷ sợ ma 1.jpg', 'phủ thuỷ sợ ma 2.jpg', 'phủ thuỷ sợ ma 2.jpg', 5000, 'In Stock', '2021-12-06 01:53:59', NULL),
(38, 8, 23, 'TRUYỆN TRẠNG QUỲNH – TRẠNG LỢN', 'Nhà xuất bản: Dân trí', 38000, 48000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">“Thói thường người ta nghĩ thủ đoạn châm biếm\r\nbóng gió là đòn ngầm của kẻ khôn ngoan, nhưng nếu đọc Truyện Trạng Quỳnh –\r\nTrạng Lợn, thấy hoàn toàn không phải thế. Đối mặt với Trạng Quỳnh – Trạng Lợn,\r\nđến trời đất thần phật tôn nghiêm linh thiêng thấu trị đầu óc con người thời ấy\r\ncũng phải chịu một phép. Sá gì bọn vua chúa, quan cách, nhà giàu hợm của, nhãi\r\nnhép nịnh bợ thổi kèn đu đủ, tất cả lúc nhúc, đáng khinh đáng tởm, tất cả bị\r\nTrạng vặt râu, Trạng đánh đập túi bụi, Trạng nhổ bãi nước bọt vào mặt, rồi\r\nTrạng cất tiếng cười hả hê”<o:p></o:p></span></p>', 'Trạng Quỳnh 1.jpg', 'Trạng Quỳnh 2.jpg', 'Trạng Quỳnh 3.jpg', 5000, 'In Stock', '2021-12-06 01:54:46', NULL),
(39, 8, 23, 'Sách - Một Cuốn Sách Buồn...Cười - Vui Vẻ Không Quạu Nha 2', 'Nhà Xuất Bản Phụ Nữ Việt Nam', 53000, 55000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Mang đậm tính hài hước, tếu táo và trẻ trung\r\ncủa Gen Z, đây sẽ là một cuốn sách dễ dàng khiến nhiều người thích thú bởi như\r\nnhìn thấy chính bản thân trong từng trang sách: “Có thể bạn thấy tôi bình tĩnh\r\nvới mọi thứ. Nhưng thực ra trong đầu tôi đã bỏ cuộc 7749 lần”.<o:p></o:p></span></p>', 'Vui vẻ không quạo 1.jpg', 'Vui vẻ không quạo 2.jpg', 'Vui vẻ không quạo 3.jpg', 5000, 'In Stock', '2021-12-06 01:55:37', NULL),
(40, 8, 23, 'Truyện Cười Việt Nam Thời @', 'Nhà sách Minh Thắng', 45000, 50000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Từ những cốt truyện hiện đại, tác giả đã thổi\r\nhồn mình vào trong đó, nhào nặn câu chữ, chắt lọc tình tiết, văn phòng trôi\r\nchảy, cách kể hấp dẫn, các nhân vật cười trong truyện cứ hiện ra, nhớ mãi để có\r\ndịp hội ngộ, đông người được bung ra cùng nhau cười nghiêng ngả.<o:p></o:p></span></p>', 'Truyện cười Việt Nam thời @ 1.jpg', 'Truyện cười Việt Nam thời @ 2.jpg', 'Truyện cười Việt Nam thời @ 3.jpg', 5000, 'In Stock', '2021-12-06 01:56:19', NULL),
(41, 8, 24, 'TÓC RỐI ĐỔI KẸO: TRUYỆN THIẾU NHI', 'Nhà Xuất  Bản Trẻ', 60000, 70000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Cu Lồ và cu Lồ Sứt chưa ra đời, nhưng bà ngoại\r\ntương lai của chúng đã viết câu chuyện này dành sẵn cho cháu mình để chúng biết\r\nvề cụ, kỵ và những câu chuyện của họ mà chúng không được chứng kiến. Bà ngoại\r\ntương lai tên Zin, và trong Tóc rối đổi kẹo, bạn đọc sẽ theo chân cô bé Zin lí\r\nlắc mà cũng hay suy tư quay ngược thời gian trở về những năm 70 của thế kỉ\r\ntrước.<o:p></o:p></span></p>', 'Tóc rối đổi kẹo 1.jpg', 'Tóc rối đổi kẹo 2.gif', 'Tóc rối đổi kẹo 3.gif', 5000, 'In Stock', '2021-12-06 01:57:25', NULL),
(42, 8, 24, 'Sách: Ba Chú Lợn Con - Truyện Tranh Dành Cho Thiếu Nhi', 'NXB Mỹ Thuật', 9000, 12000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Dựa theo chương trình kể chuyện của học sinh\r\ntiểu học, các câu chuyện được tóm lược lại, hình ảnh minh họa sinh động. Nội\r\ndung sách hướng các em tới những điều hay lẽ phải, giáo dục các em những đức\r\ntính cần thiết để trở thành người công dân tốt.<o:p></o:p></span></p>', 'Ba chú lợn con 1.jpg', 'Ba chú lợn con 2.jpg', 'Ba chú lợn con 3.jpg', 5000, 'In Stock', '2021-12-06 01:58:22', NULL),
(43, 8, 24, 'Sách - Cò Và Cáo (Truyện Tranh Ngụ Ngôn Dành Cho Thiếu Nhi)', 'Nhà Xuất Bản Phụ Nữ Việt Nam', 21000, 30000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Cuốn sách nằm trong bộ \"Truyện tranh ngụ\r\nngôn dành cho thiếu nhi\" (song ngữ Anh - Việt) gồm những câu chuyện nổi\r\ntiếng trong văn học dành cho thiếu nhi, sách được thiết kế và vẽ câu chuyện\r\ntheo tranh…<o:p></o:p></span></p>', 'Cò và Cáo con 1.jpg', 'Cò và Cáo con 2.jpg', 'Cò và Cáo con 3.jpg', 5000, 'In Stock', '2021-12-06 02:00:01', NULL),
(44, 8, 24, 'Sách: Rùa Và Thỏ Chạy Thi -Truyện Tranh Thiếu Nhi', 'NXB Mỹ Thuật', 12000, 15000, 'Sách: Rùa Và Thỏ Chạy Thi -Truyện Tranh Thiếu Nhi<br>', 'Rùa và Thỏ Chạy Thi 1.jpg', 'Rùa và Thỏ Chạy Thi 2.jpg', 'Rùa và Thỏ Chạy Thi 3.jpg', 5000, 'In Stock', '2021-12-06 02:01:06', NULL),
(45, 8, 24, 'Tuyển Truyện Hay Dành Cho Thiếu Nhi - Thằng Hải Ổi', 'Nhà Xuất  Bản Trẻ', 24000, 25000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Thằng Hải “ổi” là một đứa hoc trò ngỗ nghịch.\r\nNó ghét đám con nhà giàu phách lối nên đi học thường hay đánh lộn. Má nó gởi nó\r\nqua ở với chú Tư bên xóm Vàm Kinh nhưng chứng nào tất nấy, nó vẫn phá phách,\r\nhỗn láo với cô giáo nên bị đuổi học. Nó quen với con Hạ Phi, một đứa con gái\r\nnghèo mua gánh bán bưng, cũng đi học nhưng con Hạ Phi rất hiểu thằng Hải.<o:p></o:p></span></p>', 'Thằng Hải Ổi 1.jpg', 'Thằng Hải Ổi 1.jpg', 'Thằng Hải Ổi 1.jpg', 5000, 'In Stock', '2021-12-06 02:03:25', NULL),
(46, 8, 25, 'Ring - Vòng Tròn Ác Nghiệt (Tái Bản 2019)', 'Nhà Xuất Bản Văn Học', 66000, 76000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Cái chết đến từ một cuộn băng. Hai đôi nam nữ\r\nvị thành niên lần lượt chết bởi cơn đau bóp nghẹt trái tim một tuần sau khi xem\r\nphải cuộn băng lạ trong một nhà nghỉ ngoại ô Tokyo, bên trên một cái giếng cũ<o:p></o:p></span></p>', 'Ring .jpg', 'ring 2.jpg', 'ring 3.jpg', 5000, 'In Stock', '2021-12-06 02:05:24', NULL),
(47, 8, 25, 'Hành Lang U Tối - Down A Dark Hall', 'Nhà Xuất Bản Kim Đồng', 62000, 70000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Lần đầu tiên Kit Gordy trông thấy Blackwood\r\nphía sau cánh cổng sắt sơn đen, cô đã phải thốt lên trong lòng: Nơi này có thứ\r\ngì đó tà ác. Toà dinh thự lừng lững khiến cơn rùng mình chạy rần rần khắp người\r\nKit. Nhưng cô vẫn cố ép mình vào khuôn khổ, cố quên đi những lời đồn thổi kì bí\r\nvề ngôi trường nội trú biệt lập này.<o:p></o:p></span></p>', 'Hành lang u tối 1.jpg', 'Hành lang u tối 2.jpg', 'Hành lang u tối 3.jpg', 5000, 'In Stock', '2021-12-06 02:06:32', NULL),
(48, 8, 25, 'Ngôi Làng Linh Thiêng', 'Nhà Xuất Bản Phụ Nữ Việt Nam', 116000, 169000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Từ những trải nghiệm tâm linh, Nguyên dần dần\r\nhiểu được số phận của cậu, cậu bắt đầu xâm nhập vào thế giới Tâm Linh huyền bí.\r\nMột ngày nọ Nguyên gặp một người con gái rất xinh đẹp nhưng vô cùng bí ẩn,\r\nNguyên không rõ cô gái là ai, xuất hiện với mục đích gì, cô ta thoắt ẩn thoắt\r\nhiện như một bóng ma luôn ám ảnh cậu..<o:p></o:p></span></p>', 'Ngôi làng linh thiêng 1.jpg', 'Ngôi làng linh thiêng 2.jpg', 'Ngôi làng linh thiêng 3.jpg', 5000, 'In Stock', '2021-12-06 02:07:28', NULL),
(49, 8, 25, 'Hồ Tuyệt Mệnh', 'Nhà Xuất  Bản Hồng  Đức', 76000, 102000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Quỷ Cổ Nữ luôn rất hay và ấn tượng trong cách\r\ndẫn dắt câu chuyện. Những bí ẩn và uẩn khúc lúc đầu đã được khép lại bằng những\r\nlập luận rất khoa học, logic và hiển nhiên là không hề có chút ma quái bí ẩn\r\nnào ở cuối truyện.<o:p></o:p></span></p>', 'Hồ tuyệt mệnh 1.jpg', 'Hồ tuyệt mệnh 2.jpg', 'Hồ tuyệt mệnh 3.jpg', 5000, 'In Stock', '2021-12-06 02:10:27', NULL),
(50, 8, 25, 'Mặt Nạ Trắng - Kim Tam Long (tiểu thuyết trinh thám kinh dị Trung Quốc) (Tái Bản)', 'Nhà Xuất Bản Hội Nhà Văn', 125000, 130000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Vào một đêm mùa đông, có một đôi vợ chồng\r\nngười thợ rèn bị ba gã đàn ông đột nhập và giết chết hết sức dã man, ngôi nhà\r\ncủa họ cũng đã bị thiêu cháy thành tro…<o:p></o:p></span></p>', 'Mặt nạ trắng 1.jpg', 'Mặt nạ trắng 2.jpg', 'Mặt nạ trắng 3.jpg', 5000, 'In Stock', '2021-12-06 02:11:05', NULL),
(51, 9, 26, 'NÂNG CAO VÀ PHÁT TRIỂN TIẾNG VIỆT 4 TẬP 2', 'Nhà Xuất  Bản Tổng  hợp TP.HCM', 37000, 39000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Cuốn sách là tài liệu tham khảo giúp các em\r\nhọc sinh lớp 4 phát triển kỹ năng giải các câu hỏi và bài tập Tiếng Việt, đặc\r\nbiệt là các câu hỏi và bài tập nâng cao.<o:p></o:p></span></p>', 'Tham Khảo TV 1.jpg', 'Tham Khảo TV 2.jpg', 'Tham Khảo TV 3.jpg', 5000, 'In Stock', '2021-12-06 02:15:32', NULL),
(52, 9, 26, 'Bộ Đề Kiểm Tra, Đánh Giá Năng Lực Tiếng Việt 4 – (Tập 1-2)', 'NXB Đại Học Sư Phạm', 60000, 70000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Cuốn sách gồm&nbsp;bộ đề kiểm tra năng lực các\r\nmôn. Mỗi bộ đề đều được biên soạn theo cấu trúc thống nhất bao gồm các câu hỏi\r\ntrắc nghiệm và tự luận...<o:p></o:p></span></p>', 'KTĐGNL 4-tập 1-2  1.jpg', 'KTĐGNL 4-tập 1-2  2.jpg', 'KTĐGNL 4-tập 1-2  3.jpg', 5000, 'In Stock', '2021-12-06 02:18:39', NULL),
(53, 9, 26, 'Sách - Bộ Đề Kiểm Tra, Đánh Giá Năng Lực Tiếng Việt 2 Tập 1', 'Đại học sư phạm TPHCM', 27000, 30000, '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\">Bộ Đề Kiểm Tra, Đánh Giá Năng Lực Tiếng Việt 2\r\nTập 1&nbsp;nhằm giúp học sinh lớp 1&nbsp;phát triển năng lực đọc, viết, nghe,\r\nnói thông qua hệ thống đề kiểm tra, đánh giá.<o:p></o:p></span></p>', 'Bộ đề KT-ĐGNL TV2 tập 1 1.jpg', 'Bộ đề KT-ĐGNL TV2 tập 1 2.jpg', 'Bộ đề KT-ĐGNL TV2 tập 1 3.jpg', 5000, 'In Stock', '2021-12-06 02:19:26', NULL),
(54, 9, 26, 'Sách - Bộ Đề Kiểm Tra, Đánh Giá Năng Lực Tiếng Việt 1 Tập 2', 'Đại Học Sư Phạm Thành Phố Hồ Chí Minh', 30000, 32000, '<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; font-family: &quot;Helvetica Neue&quot;; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sách gồm 3 phần:&nbsp;\r\n1. Tóm tắt kiến thức, kĩ năng theo học kì, lớp. 2. Có các dạng đề ôn tập kiểm\r\ntra đánh giá hằng tuần, giữa kì và cuối kì 3. Gợi ý giải và đáp án cho một số\r\nbài tập.</span><o:p></o:p></p>', 'Bộ đề KT-DGNL TV1 tập 2 1.jpg', 'Bộ đề KT-DGNL TV1 tập 2 2.jpg', 'Bộ đề KT-DGNL TV1 tập 2 3.jpg', 5000, 'In Stock', '2021-12-06 02:20:23', NULL),
(55, 9, 26, 'Bộ Đề Kiểm Tra, Đánh Giá Năng Lực Tiếng Việt 1 - Tập 1 (Tái Bản 2020)', 'NXB Đại Học Sư Phạm TPHCM', 24000, 30000, '<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hệ thống bài tập trong từng đề kiểm tra, đánh\r\ngiá được thiết kế theo các tuần học giữa kì, cuối kì của từng khối lớp. Các bài\r\nkiểm tra được thiết kế đa dạng;<span class=\"apple-converted-space\">&nbsp;</span></span><o:p></o:p></p>', 'Bộ đề KT-DGNL TV1 tập 1 1.jpg', 'Bộ đề KT-DGNL TV1 tập 1 2.jpg', 'Bộ đề KT-DGNL TV1 tập 1 3.jpg', 5000, 'In Stock', '2021-12-06 02:21:05', NULL),
(56, 9, 27, 'Giải toán Đại số 10 (Dùng cho học sinh lớp chuyên)', 'NXB Giáo Dục Việt Nam', 40000, 43000, '<p class=\"MsoNormal\"><span style=\"font-family: Verdana, sans-serif; color: rgb(102, 102, 102); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">đáp ứng yêu cầu mới của sách giáo khoa chuyên ban, kết hợp\r\ngiữa tự luận và trắc nghiệm khách quan, bộ sách này dành cho các em học sinh\r\ncác trường chuyên và học sinh khá giỏi ở các trường Trung học phổ thông trên\r\ntoàn quốc.</span><o:p></o:p></p>', 'Giải Toán ĐS10 1.jpg', 'Giải Toán ĐS10 1.jpg', 'Giải Toán ĐS10 1.jpg', 5000, 'In Stock', '2021-12-06 02:21:58', NULL),
(57, 9, 27, 'Luyện Thi Toán Hình Học Lớp 9', 'NXB Đại Học Quốc Gia TP.HCM', 80000, 83000, '<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif; color: rgb(1, 45, 65); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Nhằm giúp cho các em học sinh ôn tập luyện thi\r\nvào lớp 10 môn toán – phần hình học</span><o:p></o:p></p>', 'luyện thi toán hình 9 1.jpg', 'luyện thi toán hình 9 1.jpg', 'luyện thi toán hình 9 1.jpg', 5000, 'In Stock', '2021-12-06 02:22:52', NULL),
(58, 9, 27, 'Tuyển Chọn Các Bài Toán Đố Nâng Cao - Lớp 5 - Tái Bản 2020', 'NXB Đại Học Quốc Gia TP.HCM', 32000, 48000, '<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; font-family: Roboto; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Quyển sách sẽ là tài liệu hữu ích cho học sinh tự học hoặc\r\ndưới sự hướng dẫn của phụ huynh.</span><o:p></o:p></p>', 'Các bài giải toán đố NC 5.1.jpg', 'Các bài giải toán đố NC 5.1.jpg', 'Các bài giải toán đố NC 5.1.jpg', 5000, 'In Stock', '2021-12-06 02:27:51', NULL),
(59, 9, 27, 'Toán Nâng Cao - Lớp 4', 'NXB Đại Học Quốc Gia TP.HCM', 35500, 39000, '<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Trong quyển sách này, nhóm tác giả chọn lọc và\r\ngiới thiệu các bài toán hay, khó phù hợp với chương trình toán lớp 4 mới. Trong\r\nđó, có những bài toán rèn kỹ năng tính toán, có những bài toán suy luận giúp\r\nphát triển trí thông minh, có những bài toán vui nhộn giúp tăng hứng thú học\r\ntập.</span><o:p></o:p></p>', 'Toán NC4 1.jpg', 'Toán NC4 2.jpg', 'Toán NC4 3.jpg', 5000, 'In Stock', '2021-12-06 02:28:43', NULL),
(60, 9, 27, 'Bài Giảng Và Lời Giải Chi Tiết Toán 8 - Tập 1', 'NXB Đại Học Quốc Gia Hà Nội', 63000, 79000, '<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify;text-justify:inter-ideograph\"><span style=\"font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#333333\">Tóm tắt kiến thức cơ bản: học sinh cần nắm vững để vận dụng vào\r\nthực tiễn<o:p></o:p></span></p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify;text-justify:inter-ideograph\"><span style=\"font-family:&quot;Arial&quot;,sans-serif;\r\ncolor:#333333\">Một số bài tập mẫu và bài tập cơ bản: giúp học sinh củng cố,\r\nkhắc sâu kiến thức đã học.<o:p></o:p></span></p>', 'Toán NC4 1.jpg', 'Toán NC4 2.jpg', 'Toán NC4 3.jpg', 5000, 'In Stock', '2021-12-06 02:29:36', NULL),
(61, 10, 31, 'Sách -Từ Điển Oxford Anh Việt 350.000 Từ', 'NXB Đại Học Quốc Gia Hà Nội', 238000, 298000, '<p class=\"MsoNormal\"><font face=\"arial\" size=\"3\"><span lang=\"VI\" style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">C</span><span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">uốn từ điển được biên\r\ndịch dựa theo cuốn từ điển Oxford, Cambridge và một số cuốn từ điển uy tín trên\r\nthế giới, là một công trình liên tục được đổi mới và công bố bởi một nhà xuất\r\nbản uy tín trên thế giới với nhiều ấn phẩm khác nhau đã có mặt tại Việt Nam,\r\ntrợ giúp cho các nhà nghiên cứu, các giảng viên, đặc biệt là sinh viên Việt Nam\r\nnhiều thập kỷ qua.</span></font><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Oxford.jpg', 'hình_TĐ Oxford.jpg', 'hình_TĐ Oxford.jpg', 6000, 'In Stock', '2021-12-06 02:32:04', NULL),
(62, 10, 31, 'Từ Điển Anh - Việt 150.000 Từ', 'Nhà Xuất bản Dân Trí', 73000, 113000, '<span style=\"font-size: 13pt; font-family: &quot;Times New Roman&quot;, serif; color: rgb(97, 97, 97); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Cuốn từ điển giúp bạn đọc</span><span style=\"font-size: 13pt; font-family: &quot;Times New Roman&quot;, serif; color: rgb(97, 97, 97); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> </span><span style=\"font-size: 13pt; font-family: &quot;Times New Roman&quot;, serif; color: rgb(97, 97, 97); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">trong\r\nviệc tra cứu nhanh các từ tiếng Anh, các thuật ngữ chuyên ngành,… </span><span lang=\"VI\" style=\"font-size: 13pt; font-family: &quot;Times New Roman&quot;, serif; color: rgb(97, 97, 97); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">P</span><span style=\"font-size: 13pt; font-family: &quot;Times New Roman&quot;, serif; color: rgb(97, 97, 97); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hục\r\nvụ đắc lực cho độc giả trong quá trình học tập và làm việc</span><br>', 'hình_TĐ Anh Việt.jpg', 'hình_TĐ Anh Việt 2.jpg', 'hình_TĐ Anh Việt 1.jpg', 6000, 'In Stock', '2021-12-06 02:33:21', NULL),
(63, 10, 31, 'SÁCH TỪ ĐIỂN ANH VIỆT - ENGLISH VIETNAMESE DICTIONARY ( BÌA CỨNG )', 'Nhà Xuất bản Khoa Học Xã Hội', 612000, 680000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Trước mắt bạn là\r\ncuốn từ điển Anh-Việt, tập đại thành của Tiếng Anh hiện đại. Cuốn sách do một\r\nnhóm các học giả và nhà dịch thuật giàu kinh nghiệm làm 1 cách công phu dựa\r\ntrên cơ sở của cuốn Oxford Advanced learner’s Dictionary, 1992, là cuốn từ điển\r\nmới nhất của nước Anh hiện nay.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_English VietNamese Dictionary.jpg', 'hình_English VietNamese Dictionary.jpg', 'hình_English VietNamese Dictionary.jpg', 6000, 'In Stock', '2021-12-06 02:38:53', NULL),
(64, 10, 31, 'Từ Điển Anh Việt - Từ Điển Tiếng Anh', 'Nhà Xuất bản Hồng Đức', 325000, 330000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Không giống như\r\nnhững cuốn từ điển khác, từ điển ANH – VIỆT minh họa từ vựng bằng hình ảnh sống\r\nđộng, kích thích thị giác khiến cho việc học từ trở nên thú vị và dễ nhớ\r\nhơn.&nbsp;</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Anh-Việt 150k từ.jpeg', 'hình_TĐ Anh-Việt 150k từ.jpeg', 'hình_TĐ Anh-Việt 150k từ.jpeg', 6000, 'In Stock', '2021-12-06 02:40:26', NULL),
(65, 10, 32, 'Sách Từ Điển Việt - Anh (Bìa Cứng)', 'NXB Văn Hóa Thông Tin', 96000, 120000, '<p class=\"MsoNormal\"><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:black\">Bên cạnh những từ thông dụng nhất,\r\nlà những từ được cập nhật từ các lĩnh vực đang phát triển nhanh chóng như khoa\r\nhọc kỹ thuật, công nghệ máy tính...</span><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Việt-Anh bìa cứng .jpg', 'hình_TĐ Việt-Anh bìa cứng .jpg', 'hình_TĐ Việt-Anh bìa cứng .jpg', 6000, 'In Stock', '2021-12-06 02:41:36', NULL),
(66, 10, 32, 'TỪ ĐIỂN VIỆT - ANH (HỒNG ÂN) - BÌA CỨNG', 'Nhà Xuất bản Từ Điển Bách Khoa', 192000, 240000, '<p class=\"MsoNormal\"><span lang=\"VI\" style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:black;mso-ansi-language:VI\">C</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:black\">uốn từ điển này với mục đích giúp bạn đọc có một công cụ hữu ích\r\ntrong việc tra cứu nhanh các từ tiếng anh, các thuật ngữ chuyên ngành.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_Sách Từ Điển Việt-Anh(bc).jpg', 'hình_Sách Từ Điển Việt-Anh(bc).jpg', 'hình_Sách Từ Điển Việt-Anh(bc).jpg', 6000, 'In Stock', '2021-12-06 02:45:11', NULL),
(67, 10, 32, 'TỪ ĐIỂN VIỆT - ANH (75000 TỪ)', 'Nhà Xuất bản Từ Thanh Niên', 54000, 65000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Các từ vựng được\r\ntác giả sắp xếp theo thứ tự bảng chữ cái nên rất tiện lợi cho bạn đọc tra cứu.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Việt-Anh(75k từ).jpg', 'hình_TĐ Việt-Anh(75k từ).jpg', 'hình_TĐ Việt-Anh(75k từ).jpg', 6000, 'Out of Stock', '2021-12-06 02:45:55', NULL),
(68, 10, 32, 'Từ Điển Việt Anh Trên 135.000 Từ', 'Nhà Xuất Bản Hồng Đức', 106000, 110000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sách được biên\r\nsoạn kỹ lưỡng, lượng từ phong phú, giải thích rõ rang dễ hiểu, chủ yếu với\r\nnhững từ thường dung trong sinh hoạt, giao tiếp hang ngày.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Anh-Việt trên 135k từ.jpg', 'hình_TĐ Anh-Việt trên 135k từ.jpg', 'hình_TĐ Anh-Việt trên 135k từ.jpg', 6000, 'In Stock', '2021-12-06 02:47:07', NULL),
(69, 10, 32, 'Từ Điển Việt - Anh (140.000 Từ)', 'Nhà Xuất Bản Hồng Đức', 72000, 80000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Cuốn từ điển\r\ncung cấp</span><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> </span><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;từ vựng Tiếng Anh thông dụng nhất với đầy đủ\r\nphiên âm, từ loại, từ đồng nghĩa, phản nghĩa và ví dụ minh họa.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Việt-Anh(140k từ).jpg', 'hình_TĐ Việt-Anh(140k từ).jpg', 'hình_TĐ Việt-Anh(140k từ).jpg', 6000, 'In Stock', '2021-12-06 03:33:22', NULL),
(70, 10, 34, 'Từ Điển Việt - Nhật', 'NXB Thanh Niên', 80000, 98000, '<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify;text-justify:inter-ideograph\"><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:#333333\">Từ Điển Việt - Nhật<o:p></o:p></span></p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify;text-justify:inter-ideograph\"><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:#333333\">- Đầy đủ các từ thông dụng<o:p></o:p></span></p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify;text-justify:inter-ideograph\"><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:#333333\">- Trình bày dễ hiểu<o:p></o:p></span></p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify;text-justify:inter-ideograph\"><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:#333333\">- Cập nhật nhiều từ mới<o:p></o:p></span></p>', 'hình_Nhật-Việt,Việt-Nhật.jpg', 'hình_Nhật-Việt,Việt-Nhật.jpg', 'hình_Nhật-Việt,Việt-Nhật.jpg', 6000, 'In Stock', '2021-12-06 03:35:10', NULL),
(71, 10, 34, 'Từ Điển Việt - Nhật (bìa mềm)', 'NXB Từ Điển Bách Khoa', 85000, 99000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Từ Điển Việt -\r\nNhật - Trên 80.000 từ - Cập nhật nhiều từ mới - Trình bày đơn giản, rõ ràng -\r\nTiện lợi, dễ tra cứu</span><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Việt - Nhật bìa mềm.jpg', 'hình_TĐ Việt - Nhật bìa mềm.jpg', 'hình_TĐ Việt - Nhật bìa mềm.jpg', 6000, 'In Stock', '2021-12-06 03:35:49', NULL),
(72, 10, 34, 'TỪ ĐIỂN VIỆT-NHẬT (HỒNG ÂN)', 'NXB Hồng Đức', 56000, 70000, '<p class=\"MsoNormal\"><span lang=\"VI\" style=\"font-size: 13pt; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">C</span><span style=\"font-size: 13pt; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">uốn sách thu thập\r\nvà giải thích những chữ Hán thông dụng trong tiếng Nhật gồm Joyo Kanji,&nbsp;tổ\r\nhợp, thuật ngữ.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Việt-Nhật(Hồng Ân).jpg', 'hình_TĐ Việt-Nhật(Hồng Ân).jpg', 'hình_TĐ Việt-Nhật(Hồng Ân).jpg', 6000, 'In Stock', '2021-12-06 03:36:38', NULL),
(73, 10, 34, 'TỪ ĐIỂN VIỆT - NHẬT', 'NXB Từ Điển Bách Khoa', 50000, 63000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Nội dung sách\r\nđược trình bày chi tiết, đầy đủ, được sắp xếp theo vần chữ cái tiếng Việt, rất\r\ntiện lợi cho bạn tra cứu. Ngoài ra, cuốn từ điển này còn được bổ sung những từ\r\nmới cùng các ví dụ minh họa dễ hiểu.</span><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Việt - Nhật (NXB Từ Điển Bách Khoa).gif', 'hình_TĐ Việt - Nhật (NXB Từ Điển Bách Khoa).gif', 'hình_TĐ Việt - Nhật (NXB Từ Điển Bách Khoa).gif', 6000, 'In Stock', '2021-12-06 03:38:26', NULL),
(74, 10, 34, 'Từ Điển Nhật - Việt, Việt - Nhật', 'NXB Thanh Niên', 158000, 198000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Từ Điển Nhật\r\nViệt - Việt Nhật được biên soạn đầy đủ, cập nhật và mang tính chính xác cao.\r\nVới cách trình bày khoa học và giải thích rõ ràng, dễ hiểu, cuốn sách sẽ đáp\r\nứng được yêu cầu của tất cả những người đang học và sử dụng tiếng Nhật.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_TĐ Việt Nhật.jpg', 'hình_TĐ Việt Nhật.jpg', 'hình_TĐ Việt Nhật.jpg', 6000, 'In Stock', '2021-12-06 03:39:26', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(75, 11, 43, 'Chính Trị Luận (Tái Bản 2018)', 'NXB Thế Giới', 131000, 169000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Tác phẩm này\r\nđược xem là căn bản cho Chính trị học Tây phương.<span class=\"apple-converted-space\">&nbsp;</span></span><em><span style=\"font-size:\r\n13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:#333333\">Chính trị luận</span></em><span class=\"apple-converted-space\"><span style=\"font-size: 13pt; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></span><span style=\"font-size: 13pt; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">nghiên cứu các vấn đề cơ bản về nhà nước, chính\r\nquyền, chính trị, tự do, công bằng, tài sản, quyền, luật và việc thực thi luật\r\npháp của các cơ quan thẩm quyền.</span><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_Chính Trị Luận 1.jpg', 'hình_Chính Trị Luận 2.jpeg', 'hình_Chính Trị Luận 2.jpeg', 6000, 'In Stock', '2021-12-06 03:40:41', NULL),
(76, 11, 43, 'Chính Trị - Khái Lược Những Tư Tưởng Lớn', 'Nhà Xuất bản Dân Trí', 351000, 390000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(130, 130, 130); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Tập hợp những\r\nbài viết ngắn gọn hàm súc giải thích rõ những điều khó hiểu, những sơ đồ từng\r\nbước giúp làm sáng tỏ những lí thuyết rối rắm, và những hình ảnh minh họa dí\r\ndỏm giúp chúng ta ý thức rõ hơn về vai trò của mình trong cách thức tổ chức xã\r\nhội.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình 1_Chính trị- khái lược tư tưởng lớn.jpg', 'hình 2_Chính trị- khái lược tư tưởng lớn.jpg', 'hình_Chính trị- khái lược tư tưởng lớn.gif', 6000, 'In Stock', '2021-12-06 03:41:28', NULL),
(77, 11, 43, 'Quân Vương – Thuật Cai Trị (Tái Bản)', 'Nhà Xuất Bản Thế Giới', 81000, 109000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Cuốn sách gối\r\nđầu giường của rất nhiều thế hệ chính trị gia và lãnh đạo trên thế giới.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Cuốn sách nhỏ\r\ncủa Niccolò Machiavelli đã hội tự những nguyên tắc làm nền móng cho khoa học\r\nquản trị nói chung và chính trị học nói riêng.</span><span style=\"font-size:\r\n13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình1_Quân vương - thuật cai trị.jpg', 'hình2_Quân vương - thuật cai trị.jpg', 'hình2_Quân vương - thuật cai trị.jpg', 6000, 'In Stock', '2021-12-06 03:42:29', NULL),
(78, 11, 43, 'Qatar - Đất Nước Nhỏ, Nền Chính Trị Lớn', 'NXB Trẻ', 83000, 85000, '<p class=\"MsoNormal\"><span lang=\"VI\" style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">…</span><strong><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:#242424\">Kamrava</span></strong><span class=\"apple-converted-space\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:#242424\">&nbsp;</span></span><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">lập luận rằng việc Qatar sử dụng hiệu quả quyền\r\nlực tinh tế thách thức hiểu biết của chúng ta về vai trò của các nước nhỏ trong\r\nhệ thống toàn cầu. Cuốn sách này là khảo cứu sâu sắc và kịp thời về xã hội và\r\nchính trị Qatar đương đại.</span><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình1_Qatar.jpg', 'hình1_Qatar.jpg', 'hình1_Qatar.jpg', 6000, 'In Stock', '2021-12-06 03:43:05', NULL),
(79, 11, 43, 'Một Số Vấn Đề Lý Luận Chính Trị Ở Việt Nam', 'NXBTH TPHCM', 76000, 95000, '<p style=\"margin:0cm\"><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:black\">\"Chúng tôi không có tham vọng\r\ngiải quyết tất cả những vấn đề đặt ra về lý luận chính trị ở Việt Nam. Chúng\r\ntôi chỉ cố gắng lý giải một phần nào về nhận thức trên tư duy hiện nay về lý\r\nluận chính trị; đánh giá trên những nét lớn về sự vận dụng lý luận chính trị đó\r\nở Việt Nam. Cuộc khảo nghiệm về lý luận chính trị ở Việt Nam vẫn còn tiếp tục.\r\nNhững ý kiến về vấn đề này còn nhiều khác biệt. Trong cuốn sách này, chúng tôi\r\nđặt vấn đề lý luận chính trị ở Việt Nam vào dòng vận động phát triển của dân\r\ntộc để phân tích.\"<o:p></o:p></span></p>\r\n\r\n<p style=\"margin:0cm\"><i><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:black\">- Trích \"Lời mở đầu\"\r\nsách Một Số Vấn Đề Lý Luận Chính Trị Ở Việt Nam</span></i><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:black\"><o:p></o:p></span></p>', 'hình_Một số vấn đề lý luận chính trị ở VN.jpg', 'hình_Một số vấn đề lý luận chính trị ở VN.jpg', 'hình_Một số vấn đề lý luận chính trị ở VN.jpg', 6000, 'In Stock', '2021-12-06 03:43:53', NULL),
(80, 11, 44, 'Cẩm Nang Pháp Luật Dành Cho Doanh Nghiệp', 'Nhà Xuất Bản Hồng Đức', 238000, 395000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hệ thống pháp\r\nluật trong doanh nghiệp ngày càng hoàn thiện và là cơ sở pháp lý bền vững để\r\ncác doanh nghiệp trong quá trình hoạt động phải luôn luôn thực hiện đúng như\r\nquy định về điều hành, quản lý doanh nghiệp; góp vốn, đầu tư, chuyển nhượng\r\nvốn, chính sách về tiền lương, bảo hiểm; các loại thuế; sử dụng hóa đơn, kiểm\r\ntra, thanh tra các hoạt động trong doanh nghiệp …</span><span style=\"font-size:\r\n13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_Cẩm nang PL dành cho doanh nghiệp.jpg', 'hình_Cẩm nang PL dành cho doanh nghiệp.jpg', 'hình_Cẩm nang PL dành cho doanh nghiệp.jpg', 6000, 'In Stock', '2021-12-06 03:44:37', NULL),
(81, 11, 44, 'Pháp luật về hợp đồng - các vấn đề pháp lý cơ bản', 'NXB Dân Trí', 800000, 820000, '<p class=\"MsoNormal\"><strong><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:#162542\">Đây là cuốn sách đầy đủ nhất\r\nliên quan đến pháp luật về hợp đồng</span></strong><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:#162542\">.<span class=\"apple-converted-space\">&nbsp;</span></span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:#162542\">Đây là cuốn sách duy nhất trình\r\nbày các vấn đề liên quan đến pháp luật về hợp đồng cả từ góc độ lý thuyết và\r\nthực tế</span></strong><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\n&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:#162542\">.</span><span style=\"font-size:\r\n13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>\r\n\r\n<strong><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin;\r\ncolor:#162542;mso-ansi-language:#1000;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">Đây là cuốn sách duy nhất trình bày các vấn đề liên quan đến pháp luật\r\nvề hợp đồng cả từ góc độ lý thuyết và thực tế</span></strong><span style=\"font-size:13.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-ascii-theme-font:\r\nmajor-latin;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:\r\nmajor-latin;mso-bidi-theme-font:major-latin;color:#162542;mso-ansi-language:\r\n#1000;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">…</span><br>', 'hình1-Pháp luật về hợp đồng.jpg', 'hình2-Pháp luật về hợp đồng.jpg', 'hình3-Pháp luật về hợp đồng.jpg', 6000, 'In Stock', '2021-12-06 03:45:27', NULL),
(82, 11, 44, 'Luật Bảo Vệ Môi Trường Và Chính Sách Pháp Luật Liên Quan Đến Chất Thải, Nước Thải, Khí Thải, Mức Xử Phạt', 'Nhà Xuất Bản Hồng Đức', 260000, 350000, '<p class=\"MsoNormal\"><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;color:#333333\">Nội dung cuốn sách có giá trị\r\nthực tiễn, hy vọng đây là tài liệu tham khảo thật sự cần thiết để bạn đọc tìm\r\nhiểu, thực hiện đúng chính sách pháp luật.</span><span style=\"font-size:13.0pt;\r\nmso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:major-latin;\r\nmso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hình_Luật bảo vệ môi trường.png', 'hình_Luật bảo vệ môi trường.png', 'hình_Luật bảo vệ môi trường.png', 6000, 'In Stock', '2021-12-06 03:46:15', NULL),
(83, 11, 44, 'Một Số Vấn Đề Cơ Bản Của Luật An Ninh Mạng', 'Nhà Xuất Bản Công An Nhân Dân', 127000, 130000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Với mong muốn\r\ngóp phần vào việc thực hiện nhiệm vụ nêu trên, chúng tôi đã biên soạn cuốn sách\r\n“Một sô vấn đề cơ bản của Luật An ninh mạng” Đúng như tên gọi của sách, nội\r\ndung sách này chỉ dừng lại ở một số vấn đề cơ bản của đạo luật quan trọng này.\r\nCuốn sách gồm 7 chương trình bày lần lượt các vấn đề sau đây</span><span lang=\"VI\" style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">…</span><span lang=\"VI\" style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;\r\nmso-ascii-theme-font:major-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;\r\nmso-hansi-theme-font:major-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:major-latin;mso-ansi-language:VI\"><o:p></o:p></span></p>', 'hinh1.jpg', 'hinh2.jpg', 'hinh3.jpg', 6000, 'In Stock', '2021-12-06 03:47:03', NULL),
(84, 11, 44, 'Cẩm Nang Pháp Luật Về Môi Giới Và Đầu Tư Kinh Doanh Bất Động Sản', 'Nhà Xuất Bản Hồng Đức', 195000, 200000, '<p class=\"MsoNormal\"><span style=\"font-size: 13pt; color: rgb(36, 36, 36); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Quá trình giao\r\ndịch bất động sản là quá trình giao dịch cho một tài sản lớn. Do vậy để trở\r\nthành chuyên gia môi giới, kinh doanh bất động sản thực thụ chúng ta phải xây\r\ndựng cho mình một nền tảng kiến thức pháp lý vững chắc. Trong nhiều trường hợp\r\nkhách hàng sẽ cần sự tư vấn pháp lý trong giao dịch, vì vậy có hiểu biết về\r\npháp luật liên quan đến giao dịch bất động sản luôn là một lợi thế</span><span style=\"font-size:13.0pt;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-ascii-theme-font:\r\nmajor-latin;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-hansi-theme-font:major-latin;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:major-latin\"><o:p></o:p></span></p>', 'hinh1-Cẩm nang PL về môi giới BĐS.jpg', 'hinh2-Cẩm nang PL về môi giới BĐS.jpg', 'hinh2-Cẩm nang PL về môi giới BĐS.jpg', 6000, 'In Stock', '2021-12-06 03:52:32', NULL);

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
(38, 13, 'Sách Tôn Giáo', '2021-11-24 12:19:25', NULL),
(39, 12, 'Sách Văn Học', '2021-12-05 14:07:42', NULL),
(40, 12, 'Sách Nghệ Thuật', '2021-12-05 14:07:56', NULL),
(41, 14, 'Giáo Trình Mác - Lê Nin', '2021-12-05 14:10:49', NULL),
(42, 14, 'Giáo Trình Lập Trình', '2021-12-05 14:11:03', NULL),
(43, 11, 'Sách Chính Trị', '2021-12-05 14:11:50', NULL),
(44, 11, 'Sách Pháp Luật', '2021-12-05 14:11:57', NULL);

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
(26, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-03 04:31:17', NULL, 1),
(27, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 11:48:26', NULL, 0),
(28, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 11:48:32', '05-12-2021 05:18:42 PM', 1),
(29, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 11:50:00', '05-12-2021 06:35:43 PM', 1),
(30, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-05 13:08:34', NULL, 1);

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
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(2, 4, 2, '2021-12-05 13:08:41');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
