-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 05, 2021 lúc 04:39 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `action`
--

CREATE TABLE `action` (
  `actionID` int(11) NOT NULL,
  `loginDate` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Fullname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `DateCreate` datetime NOT NULL,
  `paymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`OrderID`, `CustomerID`, `Fullname`, `Address`, `Phone`, `Email`, `Status`, `DateCreate`, `paymentID`) VALUES
(1, 0, 'anh vu', 'hue', '7755454', 'vuee@gmail.com', 1, '2021-07-27 15:29:34', 1),
(2, 0, 'anh vudđ', 'hue', '77555454', 'vueddde@gmail.com', 1, '2021-07-27 15:41:28', 1),
(8, 0, 'anh vu', '17/3 Xuân Thủy, Vỹ Dạ, Huế', '7755454', 'leanhvu150994@gmail.com', 1, '2021-07-29 14:31:33', 1),
(9, 0, 'anh vu', '17/3 Xuân Thủy, Vỹ Dạ, Huế', '7755454', 'leanhvu150994@gmail.com', 1, '2021-07-29 14:54:37', 1),
(10, 0, 'anh vu', '17/3 Xuân Thủy, Vỹ Dạ, Huế', '7755454', 'leanhvu150994@gmail.com', 1, '2021-07-29 14:59:42', 1),
(11, 0, 'anh vu', '17/3 Xuân Thủy, Vỹ Dạ, Huế', '7755454', 'leanhvu150994@gmail.com', 1, '2021-07-29 15:04:57', 1),
(12, 0, 'anh vu', '17/3 Xuân Thủy, Vỹ Dạ, Huế', '7755454', 'leanhvu150994@gmail.com', 1, '2021-07-29 15:09:02', 1),
(13, 0, 'anh vu', '17/3 Xuân Thủy, Vỹ Dạ, Huế', '7755454', 'leanhvu150994@gmail.com', 1, '2021-07-29 15:12:43', 1),
(14, 0, 'Nguyễn Văn Thạnh', '7/46 Nguyễn Hữu Cảnh', '0983087375', 'thanh1234pro@gmail.com', 1, '2021-08-05 19:27:29', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quatity` int(11) NOT NULL,
  `Discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`OrderID`, `ProductID`, `Price`, `Quatity`, `Discount`) VALUES
(1, 12, 1, 450000, 0),
(1, 26, 1, 450000, 0),
(1, 38, 1, 1290000, 0),
(2, 26, 2, 450000, 0),
(2, 27, 1, 450000, 0),
(2, 28, 3, 999000, 0),
(8, 12, 450000, 2, 0),
(8, 26, 450000, 2, 0),
(9, 29, 450000, 2, 0),
(9, 30, 490000, 2, 0),
(9, 31, 29000, 2, 0),
(9, 32, 30000, 2, 0),
(10, 26, 450000, 3, 0),
(10, 27, 450000, 2, 0),
(10, 28, 999000, 2, 0),
(11, 26, 450000, 3, 0),
(11, 27, 450000, 2, 0),
(11, 28, 999000, 2, 0),
(12, 26, 450000, 1, 0),
(12, 27, 450000, 2, 0),
(12, 28, 999000, 2, 0),
(13, 26, 450000, 1, 0),
(13, 27, 450000, 2, 0),
(13, 28, 999000, 2, 0),
(14, 27, 450000, 1, 0),
(14, 26, 450000, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`, `Status`) VALUES
(2, 'Đồng hồ nam', b'1'),
(4, 'Đồng hồ nữ', b'1'),
(13, 'Đồng hồ trẻ em', b'1'),
(16, 'Đồng hồ treo', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `ContactID` int(11) NOT NULL,
  `Fullname` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Message` text NOT NULL,
  `Status` bit(1) NOT NULL,
  `DateCreate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`ContactID`, `Fullname`, `Phone`, `Email`, `Title`, `Message`, `Status`, `DateCreate`) VALUES
