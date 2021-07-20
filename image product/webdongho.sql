-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 20, 2021 lúc 10:26 AM
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
(12, 9, 'Đồng Hồ Nam PAGINI PA15588 Mặt Xanh Dây Da Cao Cấp Mặt Kính Chống Xước, Chống Nước', '2776928ea6bea8e52e043867a8af84d0.jpg', '<p>TH&Ocirc;NG TIN Đ&Ocirc;̀NG H&Ocirc;̀ NAM PAGINI PA15588:</p>\r\n\r\n<p>- Thương Hiệu : PAGINI</p>\r\n\r\n<p>- Nguồn gốc : Nhật Bản</p>\r\n\r\n<p>- Kiểu M&aacute;y : m&aacute;y Quartz</p>\r\n\r\n<p>- K&iacute;ch cỡ : 40mm</p>\r\n\r\n<p>- Độ D&agrave;y : 10mm</p>\r\n\r\n<p>- Độ D&agrave;y Vỏ : Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n\r\n<p>- Chất Liệu D&acirc;y : D&acirc;y da cao cấp</p>\r\n\r\n<p>- Chất Liệu K&iacute;nh : Chống xước, chống nước</p>\r\n\r\n<p>- Độ Chịu Nước : 30m</p>\r\n\r\n<p>- Bảo H&agrave;nh 12 Th&aacute;ng</p>\r\n\r\n<p>- Giới T&iacute;nh : Nam ----------------------------------------------------------------------------------- * LƯU Ý KHI SỬ DỤNG Đ&Ocirc;̀NG H&Ocirc;̀:</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, dầu gội, chất tẩy rửa&hellip;.</p>\r\n\r\n<p>✔ Kh&ocirc;ng điều chỉnh đồng hồ khi đồng hồ đang ướt.</p>\r\n\r\n<p>✔ Kh&ocirc;ng mang khi bơi lội..</p>\r\n\r\n<p>✔ Tr&aacute;nh để đồng hồ bị va đập, rơi vỡ hoặc va chạm mạnh.</p>\r\n\r\n<p>✔ Mặc d&ugrave; chịu lực tốt nhưng bạn phải ch&uacute; &yacute; tr&aacute;nh mọi t&aacute;c động lực trực tiếp l&ecirc;n mặt đồng hồ, hạn chế rơi rớt v&agrave; kh&ocirc;ng để &uacute;p xuống mặt b&agrave;n v&igrave; điều n&agrave;y dễ l&agrave;m trầy. ----------------------------------------------------------------------------------- ◈ BỘ SẢN PHẨM GỒM:</p>\r\n\r\n<p>✔ Đồng hồ chính hãng</p>\r\n\r\n<p>✔ T&uacute;i v&agrave; h&ocirc;̣p đựng sang trọng</p>\r\n\r\n<p>✔ S&aacute;ch hướng dẫn</p>\r\n\r\n<p>✔ Thẻ tag, tem nh&atilde;n m&aacute;c đồng hồ chính hãng</p>\r\n\r\n<p>✔ Qu&agrave; tặng k&egrave;m nếu c&oacute; (Lưu &yacute;: Shop kh&ocirc;ng bảo h&agrave;nh qu&agrave; tặng) -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ Đ&Ocirc;̀NG H&Ocirc;̀ PAGINI CAM K&Ecirc;́T:</p>\r\n\r\n<p>✔ Cam kết về sản phẩm: Sản phẩm n&agrave;y 100% giống y hệt ảnh, nếu nhận h&agrave;ng kh&aacute;ch kh&ocirc;ng ưng &yacute; h&atilde;y li&ecirc;n hệ với shop nh&eacute;, shop cam kết sẽ nhận lại h&agrave;ng v&agrave; ho&agrave;n tiền ngay.</p>\r\n\r\n<p>✔ Đổi trả h&agrave;ng thoải m&aacute;i: Kh&ocirc;ng như những shop kh&aacute;c khi b&aacute;n th&igrave; vui vẻ nhiệt t&igrave;nh, khi bảo h&agrave;nh hay đổi trả th&igrave; cau c&oacute; kh&oacute; chịu, shop thật sự rất thoải m&aacute;i việc n&agrave;y, miễn sản phẩm c&ograve;n nguy&ecirc;n vẹn, chưa cắt th&aacute;o d&acirc;y th&igrave; shop đều cho đổi trả d&ugrave; sau 7 ng&agrave;y nhận h&agrave;ng nếu c&oacute; lỗi từ nh&agrave; sản xuất. -----------------------------------------------------------------------------------</p>\r\n\r\n<p>◈ QUY ĐỊNH BẢO H&Agrave;NH:</p>\r\n\r\n<p>✔ Thời gian bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n\r\n<p>✔ Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu h&agrave;ng bị lỗi do nh&agrave; sản xuất như rớt kim, đồng hồ kh&ocirc;ng chạy, đứt d&acirc;y...</p>\r\n\r\n<p>✔ Trường Hợp Kh&ocirc;ng Bảo H&agrave;nh: &bull; C&aacute;c loại d&acirc;y đeo, kho&aacute;, vỏ, m&agrave;u xi, mặt số, mặt kiếng bị hỏng h&oacute;c, trầy xước, vỡ do sử dụng kh&ocirc;ng đ&uacute;ng, tai nạn, l&atilde;o h&oacute;a tự nhi&ecirc;n, va đập mạnh&hellip; trong qu&aacute; tr&igrave;nh sử dụng. &bull; Kh&ocirc;ng bảo h&agrave;nh đồng hồ bị v&agrave;o nước do lỗi của kh&aacute;ch h&agrave;ng như l&agrave;m hở chốt, kh&ocirc;ng đ&oacute;ng chặt trước khi tiếp x&uacute;c nước... *LƯU &Yacute;: Một số chi tết rất nhỏ đồng hồ như kim, số, lịch, kiểu kh&oacute;a... c&oacute; thể thay đổi cho ph&ugrave; hợp m&agrave; shop chưa update kịp dẫn đến kh&ocirc;ng giống với trong ảnh v&agrave; video rất mong Anh/Chị th&ocirc;ng cảm.</p>\r\n', 57, 450000, b'1');

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
(12, 'PAGINI  - Trẻ em', 13, b'1');

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
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SubCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
