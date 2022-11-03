-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th4 07, 2021 lúc 9:02 PM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ledinhkhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmsp`
--

DROP TABLE IF EXISTS `dmsp`;
CREATE TABLE IF NOT EXISTS `dmsp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tên DM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id DM cha` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dmsp`
--

INSERT INTO `dmsp` (`id`, `Tên DM`, `id DM cha`) VALUES
(1, 'Thời trang nam', 0),
(2, 'Thời trang nữ', 0),
(3, 'Áo nam', 1),
(4, 'Quần nam', 1),
(5, 'Áo nữ', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Mã SP` int(11) NOT NULL,
  `Tên SP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SL` int(11) NOT NULL,
  `Thành tiền` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `Mã SP`, `Tên SP`, `SL`, `Thành tiền`) VALUES
(1, 1, 'Áo thun', 2, 300000),
(2, 4, 'Quần thun', 3, 700000),
(3, 8, 'Áo sơ mi', 4, 800000),
(4, 12, 'Quần jean', 2, 600000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tên SP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Giá` float NOT NULL,
  `SL` int(11) NOT NULL,
  `Hình ảnh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Loại SP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `Tên SP`, `Giá`, `SL`, `Hình ảnh`, `Loại SP`) VALUES
(1, 'Áo thun', 150, 10, 'aothun.jpg', 'Áo nam'),
(2, 'Áo khoác', 200, 8, 'aokhoac.jpg', 'Áo nam'),
(3, 'Áo sơ mi', 180, 5, 'somi.jpg', 'Áo nam'),
(4, 'Quần Tây', 250, 7, 'quantay.jpg', 'Quần'),
(5, 'Quần jean', 300, 5, 'quanjean.jpg', 'Quần'),
(6, 'Quần thể thao', 150, 4, 'quanthethao.jpg', 'Quần'),
(7, 'Áo thun', 180, 10, 'aothunnu.jpg', 'Áo nữ'),
(8, 'Áo sơ mi', 220, 10, 'sominu.jpg', 'Áo nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tên người dùng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mật khẩu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SĐT` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Địa chỉ` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `Tên người dùng`, `Mật khẩu`, `SĐT`, `Email`, `Địa chỉ`) VALUES
(1, 'admin', '123', '0923490318', 'admin123@gmail.com', '123 Tăng Nhơn Phú, Q9'),
(2, 'user1', '123', '0923490311', 'user1@gmail.com', '1 Tăng Nhơn Phú, Q9'),
(3, 'user2', '456', '0923490314', 'user2@gmail.com', '23 Dương Đình Hội, Q9');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