(1, 'anh vu', '7755454', 'vuee@gmail.com', 'd', 'qqqqqqqqqqqqqqqq', b'1', '2021-07-28 21:40:19'),
(2, 'anh vu', '7755454', 'vuee@gmail.com', 'dđ', 'ddddddddddddđ', b'1', '2021-07-28 21:59:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Fullname` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`CustomerID`, `Username`, `Password`, `Fullname`, `Email`, `Phone`, `Address`, `CreateDate`, `Status`) VALUES
(1, 'tanphu123', 'qqq111', 'Doan Tan Phu', 'doantanphu@gmail.com', '0772455555', 'Hue', '2021-07-20 13:07:10', b'1'),
(2, 'thanh', '1234', 'Nguyễn Văn Thạnh', 'thanh1234pro@gmail.com', '0983087375', '7/46 Nguyễn Hữu Cảnh', '2021-08-05 20:32:43', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(11) NOT NULL,
  `Mota` text NOT NULL,
  `Email` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `MemberID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Fullname` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `RoleID` int(11) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`MemberID`, `Username`, `Password`, `Fullname`, `Email`, `Phone`, `Address`, `CreateDate`, `RoleID`, `Status`) VALUES
(1, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, 1, b'1'),
(3, 'sellerso1', 'qqq111', 'Le A', 'seller2@gmail.com', '0772458888', 'Hue', '2021-07-19 15:05:47', 2, b'1'),
(4, 'thanh1234pro', '101101', 'Nguyễn Văn Thạnh', 'thanh1234pro@gmail.com', '0983087375', '7/46 Nguyễn Hữu Cảnh, 7/46 Nguyễn Hữu Cảnh', '2021-07-20 14:44:00', 2, b'1'),
(5, 'tanphu', '2001', 'Trần Tấn Phú', 'tanphu@gmail.com', '0398250635', 'Huế', '2021-07-20 14:45:05', 2, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `paymentName` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`paymentID`, `paymentName`, `status`) VALUES
(1, 'COD', b'1'),
(2, 'Momo', b'1'),
(3, 'Bank', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `SubCategoryID` int(11) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Mota` text DEFAULT NULL,
  `TonKho` int(11) DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductID`, `SubCategoryID`, `ProductName`, `image`, `Mota`, `TonKho`, `Price`, `Status`) VALUES
(12, 9, 'Đồng Hồ Nam PAGINI  Mặt Xanh Dây Da Cao Cấp ', '2776928ea6bea8e52e043867a8af84d0.jpg', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM PAGINI PA15588:</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 57, 450000, b'1'),
(26, 9, 'Đồng hồ Orient SK Mặt Xanh ', 'RA-AA0B03L19B_0003_4.jpg', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM PAGINI PA15588:</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 57, 450000, b'1'),
(27, 9, 'Đồng Hồ Nam Dây Titanium Thời Trang Cao Cấp Mặt Kính Chống Xước', 'Screenshot 2021-07-20 164006.png', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM &nbsp;PAGINI PA9966</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 10, 450000, b'1'),
(28, 11, 'Đồng Hồ Cơ Nam PAGINI Automatic Dây Thép Không Gỉ Cao Cấp', 'Screenshot 2021-07-20 164240.png', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM &nbsp;PAGINI PA9966</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 20, 999000, b'1'),
(29, 10, 'Đồng Hồ Nữ PAGINI Mặt Tròn Thiết Kế Mặt Phủ Đá Thạch Anh ', 'Screenshot 2021-07-20 164916.png', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NỮ PAGINI: - Thương Hiệu : PAGINI - Nguồn gốc : Nhật Bản - Kiểu M&aacute;y : m&aacute;y Quartz - K&iacute;ch cỡ : 40mm - Độ D&agrave;y : 10mm - Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L - Chất Liệu D&acirc;y : D&acirc;y da n&acirc;u cao cấp - Chất Liệu K&iacute;nh : Chống xước, chống nước - Độ Chịu Nước : 30m - Bảo H&agrave;nh 12 Th&aacute;ng - Giới T&iacute;nh : Nữ ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀: ✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;. ✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt. ✔ Kh&ocirc;ng mang khi bơi lội.. ✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh. ✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM: ✔ Đồng hồ chính hãng ✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng ✔ S&aacute;ch hướng dẫn ✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng ✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) ----------------------------------------------------------------------------------- ◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T: ✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay. ✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. ----------------------------------------------------------------------------------- ◈ QUY ĐỊNH BẢO H&Agrave;NH: ✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng ✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y... ✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước...</p>\r\n', 10, 450000, b'1'),
(30, 10, 'Đồng Hồ Nữ PAGINI Mặt Vuông Dây Da Nâu Cao Cấp', 'Screenshot 2021-07-20 164930.png', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NỮ PAGINI: - Thương Hiệu : PAGINI - Nguồn gốc : Nhật Bản - Kiểu M&aacute;y : m&aacute;y Quartz - K&iacute;ch cỡ : 40mm - Độ D&agrave;y : 10mm - Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L - Chất Liệu D&acirc;y : D&acirc;y da n&acirc;u cao cấp - Chất Liệu K&iacute;nh : Chống xước, chống nước - Độ Chịu Nước : 30m - Bảo H&agrave;nh 12 Th&aacute;ng - Giới T&iacute;nh : Nữ ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀: ✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;. ✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt. ✔ Kh&ocirc;ng mang khi bơi lội.. ✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh. ✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM: ✔ Đồng hồ chính hãng ✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng ✔ S&aacute;ch hướng dẫn ✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng ✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) ----------------------------------------------------------------------------------- ◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T: ✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay. ✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. ----------------------------------------------------------------------------------- ◈ QUY ĐỊNH BẢO H&Agrave;NH: ✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng ✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y... ✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 20, 490000, b'1'),
(31, 12, 'Đồng Hồ Điện Tử Nam Nữ Pagini Kiểu Dáng Thế Thao, Năng Động', 'Screenshot 2021-07-20 165254.png', '<p>Đồng Hồ Led Điện Tử Pagini WA04 Kiểu D&aacute;ng Thế Thao, Năng Động Nhiều M&agrave;u Đồng Hồ H&agrave;ng C&oacute; Sẵn Số Lượng Lớn 👉4 m&agrave;u như h&igrave;nh ✅ Th&ocirc;ng Số Sản Phẩm: ✚Thương Hiệu: Pagini ✚Kiểu D&aacute;ng: Thể Thao - Năng Động ✚Chất Liệu Vỏ: PU Nhựa Dẻo ✚Chất Liệu Mặt Trước: K&iacute;nh Cứng Pha Kho&aacute;ng ✚Size: 45 x 14mm ✚K&iacute;ch thước mặt: 2cm ✚ K&iacute;ch thước d&acirc;y: 2cm ✚ Chất liệu k&iacute;nh: Nhựa ✚ Loại d&acirc;y đeo: silicone ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống nước: Chống nước nhẹ ✚ Bảo h&agrave;nh 6 th&aacute;ng Follow Shop Để Được Ưu Đ&atilde;i Tốt Nhất 👉 Chức Năng Ch&iacute;nh : ✔ Xem giờ ✔ xem lịch ✔ Bấm giờ HƯỚNG DẪN SỬ DỤNG: ✔ Chạm 1 lần s&aacute;ng m&agrave;n h&igrave;nh ✔ Chạm v&agrave; giữ 2s để chỉnh thời gian, ng&agrave;y th&aacute;ng năm ✔ chống nước nhẹ CAM kẾT: ✔ Đồng hồ giống h&igrave;nh 100% ✔ Miễn ph&iacute; đổi trả trong 7 ng&agrave;y lỗi nh&agrave; sản xuất ✔ To&agrave;n bộ h&igrave;nh đều do shop tự chụp ✔ Bảo h&agrave;nh 6 th&aacute;ng lỗi nh&agrave; sản xuất ✔ C&oacute; video ☀ LƯU &Yacute;: ✔ Nếu kh&aacute;ch h&agrave;ng muốn đặt nhiều m&agrave;u kh&aacute;c nhau th&igrave; vui l&ograve;ng CHỌN M&Agrave;U 1 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG -&gt; CHỌN M&Agrave;U 2 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG... . Sau khi chọn đủ c&aacute;c m&agrave;u, bạn chọn TỚI GIỎ H&Agrave;NG ho&agrave;n th&agrave;nh c&aacute;c bước thanh to&aacute;n nh&eacute; ▶️ Ch&uacute;ng t&ocirc;i đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu với c&aacute;c ch&iacute;nh s&aacute;ch 100% c&oacute; lợi ch&iacute;nh đ&aacute;ng cho kh&aacute;ch h&agrave;ng: ✔ Đổi trả h&agrave;ng thoải m&aacute;i: miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn th&igrave; shop đều đổi trả sau 3 ng&agrave;y nhận h&agrave;ng, nếu kh&ocirc;ng phải lỗi sản phẩm hoặc do shop gửi sai mẫu/m&agrave;u th&igrave; ph&iacute; vận chuyển kh&aacute;ch trả d&ugrave;m nh&eacute;.</p>\r\n', 23, 29000, b'1'),
(32, 12, 'Đồng Hồ Điện Tử Nam Nữ Pagini Kiểu Dáng Cute', '83dd3b6ec7d37a5a023ef78b7999b9ef.jpg', '<p>Đồng hồ điện tử thời trang đẹp ✚ Sản Phẩm : S-sport ✚ T&igrave;nh trạng : mới ✚ Đồng hồ : trẻ em ✚ K&iacute;ch thước mặt : 29mm ✚ K&iacute;ch thước d&acirc;y : 1,5cm ✚ Chất liệu khung đồng hồ: nhựa ✚ Chất liệu k&iacute;nh: Chống xước tốt. ✚ Loại d&acirc;y đeo: d&acirc;y nhựa ✚ Chức năng hiển thị: Giờ, Ph&uacute;t, Gi&acirc;y, thứ ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống xước nhẹ ✚ Bảo h&agrave;nh: 6 th&aacute;ng Đồng hồ đeo tay kh&ocirc;ng chỉ l&agrave; phụ kiện d&ugrave;ng để quan s&aacute;t thời gian m&agrave; c&ograve;n l&agrave; một phong c&aacute;ch thời trang, gi&uacute;p t&ocirc;n vinh vẻ sang trọng của người sở hữu n&oacute;. C&oacute; thể n&oacute;i, đồng hồ đẹp l&agrave; phụ kiện thời trang s&agrave;nh điệu với những sự kiện, buổi tiệc quan trọng d&agrave;nh cho tất cả mọi người. Từ những người b&igrave;nh thường nhất cho tới những ng&ocirc;i sao h&agrave;ng đầu, tất cả đều chia sẻ một t&igrave;nh y&ecirc;u vĩ đại với những chiếc đồng hồ thời trang Đồng hồ đeo tay hợp d&aacute;ng người, hợp m&agrave;u sắc l&agrave;m tăng vẻ đẹp của trang phục bạn mặc v&agrave; khẳng định ấn tượng của bạn trong mắt người đối diện. Lu&ocirc;n l&agrave; nơi cập nhật những xu hướng đồng hồ thời trang th&ocirc;ng minh nam nữ gi&aacute; rẻ HƯỚNG DẪN BẢO QUẢN Một đồ d&ugrave;ng điện tử, chiếc đồng hồ đeo tay qu&yacute; gi&aacute; của bạn cũng cần được giữ g&igrave;n v&agrave; lau ch&ugrave;i thường xuy&ecirc;n để lu&ocirc;n giữ được vẻ s&aacute;ng b&oacute;ng v&agrave; hoạt động tốt. Ch&uacute;ng t&ocirc;i xin chia sẻ một số kinh nghiệm bảo quản, giữ g&igrave;n chiếc đồng hồ đeo tay của bạn. - Lu&ocirc;n kiểm tra t&igrave;nh trạng của n&uacute;m vặn, vị tr&iacute; đ&uacute;ng l&agrave; ở nấc trong c&ugrave;ng. Trong qu&aacute; tr&igrave;nh sử dụng n&uacute;m rất dễ bị mắc v&agrave;o chỉ &aacute;o hoặc những t&aacute;c động kh&aacute;c m&agrave; bị k&eacute;o ra ngo&agrave;i hoặc sau khi chỉnh lại ng&agrave;y/giờ, để tr&aacute;nh nước c&oacute; thể thẩm thấu v&agrave;o b&ecirc;n trong. - Kh&ocirc;ng để ở nơi c&oacute; nhiệt độ cao qu&aacute; 60 độ C tương đương 140 độ F hoặc những nơi thấp hơn 0 độ C tương đương 32 độ F - C&aacute;c c&ocirc;ng việc nặng, c&ocirc;ng việc c&oacute; nhiều động t&aacute;c va chạm với c&aacute;c vật dụng b&ecirc;n ngo&agrave;i như: sửa chữa m&aacute;y m&oacute;c, khu&acirc;n v&aacute;c... v&igrave; vỏ, k&iacute;nh, d&acirc;y đeo dễ bị trầy xước hư hại. - L&agrave;m sạch thường xuy&ecirc;n v&agrave; cất giữ ở nơi kh&ocirc; r&aacute;o.</p>\r\n', 10, 30000, b'1'),
(34, 14, 'Đồng hồ nữ PAGINI TE01 Chống nước nhẹ', 'Screenshot 2021-07-20 165630.png', '<p>Đồng Hồ Zgo Disney nhiều h&igrave;nh dễ thương xinh xắn (H&igrave;nh ảnh shop tự chụp 100%) Đồng Hồ Zgo Disney H&agrave;ng C&oacute; Sẵn Số Lượng Lớn 🎉Đồng hồ điện tử unisex Zgo Disney Si&ecirc;u Hot 👉 4 m&agrave;u như h&igrave;nh ✅ Th&ocirc;ng Số Sản Phẩm: DISNEY ZGO ✚ K&iacute;ch thước mặt: 2cm ✚ K&iacute;ch thước d&acirc;y: 2cm ✚ Chất liệu khung đồng hồ: silicone ✚ Chất liệu k&iacute;nh: Nhựa ✚ Loại d&acirc;y đeo: silicone ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống nước: Chống nước nhẹ ✚ Bảo h&agrave;nh: 1 th&aacute;ng Follow Shop Để Được Ưu Đ&atilde;i Tốt Nhất 👉 Chức Năng Ch&iacute;nh : ✔ Xem giờ ✔ xem lịch ✔ Bấm giờ HƯỚNG DẪN SỬ DỤNG: ✔ Chạm 1 lần s&aacute;ng m&agrave;n h&igrave;nh ✔ Chạm v&agrave; giữ 2s để chỉnh thời gian, ng&agrave;y th&aacute;ng năm ✔ chống nước nhẹ CAM kẾT: ✔ Đồng hồ giống h&igrave;nh 100% ✔ Miễn ph&iacute; đổi trả trong 7 ng&agrave;y lỗi nh&agrave; sản xuất ✔ To&agrave;n bộ h&igrave;nh đều do shop tự chụp ✔ C&oacute; video ☀ LƯU &Yacute;: ✔ Nếu kh&aacute;ch h&agrave;ng muốn đặt nhiều m&agrave;u kh&aacute;c nhau th&igrave; vui l&ograve;ng CHỌN M&Agrave;U 1 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG -&gt; CHỌN M&Agrave;U 2 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG... . Sau khi chọn đủ c&aacute;c m&agrave;u, bạn chọn TỚI GIỎ H&Agrave;NG ho&agrave;n th&agrave;nh c&aacute;c bước thanh to&aacute;n nh&eacute; ▶️ Ch&uacute;ng t&ocirc;i đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu với c&aacute;c ch&iacute;nh s&aacute;ch 100% c&oacute; lợi ch&iacute;nh đ&aacute;ng cho kh&aacute;ch h&agrave;ng: ✔ Đổi trả h&agrave;ng thoải m&aacute;i: miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn th&igrave; shop đều đổi trả sau 3 ng&agrave;y nhận h&agrave;ng, nếu kh&ocirc;ng phải lỗi sản phẩm hoặc do shop gửi sai mẫu/m&agrave;u th&igrave; ph&iacute; vận chuyển kh&aacute;ch trả d&ugrave;m nh&eacute;.</p>\r\n', 30, 14500, b'1'),
(37, 13, 'Đồng Hồ Điện Tử Nam Nữ Pagini  Chống Xước Nhẹ', 'Screenshot 2021-07-20 170254.png', '<p>Đồng Hồ Nam Nữ Điện Tử Pagini Chống Nước Nhẹ Nhiều M&agrave;u(H&igrave;nh ảnh shop tự chụp 100%) Đồng Hồ H&agrave;ng C&oacute; Sẵn Số Lượng Lớn 🎉Đồng hồ điện tử Si&ecirc;u Hot 👉3 m&agrave;u như h&igrave;nh Th&ocirc;ng số sản phẩm: ✚ K&iacute;ch thước mặt: 3cm ✚ K&iacute;ch thước d&acirc;y: 2cm ✚ Chất liệu khung đồng hồ: silicone ✚ Chất liệu k&iacute;nh: Nhựa ✚ Loại d&acirc;y đeo: silicone ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống xước nhẹ ✚ Bảo h&agrave;nh: 6 th&aacute;ng Follow Shop Để Được Ưu Đ&atilde;i Tốt Nhất 👉 Chức Năng Ch&iacute;nh : ✔ Xem giờ ✔ xem lịch ✔ Bấm gi CAM kẾT: ✔ Đồng hồ giống h&igrave;nh 100% ✔ Miễn ph&iacute; đổi trả trong 7 ng&agrave;y lỗi nh&agrave; sản xuất ✔ To&agrave;n bộ h&igrave;nh đều do shop tự chụp ✔ C&oacute; video ☀ LƯU &Yacute;: ✔ Nếu kh&aacute;ch h&agrave;ng muốn đặt nhiều m&agrave;u kh&aacute;c nhau th&igrave; vui l&ograve;ng CHỌN M&Agrave;U 1 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG -&gt; CHỌN M&Agrave;U 2 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG... . Sau khi chọn đủ c&aacute;c m&agrave;u, bạn chọn TỚI GIỎ H&Agrave;NG ho&agrave;n th&agrave;nh c&aacute;c bước thanh to&aacute;n nh&eacute; ▶️ Ch&uacute;ng t&ocirc;i đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu với c&aacute;c ch&iacute;nh s&aacute;ch 100% c&oacute; lợi ch&iacute;nh đ&aacute;ng cho kh&aacute;ch h&agrave;ng: ✔ Đổi trả h&agrave;ng thoải m&aacute;i: miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn th&igrave; shop đều đổi trả sau 3 ng&agrave;y nhận h&agrave;ng, nếu kh&ocirc;ng phải lỗi sản phẩm hoặc do shop gửi sai mẫu/m&agrave;u th&igrave; ph&iacute; vận chuyển kh&aacute;ch trả d&ugrave;m nh&eacute;.</p>\r\n', 30, 29000, b'1'),
(38, 9, 'Đồng Hồ Nam PAGINI Dây Da Cao Cấp Mặt Kính Chống Nước', 'Screenshot 2021-07-20 170403.png', '<p>TH&Ocirc;NG TIN Đồng Hồ Nam PAGINI PA12266</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 30, 1290000, b'1'),
(39, 20, 'Đồng hồ Alpina AL-52', 'al-525std2cd3b_1499842315.png', '<h2>Th&ocirc;ng số kĩ thuật của Đồng hồ Alpina AL-525STD2CD3B</h2>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>AL-525STD2CD3B</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D&Ograve;NG SẢN PHẨM:</td>\r\n			<td>Comtesse</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GIỚI T&Iacute;NH:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Thụy Sĩ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Đồng hồ cơ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KIỂU ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Luxury (Cao cấp)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI D&Acirc;Y:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>34 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ D&Agrave;Y:</td>\r\n			<td>9.5 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ CHỊU NƯỚC:</td>\r\n			<td>10 ATM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LỊCH:</td>\r\n			<td>Ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHỨC NĂNG:</td>\r\n			<td>Giờ, ph&uacute;t, gi&acirc;y, ng&agrave;y</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI M&Aacute;Y:</td>\r\n			<td>Alpina AL-525</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MẶT K&Iacute;NH:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CH&Acirc;N K&Iacute;NH:</td>\r\n			<td>26</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USP:</td>\r\n			<td>26 ch&acirc;n k&iacute;nh, 38h năng lượng dự trữ, 28&#39;800 alt/h tần số dao động; 11 vi&ecirc;n kim cương mặt số; 50 vi&ecirc;n kim cương v&agrave;nh số</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong><img alt=\"\" src=\"https://galle.vn/upload_images/images/Alpina%20AL-525STD2CD3B.jpg\" /></strong></p>\r\n\r\n<p>N&oacute;i đến Alpina, người ta sẽ nghĩ ngay đến một thương hiệu đồng hồ thể thao sở hữu những thiết kế khỏe khoắn, mạnh mẽ v&agrave; chỉ ph&ugrave; hợp với nam giới. Tuy nhi&ecirc;n, đi ngược lại mọi định nghĩa về t&iacute;nh c&aacute;ch thương hiệu, bộ sưu tập đồng hồ nữ mang t&ecirc;n Comtesse đ&atilde; được Alpina ra mắt với đại diện ưu t&uacute; l&agrave; AL-525STD2CD3B đ&atilde; khẳng định &ldquo;Đồng hồ Alpina đ&acirc;u chỉ d&agrave;nh cho ph&aacute;i mạnh&rdquo;.</p>\r\n\r\n<p>AL-525STD2CD3B l&agrave; chiếc đồng hồ ti&ecirc;u biểu cho sự c&acirc;n bằng tuyệt vời giữa tinh thần thể thao v&agrave; sự quyến rũ. Bạn sẽ kh&ocirc;ng thể rời mắt khỏi mặt đồng hồ bởi thiết kế 50 vi&ecirc;n kim cương đặt tr&ecirc;n v&ograve;ng bezel bọc v&agrave;ng c&ugrave;ng 11 vi&ecirc;n kim cương trang tr&iacute; s&aacute;ng lấp l&aacute;nh tr&ecirc;n mặt số</p>\r\n\r\n<p><img alt=\"\" src=\"https://galle.vn/upload_images/images/Alpina%20AL-525STD2CD3B%20-%202.jpg\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, họa tiết trang tr&iacute; Guilloch&eacute; h&igrave;nh tam gi&aacute;c biểu tượng của thương hiệu cũng được khắc họa v&ocirc; c&ugrave;ng tinh xảo, nhắc người d&ugrave;ng nhớ ngay đến thương hiệu Thụy Sĩ đẳng cấp n&agrave;y. D&acirc;y đeo của AL-525STD2CD3B l&agrave; sự kết hợp h&agrave;i h&ograve;a giữa 2 t&ocirc;ng m&agrave;u bạc của th&eacute;p kh&ocirc;ng gỉ 316L v&agrave; v&agrave;ng từ c&ocirc;ng nghệ mạ PVD độ bền cao.</p>\r\n\r\n<p>Bộ m&aacute;y cơ tự động AL-525 của đồng hồ Alpina Comtesse với 26 ch&acirc;n k&iacute;nh, c&oacute; khả năng trữ c&oacute;t tới 38 giờ. Khả năng chống nước của sản phẩm kh&aacute; cao - 10ATM n&ecirc;n người d&ugrave;ng c&oacute; thế tắm hoặc bơi m&agrave; kh&ocirc;ng lo ngại ảnh hưởng tới đồng hồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://galle.vn/upload_images/images/Alpina%20AL-525STD2CD3B%20-%201.jpg\" /></p>\r\n\r\n<p>Đ&aacute;nh tan quan niệm về một thương hiệu đồng hồ chỉ d&agrave;nh cho nam giới, AL-525STD2CD3B ch&iacute;nh l&agrave; hiện th&acirc;n của những người phụ nữ hiện đại, thanh lịch nhưng kh&ocirc;ng k&eacute;m phần mạnh mẽ v&agrave; c&aacute; t&iacute;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 30, 43215000, b'1'),
(40, 20, 'Đồng hồ Alpina AL-53', 'al-525std2c6_1499842329.png', '<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>AL-53</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D&Ograve;NG SẢN PHẨM:</td>\r\n			<td>Comtesse</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GIỚI T&Iacute;NH:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Thụy Sĩ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Đồng hồ cơ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KIỂU ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Luxury (Cao cấp)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI D&Acirc;Y:</td>\r\n			<td>\r\n			<p>D&acirc;y da</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>34 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ D&Agrave;Y:</td>\r\n			<td>9.5 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ CHỊU NƯỚC:</td>\r\n			<td>10 ATM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LỊCH:</td>\r\n			<td>Ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHỨC NĂNG:</td>\r\n			<td>Giờ, ph&uacute;t, gi&acirc;y, ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>TẦN SỐ DAO ĐỘNG:</td>\r\n			<td>28,800 Alt/h</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NĂNG LƯỢNG C&Oacute;T:</td>\r\n			<td>38h</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI M&Aacute;Y:</td>\r\n			<td>Alpina AL-525</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MẶT K&Iacute;NH:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CH&Acirc;N K&Iacute;NH:</td>\r\n			<td>26</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USP:</td>\r\n			<td>11 vi&ecirc;n kim cương ở mặt số; lịch ng&agrave;y vị tr&iacute; 6h</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"\" src=\"https://galle.vn/upload_images/images/45442017_2153304224721667_7032069981449748480_n.jpg\" /></p>\r\n\r\n<p>Giấc mơ bay của những n&agrave;ng c&ocirc; n&agrave;ng nghệ sĩ&nbsp;<br />\r\nN&oacute;i đến Alpina, người ta sẽ nghĩ ngay đến một thương hiệu đồng hồ thể thao sở hữu những thiết kế khỏe khoắn, mạnh mẽ v&agrave; chỉ ph&ugrave; hợp với nam giới. Tuy nhi&ecirc;n, đi ngược lại mọi định nghĩa về t&iacute;nh c&aacute;ch thương hiệu, bộ sưu tập đồng hồ nữ mang t&ecirc;n Comtesse của&nbsp;<a href=\"https://galle.vn/dong-ho-pc156/dong-ho-alpina.glw\">Alpina&nbsp;</a>ra đời, l&agrave; sự c&acirc;n bằng tuyệt vời giữa tinh thần thể thao v&agrave; sự quyến rũ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://galle.vn/upload_images/images/45426791_2153304231388333_4000815882228989952_n.jpg\" /></p>\r\n\r\n<p>D&acirc;y đeo đồng hồ l&agrave; sự kết hợp h&agrave;i h&ograve;a giữa 2 m&agrave;u bạc - trắng của th&eacute;p kh&ocirc;ng gỉ 316L v&agrave; d&acirc;y da c&aacute; sấu trắng cao cấp đến từ thương hiệu Alpina. Đặc biệt hơn cả, bạn sẽ kh&ocirc;ng thể rời mắt khỏi mặt đồng hồ bởi thiết kế 11 vi&ecirc;n kim cương đặt tr&ecirc;n mặt số, mang tới sự sang trọng cho chủ nh&acirc;n. B&ecirc;n cạnh đ&oacute;, họa tiết trang tr&iacute; Guilloch&eacute; h&igrave;nh tam gi&aacute;c biểu tượng của thương hiệu cũng v&ocirc; c&ugrave;ng tinh xảo, nhắc người d&ugrave;ng nhớ ngay đến thương hiệu Thụy Sĩ đẳng cấp.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://galle.vn/upload_images/images/45426753_2153304238054999_1291470110124408832_n.jpg\" /></p>\r\n\r\n<p><br />\r\nBộ m&aacute;y cơ tự động AL-525 của đồng hồ Alpina Comtesse với 26 ch&acirc;n k&iacute;nh, c&oacute; khả năng trữ c&oacute;t tới 38 giờ. Khả năng chống nước của sản phẩm kh&aacute; cao - 10ATM n&ecirc;n người d&ugrave;ng c&oacute; thế tắm hoặc bơi m&agrave; đồng hồ kh&ocirc;ng bị ảnh hưởng.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://galle.vn/upload_images/images/45433138_2153304324721657_5398531216829841408_n.jpg\" /></p>\r\n\r\n<p>Những người phụ nữ hiện đại chắc hẳn sẽ y&ecirc;u th&iacute;ch đồng hồ Alpina AL-525STD2C6, hiện th&acirc;n của sự thanh lịch, đơn giản nhưng cũng kh&ocirc;ng k&eacute;m phần mạnh mẽ v&agrave; c&aacute; t&iacute;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 10, 45000000, b'1'),
(44, 18, 'Đồng hồ Calvin Klein K7B211C1', 'k7b211c1_1522227977.png', '<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>K7B211C1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GIỚI T&Iacute;NH:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Thụy Sĩ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Đồng hồ điện tử</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KIỂU ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Thời trang</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI D&Acirc;Y:</td>\r\n			<td>\r\n			<p>D&acirc;y da</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>42 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ D&Agrave;Y:</td>\r\n			<td>7 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ CHỊU NƯỚC:</td>\r\n			<td>3 ATM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHỨC NĂNG:</td>\r\n			<td>Giờ, ph&uacute;t</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI M&Aacute;Y:</td>\r\n			<td>Swiss Quartz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MẶT K&Iacute;NH:</td>\r\n			<td>Cứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>M&ocirc; tả về Đồng hồ Calvin Klein K7B211C1</p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Calvin_Klein\">Calvin Klein</a><a href=\"https://galle.vn/dong-ho-pc156/dong-ho-calvin-klein.glw\">&nbsp;</a>l&agrave; nh&agrave; thiết kế t&agrave;i ba, đồng thời, l&agrave; nh&agrave; s&aacute;ng lập ra thương hiệu&nbsp;<strong>Calvin Klein</strong>&nbsp;v&agrave;o năm 1997. Người ta biết đến&nbsp;<strong>Calvin Klein</strong>&nbsp;bởi sự s&aacute;ng tạo kh&ocirc;ng bi&ecirc;n giới, cũng như l&agrave; người thổi hồn v&agrave; đem phong c&aacute;ch mới mẻ v&agrave;o những từng sản phẩm của m&igrave;nh. Kh&ocirc;ng chỉ nổi tiếng trong lĩnh vực thời trang v&agrave; nước hoa, những chiếc đồng hồ của Calvin Klein cũng tạo ra được những cơn sốt trong l&agrave;ng thời trang thế giới v&agrave; những kẻ mộ điệu đồng hồ.<br />\r\n<br />\r\nNhững chiếc đồng hồ&nbsp;<strong>CK&nbsp;</strong>mang thiết kế độc đ&aacute;o v&agrave; thời trang với phương ch&acirc;m &ldquo;Đơn giản tối đa - Độc đ&aacute;o tối đa&rdquo;. Kh&ocirc;ng chỉ mạnh về thiết kế, những mẫu đồng hồ&nbsp;<strong>CK</strong>&nbsp;c&ograve;n khẳng định được chất lượng thực sự bằng bộ m&aacute;y b&ecirc;n trong của m&igrave;nh. L&agrave; một th&agrave;nh vi&ecirc;n của tập đo&agrave;n Swatch Group, những chiếc đồng hồ<strong>&nbsp;CK&nbsp;</strong>sở hữu những ti&ecirc;u chuẩn Thụy Sĩ m&agrave; rất nhiều thương hiệu kh&aacute;c phải ao ước.&nbsp;</p>\r\n\r\n<p>Chiếc đồng hồ&nbsp;<strong>K7B211C1</strong>&nbsp;nằm trong bộ sưu tập mang t&ecirc;n Even với mặt số đen tuyền được chạm khắc dập nổi tạo độ sần như vỏ gỗ. Với những vạch số đơn thuần, 2 c&acirc;y kim cũng được thiết kế như vậy nhưng c&oacute; th&ecirc;m lớp dạ quang ở đầu mũi gi&uacute;p người d&ugrave;ng c&oacute; thể quan s&aacute;t thời gian trong điều kiện thiếu s&aacute;ng.&nbsp;</p>\r\n\r\n<p>Lớp vỏ b&ecirc;n ngo&agrave;i của chiếc đồng hồ được l&agrave;m từ chất liệu cao cấp như th&eacute;p chống gỉ 316L, gi&uacute;p chống chịu lực v&agrave; b&agrave;o m&ograve;n theo thời gian. 2 v&agrave;nh tai để g&agrave;i d&acirc;y da nh&igrave;n kh&aacute; mỏng manh nhưng thực sự lại rất chắc chắn. D&acirc;y da trơn nhẵn d&agrave;y dặn c&agrave;ng l&agrave;m chiếc đồng hồ trở n&ecirc;n cuốn h&uacute;t. Với đường k&iacute;nh 42mm c&ugrave;ng độ d&agrave;y 7mm, chiếc đồng hồ n&agrave;y c&ograve;n sở hữu độ chống nước l&ecirc;n tới 3ATM. B&ecirc;n cạnh đ&oacute;, bộ m&aacute;y quartz Thụy Sĩ b&ecirc;n trong sẽ gi&uacute;p chiếc đồng hồ c&oacute; độ ch&iacute;nh x&aacute;c v&agrave; độ bền rất cao.&nbsp;</p>\r\n\r\n<p>Đừng bỏ lỡ cơ hội sở hữu một sản phẩm ch&iacute;nh h&atilde;ng đến từ Thụy Sĩ được thiết kế bởi nh&agrave; thiết kế t&agrave;i ba Calvin Klein. H&atilde;y đến ngay&nbsp;<a href=\"https://galle.vn/\"><strong>Galle Watch</strong></a>&nbsp;để c&ugrave;ng nhau chi&ecirc;m ngưỡng vẻ đẹp tuyệt vời của chiếc đồng hồ&nbsp;<strong>K7B211C1</strong>&nbsp;ngay h&ocirc;m nay nh&eacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 20, 4750000, b'1');
INSERT INTO `product` (`ProductID`, `SubCategoryID`, `ProductName`, `image`, `Mota`, `TonKho`, `Price`, `Status`) VALUES
(45, 18, 'Đồng hồ Calvin Klein K5A31BLG', 'k5a31blg_1522147724.png', '<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>K5A31BLG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GIỚI T&Iacute;NH:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Thụy Sĩ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Đồng hồ điện tử</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KIỂU ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Thời trang</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI D&Acirc;Y:</td>\r\n			<td>\r\n			<p>D&acirc;y da</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>41 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ D&Agrave;Y:</td>\r\n			<td>11 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ CHỊU NƯỚC:</td>\r\n			<td>5 ATM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHỨC NĂNG:</td>\r\n			<td>Giờ, ph&uacute;t, gi&acirc;y</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI M&Aacute;Y:</td>\r\n			<td>Swiss Quartz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MẶT K&Iacute;NH:</td>\r\n			<td>Cứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>M&ocirc; tả về Đồng hồ Calvin Klein K5A31BLG</p>\r\n\r\n<p><a href=\"https://galle.vn/dong-ho-pc156/dong-ho-calvin-klein.glw\">Calvin Klein</a>&nbsp;l&agrave; nh&agrave; thiết kế t&agrave;i ba, đồng thời, l&agrave; nh&agrave; s&aacute;ng lập ra thương hiệu&nbsp;<strong>Calvin Klein</strong>&nbsp;v&agrave;o năm 1997. Người ta biết đến&nbsp;<strong>Calvin Klein</strong>&nbsp;bởi sự s&aacute;ng tạo kh&ocirc;ng bi&ecirc;n giới, cũng như l&agrave; người thổi hồn v&agrave; đem phong c&aacute;ch mới mẻ v&agrave;o những từng sản phẩm của m&igrave;nh. Kh&ocirc;ng chỉ nổi tiếng trong lĩnh vực thời trang v&agrave; nước hoa, những chiếc đồng hồ của&nbsp;<strong>Calvin Klein&nbsp;</strong>cũng tạo ra được những cơn sốt trong l&agrave;ng thời trang thế giới v&agrave; những kẻ mộ điệu đồng hồ.<br />\r\n<br />\r\nNhững chiếc đồng hồ&nbsp;<strong>CK</strong>&nbsp;mang thiết kế độc đ&aacute;o v&agrave; thời trang với phương ch&acirc;m &ldquo;Đơn giản tối đa - Độc đ&aacute;o tối đa&rdquo;. Kh&ocirc;ng chỉ mạnh về thiết kế, những mẫu đồng hồ&nbsp;<strong>CK</strong>&nbsp;c&ograve;n khẳng định được chất lượng thực sự bằng bộ m&aacute;y b&ecirc;n trong của m&igrave;nh. L&agrave; một th&agrave;nh vi&ecirc;n của tập đo&agrave;n Swatch Group, những chiếc đồng hồ&nbsp;<strong>CK</strong>&nbsp;sở hữu những ti&ecirc;u chuẩn Thụy Sĩ m&agrave; rất nhiều thương hiệu kh&aacute;c phải ao ước.&nbsp;</p>\r\n\r\n<p>Chiếc đồng hồ&nbsp;<strong>K5023120</strong>&nbsp;nằm trong bộ sưu tập mang t&ecirc;n Bold với thiết kế v&ocirc; c&ugrave;ng ấn tượng v&agrave; độc đ&aacute;o. Một chiếc đồng hồ d&agrave;nh cho những anh ch&agrave;ng lu&ocirc;n ưa th&iacute;ch sự tươm tất với tổng thể m&agrave;u trắng, điểm xuyết một v&agrave;i chi tiết m&agrave;u v&agrave;ng hồng kh&aacute; &ldquo;điệu&rdquo;. Mặt số của chiếc đồng hồ được khảm trai tạo n&ecirc;n độ s&acirc;u v&agrave; trở th&agrave;nh điểm nhấn cho người đeo.&nbsp;&nbsp;</p>\r\n\r\n<p>Lớp vỏ b&ecirc;n ngo&agrave;i của chiếc đồng hồ được l&agrave;m từ c&aacute;c chất liệu cao cấp như th&eacute;p chống gỉ 316L v&agrave; k&iacute;nh cứng cường lực. Với đường k&iacute;nh 41mm c&ugrave;ng độ d&agrave;y 11mm, chiếc đồng hồ n&agrave;y c&ograve;n sở hữu độ chống nước l&ecirc;n tới 5ATM kh&aacute; hữu &iacute;ch nữa. B&ecirc;n cạnh đ&oacute;, bộ m&aacute;y quartz Thụy Sĩ b&ecirc;n trong sẽ gi&uacute;p chiếc đồng hồ c&oacute; độ ch&iacute;nh x&aacute;c v&agrave; độ bền rất cao.&nbsp;</p>\r\n', 10, 4725000, b'1'),
(46, 18, 'Đồng hồ Calvin Klein K4M21143', 'k4m21143_1522147608.png', '<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>K4M21143</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GIỚI T&Iacute;NH:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Thụy Sĩ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Đồng hồ điện tử</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KIỂU ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Thời trang</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI D&Acirc;Y:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>43 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ D&Agrave;Y:</td>\r\n			<td>10 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ CHỊU NƯỚC:</td>\r\n			<td>3 ATM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LỊCH:</td>\r\n			<td>Ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHỨC NĂNG:</td>\r\n			<td>Giờ, ph&uacute;t, gi&acirc;y</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI M&Aacute;Y:</td>\r\n			<td>Swiss Quartz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MẶT K&Iacute;NH:</td>\r\n			<td>Cứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>M&ocirc; tả về Đồng hồ Calvin Klein K4M21143</p>\r\n\r\n<p><a href=\"https://galle.vn/dong-ho-pc156/dong-ho-calvin-klein.glw\">Calvin Klein</a>&nbsp;l&agrave; nh&agrave; thiết kế t&agrave;i ba, đồng thời, l&agrave; nh&agrave; s&aacute;ng lập ra thương hiệu<strong>&nbsp;Calvin Klein</strong>&nbsp;v&agrave;o năm 1997. Người ta biết đến<strong>&nbsp;Calvin Klein</strong>&nbsp;bởi sự s&aacute;ng tạo kh&ocirc;ng bi&ecirc;n giới, cũng như l&agrave; người thổi hồn v&agrave; đem phong c&aacute;ch mới mẻ v&agrave;o những từng sản phẩm của m&igrave;nh. Kh&ocirc;ng chỉ nổi tiếng trong lĩnh vực thời trang v&agrave; nước hoa, những chiếc đồng hồ của&nbsp;<strong>Calvin Klein&nbsp;</strong>cũng tạo ra được những cơn sốt trong l&agrave;ng thời trang thế giới v&agrave; những kẻ mộ điệu đồng hồ.<br />\r\n<br />\r\nNhững chiếc đồng hồ&nbsp;<strong>CK</strong>&nbsp;mang thiết kế độc đ&aacute;o v&agrave; thời trang với phương ch&acirc;m &ldquo;Đơn giản tối đa - Độc đ&aacute;o tối đa&rdquo;. Kh&ocirc;ng chỉ mạnh về thiết kế, những mẫu đồng hồ<strong>&nbsp;CK</strong>&nbsp;c&ograve;n khẳng định được chất lượng thực sự bằng bộ m&aacute;y b&ecirc;n trong của m&igrave;nh. L&agrave; một th&agrave;nh vi&ecirc;n của tập đo&agrave;n Swatch Group, những chiếc đồng hồ&nbsp;<strong>CK</strong>&nbsp;sở hữu những ti&ecirc;u chuẩn Thụy Sĩ m&agrave; rất nhiều thương hiệu kh&aacute;c phải ao ước.&nbsp;</p>\r\n\r\n<p>Chiếc đồng hồ<strong>&nbsp;K4M21143&nbsp;</strong>nằm trong bộ sưu tập mang t&ecirc;n Formality với thiết kế trang trọng d&agrave;nh cho đấng m&agrave;y r&acirc;u. Chiếc đồng hồ mang đậm phong c&aacute;ch casual, nghĩa l&agrave; c&aacute;c anh ch&agrave;ng c&oacute; thể d&ugrave;ng n&oacute; trong hầu hết c&aacute;c hoạt động trong ng&agrave;y. Mặt số đơn giản m&agrave;u đen kết hợp với d&acirc;y kim loại trắng tr&ocirc;ng kh&aacute; cuốn h&uacute;t. Lịch ng&agrave;y ở vị tr&iacute; 3h gi&uacute;p người d&ugrave;ng sắp xếp thời gian biểu một c&aacute;ch khoa học hơn.&nbsp;</p>\r\n\r\n<p>Lớp vỏ b&ecirc;n ngo&agrave;i của chiếc đồng hồ được l&agrave;m từ c&aacute;c chất liệu cao cấp như th&eacute;p chống gỉ 316L, k&iacute;nh cứng cường lực. Với đường k&iacute;nh 43mm c&ugrave;ng độ d&agrave;y 10mm, chiếc đồng hồ n&agrave;y c&ograve;n sở hữu độ chống nước 3ATM kh&aacute; hữu &iacute;ch nữa. B&ecirc;n cạnh đ&oacute;, bộ m&aacute;y quartz Thụy Sĩ b&ecirc;n trong sẽ gi&uacute;p chiếc đồng hồ c&oacute; độ ch&iacute;nh x&aacute;c v&agrave; độ bền rất cao.&nbsp;</p>\r\n', 10, 7425000, b'1'),
(47, 18, 'Đồng hồ Calvin Klein K7B216G6', 'k7b216g6_1522228022.png', '<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>K7B216G6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GIỚI T&Iacute;NH:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Thụy Sĩ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Đồng hồ điện tử</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KIỂU ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Thời trang</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Mạ v&agrave;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI D&Acirc;Y:</td>\r\n			<td>\r\n			<p>D&acirc;y da</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>42 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ D&Agrave;Y:</td>\r\n			<td>7 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ CHỊU NƯỚC:</td>\r\n			<td>3 ATM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHỨC NĂNG:</td>\r\n			<td>Giờ, ph&uacute;t</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI M&Aacute;Y:</td>\r\n			<td>Swiss Quartz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MẶT K&Iacute;NH:</td>\r\n			<td>Cứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>M&ocirc; tả về Đồng hồ Calvin Klein K7B216G6</p>\r\n\r\n<p><a href=\"https://en.wikipedia.org/wiki/Calvin_Klein\">Calvin Klein</a><a href=\"https://galle.vn/dong-ho-pc156/dong-ho-calvin-klein.glw\">&nbsp;</a>l&agrave; nh&agrave; thiết kế t&agrave;i ba, đồng thời, l&agrave; nh&agrave; s&aacute;ng lập ra thương hiệu&nbsp;<strong>Calvin Klein</strong>&nbsp;v&agrave;o năm 1997. Người ta biết đến<strong>&nbsp;Calvin Klein</strong>&nbsp;bởi sự s&aacute;ng tạo kh&ocirc;ng bi&ecirc;n giới, cũng như l&agrave; người thổi hồn v&agrave; đem phong c&aacute;ch mới mẻ v&agrave;o những từng sản phẩm của m&igrave;nh. Kh&ocirc;ng chỉ nổi tiếng trong lĩnh vực thời trang v&agrave; nước hoa, những chiếc đồng hồ của&nbsp;<strong>Calvin Klein</strong>&nbsp;cũng tạo ra được những cơn sốt trong l&agrave;ng thời trang thế giới v&agrave; những kẻ mộ điệu đồng hồ.<br />\r\n<br />\r\nNhững chiếc đồng hồ&nbsp;<strong>CK&nbsp;</strong>mang thiết kế độc đ&aacute;o v&agrave; thời trang với phương ch&acirc;m &ldquo;Đơn giản tối đa - Độc đ&aacute;o tối đa&rdquo;. Kh&ocirc;ng chỉ mạnh về thiết kế, những mẫu đồng hồ&nbsp;<strong>CK&nbsp;</strong>c&ograve;n khẳng định được chất lượng thực sự bằng bộ m&aacute;y b&ecirc;n trong của m&igrave;nh. L&agrave; một th&agrave;nh vi&ecirc;n của tập đo&agrave;n Swatch Group, những chiếc đồng hồ&nbsp;<strong>CK&nbsp;</strong>sở hữu những ti&ecirc;u chuẩn Thụy Sĩ m&agrave; rất nhiều thương hiệu kh&aacute;c phải ao ước.&nbsp;&nbsp;</p>\r\n\r\n<p>Chiếc đồng hồ&nbsp;<strong>K7B216G6</strong>&nbsp;nằm trong bộ sưu tập mang t&ecirc;n Even với mặt số m&agrave;u trắng được chạm khắc dập nổi tạo n&ecirc;n độ sần như vỏ gỗ. Với những chi tiết mặt số mạ v&agrave;ng hồng, 2 c&acirc;y kim c&oacute; th&ecirc;m lớp dạ quang ở đầu mũi gi&uacute;p người d&ugrave;ng c&oacute; thể quan s&aacute;t thời gian trong điều kiện thiếu s&aacute;ng.&nbsp;</p>\r\n\r\n<p>Lớp vỏ b&ecirc;n ngo&agrave;i của chiếc đồng hồ được l&agrave;m từ chất liệu cao cấp như th&eacute;p chống gỉ 316L mạ v&agrave;ng hồng PVD, c&ocirc;ng nghệ mạ cao cấp nhất hiện nay với khả năng tạo ra m&agrave;u sắc tự nhi&ecirc;n v&agrave; giữ m&agrave;u rất l&acirc;u. 2 v&agrave;nh tai để g&agrave;i d&acirc;y da nh&igrave;n kh&aacute; mỏng manh nhưng thực sự lại rất chắc chắn. D&acirc;y da n&acirc;u trơn nhẵn, d&agrave;y dặn c&agrave;ng l&agrave;m chiếc đồng hồ trở n&ecirc;n cuốn h&uacute;t. Với đường k&iacute;nh 42mm c&ugrave;ng độ d&agrave;y 7mm, chiếc đồng hồ n&agrave;y c&ograve;n sở hữu độ chống nước l&ecirc;n tới 3ATM. B&ecirc;n cạnh đ&oacute;, bộ m&aacute;y quartz Thụy Sĩ b&ecirc;n trong sẽ gi&uacute;p chiếc đồng hồ c&oacute; độ ch&iacute;nh x&aacute;c v&agrave; độ bền rất cao.&nbsp;</p>\r\n', 23, 4752000, b'1'),
(48, 18, 'Đồng hồ Calvin Klein K5R37141', 'k5r37141_1522148253.png', '<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>K5R37141</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GIỚI T&Iacute;NH:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Thụy Sĩ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Đồng hồ điện tử</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KIỂU ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Thể thao</p>\r\n\r\n			<p>Thời trang</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI D&Acirc;Y:</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>42 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ D&Agrave;Y:</td>\r\n			<td>11 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐỘ CHỊU NƯỚC:</td>\r\n			<td>5 ATM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LỊCH:</td>\r\n			<td>Ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHỨC NĂNG:</td>\r\n			<td>Giờ, ph&uacute;t, gi&acirc;y, chronograph</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI M&Aacute;Y:</td>\r\n			<td>Swiss Quartz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MẶT K&Iacute;NH:</td>\r\n			<td>Cứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>M&ocirc; tả về Đồng hồ Calvin Klein K5R37141</p>\r\n\r\n<p><a href=\"https://galle.vn/dong-ho-pc156/dong-ho-calvin-klein.glw\">Calvin Klein</a>&nbsp;l&agrave; nh&agrave; thiết kế t&agrave;i ba, đồng thời, l&agrave; nh&agrave; s&aacute;ng lập ra thương hiệu<strong>&nbsp;Calvin Klein&nbsp;</strong>v&agrave;o năm 1997. Người ta biết đến<strong>&nbsp;Calvin Klein&nbsp;</strong>bởi sự s&aacute;ng tạo kh&ocirc;ng bi&ecirc;n giới, cũng như l&agrave; người thổi hồn v&agrave; đem phong c&aacute;ch mới mẻ v&agrave;o những từng sản phẩm của m&igrave;nh. Kh&ocirc;ng chỉ nổi tiếng trong lĩnh vực thời trang v&agrave; nước hoa, những chiếc đồng hồ của&nbsp;<strong>Calvin Klein&nbsp;</strong>cũng tạo ra được những cơn sốt trong l&agrave;ng thời trang thế giới v&agrave; những kẻ mộ điệu đồng hồ.<br />\r\n<br />\r\nNhững chiếc đồng hồ<strong>&nbsp;CK&nbsp;</strong>mang thiết kế độc đ&aacute;o v&agrave; thời trang với phương ch&acirc;m &ldquo;Đơn giản tối đa - Độc đ&aacute;o tối đa&rdquo;. Kh&ocirc;ng chỉ mạnh về thiết kế, những mẫu đồng hồ CK c&ograve;n khẳng định được chất lượng thực sự bằng bộ m&aacute;y b&ecirc;n trong của m&igrave;nh. L&agrave; một th&agrave;nh vi&ecirc;n của tập đo&agrave;n Swatch Group, những chiếc đồng hồ&nbsp;<strong>CK&nbsp;</strong>sở hữu những ti&ecirc;u chuẩn Thụy Sĩ m&agrave; rất nhiều thương hiệu kh&aacute;c phải ao ước.&nbsp;</p>\r\n\r\n<p>Chiếc đồng hồ&nbsp;<strong>K5R37141</strong>&nbsp;nằm trong bộ sưu tập mang t&ecirc;n Alliance với thiết kế mạnh mẽ v&agrave; khỏe khoắn. Điểm đặc biệt của chiếc đồng hồ đến từ mặt số m&agrave;u đen được in dập nổi tạo th&agrave;nh những vạch kẻ ngang độc đ&aacute;o. 3 mặt số nhỏ ph&iacute;a b&ecirc;n trong phục vụ cho t&iacute;nh năng bấm giờ thể thao Chronograph nhưng cũng đồng thời mang đến tinh thần thể thao cho chiếc đồng hồ. Lớp v&agrave;nh đồng hồ cũng được thiết kế dạng v&agrave;nh băm nổi tiếng tạo n&ecirc;n vẻ đẹp trang trọng.&nbsp;</p>\r\n\r\n<p>Lớp vỏ b&ecirc;n ngo&agrave;i của chiếc đồng hồ được l&agrave;m từ c&aacute;c chất liệu cao cấp như th&eacute;p chống gỉ 316L v&agrave; k&iacute;nh cứng cường lực. Với đường k&iacute;nh 42mm c&ugrave;ng độ d&agrave;y chỉ 11mm, chiếc đồng hồ n&agrave;y c&ograve;n sở hữu độ chống nước l&ecirc;n tới 5ATM kh&aacute; hữu &iacute;ch nữa. B&ecirc;n cạnh đ&oacute;, bộ m&aacute;y quartz Thụy Sĩ b&ecirc;n trong sẽ gi&uacute;p chiếc đồng hồ c&oacute; độ ch&iacute;nh x&aacute;c v&agrave; độ bền rất cao.&nbsp;</p>\r\n', 20, 7250000, b'1'),
(49, 21, 'Đồng hồ treo tường Seiko QXC240SN', 'qxc240sn_1611995508.png', '<h2>Th&ocirc;ng số kĩ thuật của Đồng hồ treo tường Seiko QXC240SN</h2>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>QXC240SN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Nhật Bản</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ KH&Aacute;C:</td>\r\n			<td>\r\n			<p>Đồng hồ treo tường</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Nhựa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>36x7.5cm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CHỨC NĂNG:</td>\r\n			<td>- Kim tr&ocirc;i - Con lắc một chiều</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Bạc, nh&ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KH&Aacute;C:</td>\r\n			<td>- Kim tr&ocirc;i - Con lắc một chiều</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 20, 3600000, b'1'),
(51, 21, 'Đồng hồ treo tường Seiko QXA774BN', 'qxa774bn_1611988448.png', '<h2>Th&ocirc;ng số kĩ thuật của Đồng hồ treo tường Seiko QXA774BN</h2>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG TIN SẢN PHẨM</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Atilde; SẢN PHẨM:</td>\r\n			<td>QXA774BN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>THƯƠNG HIỆU:</td>\r\n			<td>\r\n			<p>Nhật Bản</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ:</td>\r\n			<td>\r\n			<p>Đồng hồ điện tử</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LOẠI ĐỒNG HỒ KH&Aacute;C:</td>\r\n			<td>\r\n			<p>Đồng hồ treo tường</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">VỎ &amp; D&Acirc;Y</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VỎ:</td>\r\n			<td>\r\n			<p>Gỗ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ĐƯỜNG K&Iacute;NH:</td>\r\n			<td>29 x 32.2 x 3.6 cm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">T&Iacute;NH NĂNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">TH&Ocirc;NG SỐ BỔ SUNG</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&Agrave;U MẶT:</td>\r\n			<td>Trắng, n&acirc;u s&aacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KH&Aacute;C:</td>\r\n			<td>- Dễ d&agrave;ng điều chỉnh giờ tr&ecirc;n mặt đồng hồ (chỉ chỉnh bằng kim ph&uacute;t); - Bao gồm ch&acirc;n đỡ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 23, 2175000, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(100) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`RoleID`, `RoleName`, `Status`) VALUES
(1, 'administrator', b'1'),
(2, 'Manager', b'1'),
(3, 'CTV', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategory`
--

CREATE TABLE `subcategory` (
  `SubCategoryID` int(11) NOT NULL,
  `SubName` varchar(50) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `subcategory`
--

INSERT INTO `subcategory` (`SubCategoryID`, `SubName`, `CategoryID`, `Status`) VALUES
(9, 'PAGINI - Nam', 2, b'1'),
(10, 'PAGINI - Nữ', 4, b'1'),
(11, 'PAGINI cơ - Nam', 2, b'1'),
(12, 'PAGINI  - Trẻ em', 13, b'1'),
(13, 'PAGINI  - Trẻ em (Nam)', 13, b'0'),
(14, 'PAGINI  - Trẻ em (Nữ)', 13, b'0'),
(18, 'Calvin Klein - Nam', 2, b'1'),
(20, 'Alpina - Nữ', 2, b'0'),
(21, 'Seiko', 16, b'1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`actionID`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `paymentID` (`paymentID`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ContactID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `SubCategoryID` (`SubCategoryID`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Chỉ mục cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`SubCategoryID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `action`
--
ALTER TABLE `action`
  MODIFY `actionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SubCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_paymentid` FOREIGN KEY (`paymentID`) REFERENCES `payment` (`paymentID`);

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `fk_orderid` FOREIGN KEY (`OrderID`) REFERENCES `bill` (`OrderID`),
  ADD CONSTRAINT `fk_productid` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Các ràng buộc cho bảng `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `fk_roleid` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_subcategoryid` FOREIGN KEY (`SubCategoryID`) REFERENCES `subcategory` (`SubCategoryID`);

--
-- Các ràng buộc cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `fk_categoryid` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
