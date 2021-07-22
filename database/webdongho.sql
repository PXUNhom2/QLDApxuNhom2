-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 20, 2021 lúc 12:08 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--chi ri bay đợi tý
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
  `Address` varchar(255) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Đồng hồ trẻ em', b'1');

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
(1, 'tanphu123', 'qqq111', 'Doan Tan Phu', 'doantanphu@gmail.com', '0772455555', 'Hue', '2021-07-20 13:07:10', b'1');

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
(12, 9, 'Đồng Hồ Nam PAGINI PA15588 Mặt Xanh Dây Da Cao Cấp Mặt Kính Chống Xước, Chống Nước', '2776928ea6bea8e52e043867a8af84d0.jpg', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM PAGINI PA15588:</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 57, 450000, b'1'),
(26, 9, 'Orient SK Mặt Xanh RA-AA0B03L19B – Nam – Automatic', 'RA-AA0B03L19B_0003_4.jpg', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM PAGINI PA15588:</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 57, 450000, b'1'),
(27, 9, 'Đồng Hồ Nam PAGINI PA9966 Dây Titanium Thời Trang Cao Cấp Mặt Kính Chống Xước', 'Screenshot 2021-07-20 164006.png', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM &nbsp;PAGINI PA9966</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 10, 450000, b'1'),
(28, 11, 'Đồng Hồ Cơ Nam PAGINI Automatic PA2299 Dây Thép Không Gỉ Cao Cấp', 'Screenshot 2021-07-20 164240.png', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM &nbsp;PAGINI PA9966</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 20, 999000, b'1'),
(29, 10, 'Đồng Hồ Nữ PAGINI PA2218 Mặt Tròn Thiết Kế Mặt Phủ Đá Thạch Anh Sang Trọng Quý Phái Chống Nước - Hàn', 'Screenshot 2021-07-20 164916.png', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NỮ PAGINI: - Thương Hiệu : PAGINI - Nguồn gốc : Nhật Bản - Kiểu M&aacute;y : m&aacute;y Quartz - K&iacute;ch cỡ : 40mm - Độ D&agrave;y : 10mm - Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L - Chất Liệu D&acirc;y : D&acirc;y da n&acirc;u cao cấp - Chất Liệu K&iacute;nh : Chống xước, chống nước - Độ Chịu Nước : 30m - Bảo H&agrave;nh 12 Th&aacute;ng - Giới T&iacute;nh : Nữ ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀: ✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;. ✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt. ✔ Kh&ocirc;ng mang khi bơi lội.. ✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh. ✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM: ✔ Đồng hồ chính hãng ✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng ✔ S&aacute;ch hướng dẫn ✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng ✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) ----------------------------------------------------------------------------------- ◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T: ✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay. ✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. ----------------------------------------------------------------------------------- ◈ QUY ĐỊNH BẢO H&Agrave;NH: ✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng ✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y... ✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước...</p>\r\n', 10, 450000, b'1'),
(30, 10, 'Đồng Hồ Nữ PAGINI PA2228 Mặt Vuông Dây Da Nâu Cao Cấp Mặt Kính Chống Xước, Chống Nước Full Box - BH ', 'Screenshot 2021-07-20 164930.png', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NỮ PAGINI: - Thương Hiệu : PAGINI - Nguồn gốc : Nhật Bản - Kiểu M&aacute;y : m&aacute;y Quartz - K&iacute;ch cỡ : 40mm - Độ D&agrave;y : 10mm - Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L - Chất Liệu D&acirc;y : D&acirc;y da n&acirc;u cao cấp - Chất Liệu K&iacute;nh : Chống xước, chống nước - Độ Chịu Nước : 30m - Bảo H&agrave;nh 12 Th&aacute;ng - Giới T&iacute;nh : Nữ ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀: ✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;. ✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt. ✔ Kh&ocirc;ng mang khi bơi lội.. ✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh. ✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM: ✔ Đồng hồ chính hãng ✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng ✔ S&aacute;ch hướng dẫn ✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng ✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) ----------------------------------------------------------------------------------- ◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T: ✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay. ✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. ----------------------------------------------------------------------------------- ◈ QUY ĐỊNH BẢO H&Agrave;NH: ✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng ✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y... ✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 20, 490000, b'1'),
(31, 12, 'Đồng Hồ Điện Tử Nam Nữ Pagini WA04 Kiểu Dáng Thế Thao, Năng Động', 'Screenshot 2021-07-20 165254.png', '<p>Đồng Hồ Led Điện Tử Pagini WA04 Kiểu D&aacute;ng Thế Thao, Năng Động Nhiều M&agrave;u Đồng Hồ H&agrave;ng C&oacute; Sẵn Số Lượng Lớn 👉4 m&agrave;u như h&igrave;nh ✅ Th&ocirc;ng Số Sản Phẩm: ✚Thương Hiệu: Pagini ✚Kiểu D&aacute;ng: Thể Thao - Năng Động ✚Chất Liệu Vỏ: PU Nhựa Dẻo ✚Chất Liệu Mặt Trước: K&iacute;nh Cứng Pha Kho&aacute;ng ✚Size: 45 x 14mm ✚K&iacute;ch thước mặt: 2cm ✚ K&iacute;ch thước d&acirc;y: 2cm ✚ Chất liệu k&iacute;nh: Nhựa ✚ Loại d&acirc;y đeo: silicone ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống nước: Chống nước nhẹ ✚ Bảo h&agrave;nh 6 th&aacute;ng Follow Shop Để Được Ưu Đ&atilde;i Tốt Nhất 👉 Chức Năng Ch&iacute;nh : ✔ Xem giờ ✔ xem lịch ✔ Bấm giờ HƯỚNG DẪN SỬ DỤNG: ✔ Chạm 1 lần s&aacute;ng m&agrave;n h&igrave;nh ✔ Chạm v&agrave; giữ 2s để chỉnh thời gian, ng&agrave;y th&aacute;ng năm ✔ chống nước nhẹ CAM kẾT: ✔ Đồng hồ giống h&igrave;nh 100% ✔ Miễn ph&iacute; đổi trả trong 7 ng&agrave;y lỗi nh&agrave; sản xuất ✔ To&agrave;n bộ h&igrave;nh đều do shop tự chụp ✔ Bảo h&agrave;nh 6 th&aacute;ng lỗi nh&agrave; sản xuất ✔ C&oacute; video ☀ LƯU &Yacute;: ✔ Nếu kh&aacute;ch h&agrave;ng muốn đặt nhiều m&agrave;u kh&aacute;c nhau th&igrave; vui l&ograve;ng CHỌN M&Agrave;U 1 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG -&gt; CHỌN M&Agrave;U 2 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG... . Sau khi chọn đủ c&aacute;c m&agrave;u, bạn chọn TỚI GIỎ H&Agrave;NG ho&agrave;n th&agrave;nh c&aacute;c bước thanh to&aacute;n nh&eacute; ▶️ Ch&uacute;ng t&ocirc;i đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu với c&aacute;c ch&iacute;nh s&aacute;ch 100% c&oacute; lợi ch&iacute;nh đ&aacute;ng cho kh&aacute;ch h&agrave;ng: ✔ Đổi trả h&agrave;ng thoải m&aacute;i: miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn th&igrave; shop đều đổi trả sau 3 ng&agrave;y nhận h&agrave;ng, nếu kh&ocirc;ng phải lỗi sản phẩm hoặc do shop gửi sai mẫu/m&agrave;u th&igrave; ph&iacute; vận chuyển kh&aacute;ch trả d&ugrave;m nh&eacute;.</p>\r\n', 23, 29000, b'1'),
(32, 12, 'Đồng Hồ Điện Tử Nam Nữ Pagini WA03 Kiểu Dáng Cute Siêu Dễ Thương Nhìn Là Yêu Luôn', '83dd3b6ec7d37a5a023ef78b7999b9ef.jpg', '<p>Đồng hồ điện tử thời trang đẹp ✚ Sản Phẩm : S-sport ✚ T&igrave;nh trạng : mới ✚ Đồng hồ : trẻ em ✚ K&iacute;ch thước mặt : 29mm ✚ K&iacute;ch thước d&acirc;y : 1,5cm ✚ Chất liệu khung đồng hồ: nhựa ✚ Chất liệu k&iacute;nh: Chống xước tốt. ✚ Loại d&acirc;y đeo: d&acirc;y nhựa ✚ Chức năng hiển thị: Giờ, Ph&uacute;t, Gi&acirc;y, thứ ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống xước nhẹ ✚ Bảo h&agrave;nh: 6 th&aacute;ng Đồng hồ đeo tay kh&ocirc;ng chỉ l&agrave; phụ kiện d&ugrave;ng để quan s&aacute;t thời gian m&agrave; c&ograve;n l&agrave; một phong c&aacute;ch thời trang, gi&uacute;p t&ocirc;n vinh vẻ sang trọng của người sở hữu n&oacute;. C&oacute; thể n&oacute;i, đồng hồ đẹp l&agrave; phụ kiện thời trang s&agrave;nh điệu với những sự kiện, buổi tiệc quan trọng d&agrave;nh cho tất cả mọi người. Từ những người b&igrave;nh thường nhất cho tới những ng&ocirc;i sao h&agrave;ng đầu, tất cả đều chia sẻ một t&igrave;nh y&ecirc;u vĩ đại với những chiếc đồng hồ thời trang Đồng hồ đeo tay hợp d&aacute;ng người, hợp m&agrave;u sắc l&agrave;m tăng vẻ đẹp của trang phục bạn mặc v&agrave; khẳng định ấn tượng của bạn trong mắt người đối diện. Lu&ocirc;n l&agrave; nơi cập nhật những xu hướng đồng hồ thời trang th&ocirc;ng minh nam nữ gi&aacute; rẻ HƯỚNG DẪN BẢO QUẢN Một đồ d&ugrave;ng điện tử, chiếc đồng hồ đeo tay qu&yacute; gi&aacute; của bạn cũng cần được giữ g&igrave;n v&agrave; lau ch&ugrave;i thường xuy&ecirc;n để lu&ocirc;n giữ được vẻ s&aacute;ng b&oacute;ng v&agrave; hoạt động tốt. Ch&uacute;ng t&ocirc;i xin chia sẻ một số kinh nghiệm bảo quản, giữ g&igrave;n chiếc đồng hồ đeo tay của bạn. - Lu&ocirc;n kiểm tra t&igrave;nh trạng của n&uacute;m vặn, vị tr&iacute; đ&uacute;ng l&agrave; ở nấc trong c&ugrave;ng. Trong qu&aacute; tr&igrave;nh sử dụng n&uacute;m rất dễ bị mắc v&agrave;o chỉ &aacute;o hoặc những t&aacute;c động kh&aacute;c m&agrave; bị k&eacute;o ra ngo&agrave;i hoặc sau khi chỉnh lại ng&agrave;y/giờ, để tr&aacute;nh nước c&oacute; thể thẩm thấu v&agrave;o b&ecirc;n trong. - Kh&ocirc;ng để ở nơi c&oacute; nhiệt độ cao qu&aacute; 60 độ C tương đương 140 độ F hoặc những nơi thấp hơn 0 độ C tương đương 32 độ F - C&aacute;c c&ocirc;ng việc nặng, c&ocirc;ng việc c&oacute; nhiều động t&aacute;c va chạm với c&aacute;c vật dụng b&ecirc;n ngo&agrave;i như: sửa chữa m&aacute;y m&oacute;c, khu&acirc;n v&aacute;c... v&igrave; vỏ, k&iacute;nh, d&acirc;y đeo dễ bị trầy xước hư hại. - L&agrave;m sạch thường xuy&ecirc;n v&agrave; cất giữ ở nơi kh&ocirc; r&aacute;o.</p>\r\n', 10, 30000, b'1'),
(34, 14, 'Đồng hồ nữ PAGINI TE01 Chống nước nhẹ', 'Screenshot 2021-07-20 165630.png', '<p>Đồng Hồ Zgo Disney nhiều h&igrave;nh dễ thương xinh xắn (H&igrave;nh ảnh shop tự chụp 100%) Đồng Hồ Zgo Disney H&agrave;ng C&oacute; Sẵn Số Lượng Lớn 🎉Đồng hồ điện tử unisex Zgo Disney Si&ecirc;u Hot 👉 4 m&agrave;u như h&igrave;nh ✅ Th&ocirc;ng Số Sản Phẩm: DISNEY ZGO ✚ K&iacute;ch thước mặt: 2cm ✚ K&iacute;ch thước d&acirc;y: 2cm ✚ Chất liệu khung đồng hồ: silicone ✚ Chất liệu k&iacute;nh: Nhựa ✚ Loại d&acirc;y đeo: silicone ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống nước: Chống nước nhẹ ✚ Bảo h&agrave;nh: 1 th&aacute;ng Follow Shop Để Được Ưu Đ&atilde;i Tốt Nhất 👉 Chức Năng Ch&iacute;nh : ✔ Xem giờ ✔ xem lịch ✔ Bấm giờ HƯỚNG DẪN SỬ DỤNG: ✔ Chạm 1 lần s&aacute;ng m&agrave;n h&igrave;nh ✔ Chạm v&agrave; giữ 2s để chỉnh thời gian, ng&agrave;y th&aacute;ng năm ✔ chống nước nhẹ CAM kẾT: ✔ Đồng hồ giống h&igrave;nh 100% ✔ Miễn ph&iacute; đổi trả trong 7 ng&agrave;y lỗi nh&agrave; sản xuất ✔ To&agrave;n bộ h&igrave;nh đều do shop tự chụp ✔ C&oacute; video ☀ LƯU &Yacute;: ✔ Nếu kh&aacute;ch h&agrave;ng muốn đặt nhiều m&agrave;u kh&aacute;c nhau th&igrave; vui l&ograve;ng CHỌN M&Agrave;U 1 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG -&gt; CHỌN M&Agrave;U 2 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG... . Sau khi chọn đủ c&aacute;c m&agrave;u, bạn chọn TỚI GIỎ H&Agrave;NG ho&agrave;n th&agrave;nh c&aacute;c bước thanh to&aacute;n nh&eacute; ▶️ Ch&uacute;ng t&ocirc;i đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu với c&aacute;c ch&iacute;nh s&aacute;ch 100% c&oacute; lợi ch&iacute;nh đ&aacute;ng cho kh&aacute;ch h&agrave;ng: ✔ Đổi trả h&agrave;ng thoải m&aacute;i: miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn th&igrave; shop đều đổi trả sau 3 ng&agrave;y nhận h&agrave;ng, nếu kh&ocirc;ng phải lỗi sản phẩm hoặc do shop gửi sai mẫu/m&agrave;u th&igrave; ph&iacute; vận chuyển kh&aacute;ch trả d&ugrave;m nh&eacute;.</p>\r\n', 30, 14500, b'1'),
(36, 12, 'Đồng Hồ Điện Tử Nam Nữ Pagini WA05 Chống Xước Nhẹ ', 'Screenshot 2021-07-20 165650.png', '<p>Đồng Hồ Nam Nữ Điện Tử Pagini Chống Nước Nhẹ Nhiều M&agrave;u(H&igrave;nh ảnh shop tự chụp 100%) Đồng Hồ H&agrave;ng C&oacute; Sẵn Số Lượng Lớn 🎉Đồng hồ điện tử Si&ecirc;u Hot 👉3 m&agrave;u như h&igrave;nh Th&ocirc;ng số sản phẩm: ✚ K&iacute;ch thước mặt: 3cm ✚ K&iacute;ch thước d&acirc;y: 2cm ✚ Chất liệu khung đồng hồ: silicone ✚ Chất liệu k&iacute;nh: Nhựa ✚ Loại d&acirc;y đeo: silicone ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống xước nhẹ ✚ Bảo h&agrave;nh: 6 th&aacute;ng Follow Shop Để Được Ưu Đ&atilde;i Tốt Nhất 👉 Chức Năng Ch&iacute;nh : ✔ Xem giờ ✔ xem lịch ✔ Bấm gi CAM kẾT: ✔ Đồng hồ giống h&igrave;nh 100% ✔ Miễn ph&iacute; đổi trả trong 7 ng&agrave;y lỗi nh&agrave; sản xuất ✔ To&agrave;n bộ h&igrave;nh đều do shop tự chụp ✔ C&oacute; video ☀ LƯU &Yacute;: ✔ Nếu kh&aacute;ch h&agrave;ng muốn đặt nhiều m&agrave;u kh&aacute;c nhau th&igrave; vui l&ograve;ng CHỌN M&Agrave;U 1 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG -&gt; CHỌN M&Agrave;U 2 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG... . Sau khi chọn đủ c&aacute;c m&agrave;u, bạn chọn TỚI GIỎ H&Agrave;NG ho&agrave;n th&agrave;nh c&aacute;c bước thanh to&aacute;n nh&eacute; ▶️ Ch&uacute;ng t&ocirc;i đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu với c&aacute;c ch&iacute;nh s&aacute;ch 100% c&oacute; lợi ch&iacute;nh đ&aacute;ng cho kh&aacute;ch h&agrave;ng: ✔ Đổi trả h&agrave;ng thoải m&aacute;i: miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn th&igrave; shop đều đổi trả sau 3 ng&agrave;y nhận h&agrave;ng, nếu kh&ocirc;ng phải lỗi sản phẩm hoặc do shop gửi sai mẫu/m&agrave;u th&igrave; ph&iacute; vận chuyển kh&aacute;ch trả d&ugrave;m nh&eacute;.</p>\r\n', 30, 29000, b'1'),
(37, 13, 'Đồng Hồ Điện Tử Nam Nữ Pagini WA05 Chống Xước Nhẹ', 'Screenshot 2021-07-20 170254.png', '<p>Đồng Hồ Nam Nữ Điện Tử Pagini Chống Nước Nhẹ Nhiều M&agrave;u(H&igrave;nh ảnh shop tự chụp 100%) Đồng Hồ H&agrave;ng C&oacute; Sẵn Số Lượng Lớn 🎉Đồng hồ điện tử Si&ecirc;u Hot 👉3 m&agrave;u như h&igrave;nh Th&ocirc;ng số sản phẩm: ✚ K&iacute;ch thước mặt: 3cm ✚ K&iacute;ch thước d&acirc;y: 2cm ✚ Chất liệu khung đồng hồ: silicone ✚ Chất liệu k&iacute;nh: Nhựa ✚ Loại d&acirc;y đeo: silicone ✚ Năng lượng: d&ugrave;ng pin ✚ Khả năng chống xước nhẹ ✚ Bảo h&agrave;nh: 6 th&aacute;ng Follow Shop Để Được Ưu Đ&atilde;i Tốt Nhất 👉 Chức Năng Ch&iacute;nh : ✔ Xem giờ ✔ xem lịch ✔ Bấm gi CAM kẾT: ✔ Đồng hồ giống h&igrave;nh 100% ✔ Miễn ph&iacute; đổi trả trong 7 ng&agrave;y lỗi nh&agrave; sản xuất ✔ To&agrave;n bộ h&igrave;nh đều do shop tự chụp ✔ C&oacute; video ☀ LƯU &Yacute;: ✔ Nếu kh&aacute;ch h&agrave;ng muốn đặt nhiều m&agrave;u kh&aacute;c nhau th&igrave; vui l&ograve;ng CHỌN M&Agrave;U 1 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG -&gt; CHỌN M&Agrave;U 2 -&gt; TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG... . Sau khi chọn đủ c&aacute;c m&agrave;u, bạn chọn TỚI GIỎ H&Agrave;NG ho&agrave;n th&agrave;nh c&aacute;c bước thanh to&aacute;n nh&eacute; ▶️ Ch&uacute;ng t&ocirc;i đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu với c&aacute;c ch&iacute;nh s&aacute;ch 100% c&oacute; lợi ch&iacute;nh đ&aacute;ng cho kh&aacute;ch h&agrave;ng: ✔ Đổi trả h&agrave;ng thoải m&aacute;i: miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn th&igrave; shop đều đổi trả sau 3 ng&agrave;y nhận h&agrave;ng, nếu kh&ocirc;ng phải lỗi sản phẩm hoặc do shop gửi sai mẫu/m&agrave;u th&igrave; ph&iacute; vận chuyển kh&aacute;ch trả d&ugrave;m nh&eacute;.</p>\r\n', 30, 29000, b'1'),
(38, 9, '(Tặng Kèm Nhẫn Nam Ngẫu Nhiên) Đồng Hồ Nam PAGINI PA12266 Dây Da Cao Cấp Mặt Kính Chống Xước Chống N', 'Screenshot 2021-07-20 170403.png', '<p>TH&Ocirc;NG TIN Đồng Hồ Nam PAGINI PA12266</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 30, 1290000, b'1');

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
(14, 'PAGINI  - Trẻ em (Nữ)', 13, b'0');

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
  ADD KEY `CustomerID` (`CustomerID`);

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
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SubCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_customerid` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

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
