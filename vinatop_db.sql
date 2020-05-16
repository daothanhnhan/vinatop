-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 16, 2020 lúc 06:29 AM
-- Phiên bản máy phục vụ: 5.5.63-MariaDB
-- Phiên bản PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vinatop_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'sdgdfgdbcvbcvbxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgdf', 'sdf@gmail.com', '5646', 'sdf@gmail.com', 'sdf@gmail.com'),
(3, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'drtert', 'sdf@gmail.com', '3454', 'sdf@gmail.com', 'sdf@gmail.com'),
(4, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdfasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sfgdfg'),
(5, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(6, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'df', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'ag'),
(7, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', '.'),
(8, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdfg'),
(9, NULL, '507hpkui803q8chnerqdtf3vl2', 1520000, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', '', 'sdfg'),
(10, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'dfgfdhgvjm'),
(11, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'd'),
(12, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zscf'),
(13, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sds', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xfc'),
(14, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ádasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cv'),
(15, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxd'),
(16, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xf'),
(17, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'f', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(18, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'g'),
(19, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(20, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sè', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cvb'),
(21, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgd', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxcv'),
(22, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfjas@gmail.com', 'tung92.ns@gmail.com', '12342', 'fg', 'xc'),
(23, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', 'dfg', 'dfg', 'gh'),
(24, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dgfdg', 'tung92.ns@gmail.com', '1234567', 'xfvd', 'sx'),
(25, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ạgdfh', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cfgvb'),
(26, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xcv'),
(27, NULL, '507hpkui803q8chnerqdtf3vl2', 3040000, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', '', 'xcv'),
(28, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 0, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', 'fghfgh', 'zdfgdfg'),
(29, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 1845000, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', '', 'zdfgdfg'),
(30, NULL, '334n6joa344tmhngo3r5aqpve3', 1845000, NULL, '0000-00-00', NULL, NULL, 'HANGWF', 'HGJFGH@GMAIL.COM', '45657', 'qUAN NHAN', 'DTAN'),
(31, NULL, 'uicgfl7gr3e7ahodo04vpssns6', 3930000, NULL, '0000-00-00', NULL, NULL, 'dfHFGH', 'XFGHFG@GMAIL.COM', '3456789', 'ARFG', 'WRWER'),
(32, NULL, '9h180s77g41hqt5d8g95mudic6', 205000, NULL, '0000-00-00', NULL, NULL, 'vcxgf', 'gfgfdg@gmail.com', 'fgfdgdfg', 'fgfdgdf', 'gfdgdf'),
(33, NULL, 'jom8ufm7f64s09i4gk10fp1ma2', 2255000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '12184', 'Fqgq', 'Vsbs'),
(34, NULL, '20ks5j7ju4vpq91d9699nvile3', 1455000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '86633889', 'Fgujbvg', ''),
(35, NULL, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, NULL, '0000-00-00', NULL, NULL, 'Ngọc thế', 'ngocthe505@gmail.com', '0943218532', 'Số 19 ngõ 4 văn la hà đông hn', ''),
(36, NULL, '0m0i103i9mk3s0t8mi1g6gnqd5', 2250000, NULL, '0000-00-00', 4, '', 'Lìu tìu phìu', 'admin@deptrai.com', '096969969', 'Hà Nội', ''),
(37, NULL, 'meesi1d3laemnvqfgu7m1lm9p4', 2050000, NULL, '0000-00-00', 4, 'gfdgfd', 'Lìu tìu phìu', 'admin@deptrai.com', '0969068969', 'Hà Nội', ''),
(38, NULL, 'r3ktn90f3cn3fv82lob0qfv7l2', 0, NULL, '0000-00-00', NULL, NULL, 'hfgh', 'gfhg@gmail.com', '5345345435', 'gbfdgfdg', 'gdfg'),
(39, NULL, '3j87stb5hl70hfftn49fg9uve2', 615000, NULL, '0000-00-00', 1, '', 'Tâm', 'ngockhanh@gmail.com', '0974698975', 'thanh xuân', ''),
(40, NULL, 'vjnoaabl9tui5463ttpol3a745', 3040000, NULL, '0000-00-00', 1, '', 'hằng pt', 'ngockhanh@gmail.com', '123123435', 'dfghdfgh', 'dfghdfgh'),
(41, NULL, '36v2v63fsce7tth1ep3mp51uh3', 760000, NULL, '0000-00-00', NULL, NULL, 'ádfasdf', 'ngockhanh@gmail.com', 'dfgadfg', 'ádfgsdf', ''),
(42, NULL, '9ed4v2g4sm1v3og223ckgdh650', 4560000, NULL, '0000-00-00', NULL, NULL, 'sxdfsdf', 'ng@gmail.com', '345345', 'étdgvdf', ''),
(43, NULL, 's7kfj9rca2ic102k5sgpe4it67', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '30012018', 'Ha Noi', '1'),
(44, NULL, 'uh6mafdedbdh4sqodcd4amspa5', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(45, NULL, '1phakdlrnq7gn5ln72umgujq63', 238620, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '13-7'),
(46, NULL, '14pvd1p4a6tu35c2km9ck3fbf4', 246000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '24-08'),
(47, NULL, '976nru8ujtm188utfmdli20mo5', 420000, NULL, '0000-00-00', NULL, NULL, 'Hanh', 'hanhbp@gmail.com', '0913261689', '326 Le trong Tan Thanh Xuan', 'Giao ngoai gio hanh chinh'),
(48, NULL, 'v3p39e8h23inda7t5e6ch0tv35', 420000, NULL, '0000-00-00', NULL, NULL, 'Hoàng thu thảo', '', '0946944866', 'Số 8, tổ 1, tân lập 1, cẩm thuỷ, cẩm phả, quảng ninh', ''),
(49, NULL, 'addpl7ej742e3q0r43nrfssub3', 315000, NULL, '0000-00-00', NULL, NULL, 'Lê Thị Thuỳ', 'emaillethuy@gmail.com', '0967883638', 'Số 22H Ngõ 350 Kim Giang Hà Nội', 'Muốn nhận hàng trong ngày mai ngày 2/2'),
(50, NULL, 'l3il149c0de98t630fla3fsuq7', 0, NULL, '0000-00-00', NULL, NULL, 'Phạm thanh thuý', 'thanhthuyuno8908@gmail.com', '0979121445', 'CT1B - chung cư Mon city, ngõ 6 Nguyễn Cơ Thạch , Mĩ đình 2, nam từ Liêm, Hà Nội', ''),
(51, NULL, 'tn1kre5u79qng34es3ufod71r7', 0, NULL, '0000-00-00', NULL, NULL, 'a', 'a@fff.com', '02313545312', '123123123', '12312'),
(52, NULL, 'n3ipmkqd8iii9iomt98ug9qtk6', 246000, NULL, '2020-05-04', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 27, 'fg4g7m0pb0vnv4dnvp88f7lds7', 760000, 3, 2280000, NULL, 2, 1, 'Cam', 'S', 1),
(8, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 2, 1520000, NULL, 2, 1, 'Cam', 'S', 25),
(9, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 4, 3040000, NULL, 2, 1, 'Cam', 'S', 26),
(10, 42, 'k75ivhcmgk5u9bbi4ajsqeqon7', 205000, 9, 1845000, NULL, 0, 0, '', '', 28),
(11, 42, '334n6joa344tmhngo3r5aqpve3', 205000, 9, 1845000, NULL, 0, 0, '', '', 30),
(12, 42, 'uicgfl7gr3e7ahodo04vpssns6', 205000, 6, 1230000, NULL, 0, 0, '', '', 31),
(13, 43, 'uicgfl7gr3e7ahodo04vpssns6', 450000, 6, 2700000, NULL, 0, 0, '', '', 31),
(14, 42, '9h180s77g41hqt5d8g95mudic6', 205000, 1, 205000, NULL, 0, 0, '', '', 32),
(15, 42, 'jom8ufm7f64s09i4gk10fp1ma2', 205000, 11, 2255000, NULL, 0, 0, '', '', 33),
(16, 43, '20ks5j7ju4vpq91d9699nvile3', 225000, 1, 225000, NULL, 0, 0, '', '', 34),
(17, 42, '20ks5j7ju4vpq91d9699nvile3', 205000, 6, 1230000, NULL, 0, 0, '', '', 34),
(18, 42, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, 1, 205000, NULL, 0, 0, '', '', 35),
(19, 43, '0m0i103i9mk3s0t8mi1g6gnqd5', 225000, 10, 2250000, NULL, 0, 0, '', '', 36),
(20, 42, 'meesi1d3laemnvqfgu7m1lm9p4', 205000, 10, 2050000, NULL, 0, 0, '', '', 37),
(21, 42, 'r3ktn90f3cn3fv82lob0qfv7l2', 205000, 0, 0, NULL, 0, 0, '', '', 38),
(22, 42, '3j87stb5hl70hfftn49fg9uve2', 205000, 3, 615000, NULL, 0, 0, '', '', 39),
(23, 27, 'vjnoaabl9tui5463ttpol3a745', 760000, 3, 2280000, NULL, 0, 0, '', '', 40),
(24, 28, 'vjnoaabl9tui5463ttpol3a745', 760000, 1, 760000, NULL, 0, 0, '', '', 40),
(25, 27, '36v2v63fsce7tth1ep3mp51uh3', 760000, 1, 760000, NULL, 0, 0, '', '', 41),
(26, 27, '9ed4v2g4sm1v3og223ckgdh650', 760000, 6, 4560000, NULL, 0, 0, '', '', 42),
(27, 55, 's7kfj9rca2ic102k5sgpe4it67', 0, 2, 0, NULL, 0, 0, '', '60x90 cm', 43),
(28, 48, 'uh6mafdedbdh4sqodcd4amspa5', 0, 1, 0, NULL, 0, 0, '', '', 44),
(29, 55, '1phakdlrnq7gn5ln72umgujq63', 119310, 2, 238620, NULL, 0, 0, '', '', 45),
(30, 55, '14pvd1p4a6tu35c2km9ck3fbf4', 123000, 2, 246000, NULL, 0, 0, '', '', 46),
(31, 154, '976nru8ujtm188utfmdli20mo5', 420000, 1, 420000, NULL, 0, 0, '', '', 47),
(32, 154, 'v3p39e8h23inda7t5e6ch0tv35', 420000, 1, 420000, NULL, 0, 0, '', '', 48),
(33, 139, 'addpl7ej742e3q0r43nrfssub3', 315000, 1, 315000, NULL, 0, 0, '', '', 49),
(34, 154, 'l3il149c0de98t630fla3fsuq7', 0, 1, 0, NULL, 0, 0, '', '', 50),
(35, 238, 'tn1kre5u79qng34es3ufod71r7', 0, 1, 0, NULL, 0, 0, '', '', 51),
(36, 266, 'n3ipmkqd8iii9iomt98ug9qtk6', 123000, 2, 246000, NULL, 0, 0, '', '', 52);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `link1` text COLLATE utf8_unicode_ci NOT NULL,
  `link2` text COLLATE utf8_unicode_ci NOT NULL,
  `link3` text COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Công Ty Cổ Phần Tập Đoàn Vinatop', '', 'Công Ty Cổ Phần Tập Đoàn Vinatop', 'Công Ty Cổ Phần Tập Đoàn Vinatop', 'vinatop.png', '', '', 'Công Ty Cổ Phần Tập Đoàn Vinatop', 'Đường 310B - Thôn Lương Câu - Xã Sơn Lôi - Huyện Bình Xuyên - Tỉnh Vĩnh Phúc', 'vinatopbx@gmail.com', ' 02113.868.989', '', 'Vinatop', '', '<ul>\r\n      <li><a href=\"/qua-tang-doanh-nghiep\">Quà tặng doanh nghiệp</a></li>\r\n      <li><a href=\"/qua-tang-quang-cao\">Quà tặng quảng cáo</a></li>\r\n      <li><a href=\"/qua-tang-khuyen-mai\">Quà tặng khuyến mãi</a></li>\r\n      <li><a href=\"/qua-tang-dip-le-tet\">Quà tặng dịp lễ, tết</a></li>\r\n\r\n\r\n</ul>', '', '1231', '', '[\"{\\\"image\\\":\\\"pb-beer-1513436-1600.jpg\\\"}\",\"{\\\"image\\\":\\\"wine-1600.jpg\\\"}\",\"{\\\"image\\\":\\\"px-back-view-boats-couple-2612852-1600.jpg\\\"}\"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'banner2.jpg', 'banner1.jpg', 'banner3.jpg', 'vinatop.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) DEFAULT '0',
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Công Ty Cổ Phần Tập Đoàn Vinatop', '', 'Công Ty Cổ Phần Tập Đoàn Vinatop', 'Công Ty Cổ Phần Tập Đoàn Vinatop', '', '', 'Công Ty Cổ Phần Tập Đoàn Vinatop', 'Đường 310B - Thôn Lương Câu - Xã Sơn Lôi - Huyện Bình Xuyên - Tỉnh Vĩnh Phúc', 'vinatopbx@gmail.com', ' 02113.868.989', '', 'Vinatop', '', '<ul>\r\n      <li><a href=\"/qua-tang-doanh-nghiep\">Quà tặng doanh nghiệp</a></li>\r\n      <li><a href=\"/qua-tang-quang-cao\">Quà tặng quảng cáo</a></li>\r\n      <li><a href=\"/qua-tang-khuyen-mai\">Quà tặng khuyến mãi</a></li>\r\n      <li><a href=\"/qua-tang-dip-le-tet\">Quà tặng dịp lễ, tết</a></li>\r\n\r\n\r\n</ul>', '', '1231', '', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', NULL, '', '', NULL, NULL, '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', NULL, 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English'),
(3, 'cn', 'China');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'ewrerwer', 'viethung95cute@gmail.com', '01672545654', 'hà nội', '', '2018-04-05 06:24:46'),
(4, 'tuấn', 'tuan@gmail.com', '0123', '', '13-7', '2018-07-13 11:24:19'),
(5, 'tuấn', 'tuan@gmail.com', '0123', '', '123', '2018-08-24 12:15:54'),
(6, '', '', '', '', '', '2019-12-18 03:14:37'),
(7, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', '4-5', '2020-05-04 08:37:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(275, 'Về chúng tôi', 0, 13, '', 0, 0, 0, 56, 0, 1, 0, 0, 0, NULL),
(276, 'Sản phẩm & Dịch vụ', 0, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(277, 'Đối tác', 0, 12, '', 0, 0, 0, 0, 0, 1, 0, 7, 0, NULL),
(278, 'Liên hệ', 0, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(279, 'Tuyển dụng', 0, 13, '', 0, 0, 0, 65, 0, 1, 0, 0, 0, NULL),
(280, 'Blog', 0, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(281, 'Tập đoàn Vinatop', 0, 13, '', 0, 0, 0, 61, 0, 1, 275, 0, 0, NULL),
(282, 'Bộ phận đá mài', 0, 13, '', 0, 0, 0, 59, 0, 1, 275, 0, 0, NULL),
(283, 'Bộ phận thương mại', 0, 13, '', 0, 0, 0, 58, 0, 1, 275, 0, 0, NULL),
(284, 'Bộ phận men màu', 0, 13, '', 0, 0, 0, 57, 0, 1, 275, 0, 0, NULL),
(285, 'Bộ phận công trình', 0, 13, '', 0, 0, 0, 64, 0, 1, 275, 0, 0, NULL),
(286, 'Bộ phận gạch', 0, 13, '', 0, 0, 0, 63, 0, 1, 275, 0, 0, NULL),
(287, 'Bộ phận khuôn mẫu', 0, 13, '', 0, 0, 0, 62, 0, 1, 275, 0, 0, NULL),
(288, 'Showroom', 0, 13, '', 0, 0, 0, 60, 0, 1, 275, 0, 0, NULL),
(289, 'Gạch trang trí', 0, 3, '', 230, 0, 0, 0, 0, 1, 276, 0, 0, NULL),
(290, 'Khuôn mẫu sx gạch men', 0, 3, '', 232, 0, 0, 0, 0, 1, 276, 0, 0, NULL),
(291, 'Thiết bị vật tư sx gạch men', 0, 3, '', 231, 0, 0, 0, 0, 1, 276, 0, 0, NULL),
(292, 'Công trình trạm khí hóa', 0, 3, '', 233, 0, 0, 0, 0, 1, 276, 0, 0, NULL),
(293, 'Men màu xs gạch men', 0, 3, '', 234, 0, 0, 0, 0, 1, 276, 0, 0, NULL),
(294, 'Sản phẩm đá mài', 0, 3, '', 235, 0, 0, 0, 0, 1, 276, 0, 0, NULL),
(295, 'Dịch vụ', 0, 10, '', 0, 0, 0, 0, 0, 1, 276, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(528, 'vn', 'Về chúng tôi', 1, '', 275),
(529, 'en', 'Về chúng tôi en', 1, '', 275),
(530, 'cn', 'Về chúng tôi cn', 1, '', 275),
(531, 'vn', 'Sản phẩm & Dịch vụ', 0, '', 276),
(532, 'en', 'Sản phẩm & Dịch vụ', 0, '', 276),
(533, 'cn', 'Sản phẩm & Dịch vụ', 0, '', 276),
(534, 'vn', 'Đối tác', 0, '', 277),
(535, 'en', 'Đối tác', 0, '', 277),
(536, 'cn', 'Đối tác', 0, '', 277),
(537, 'vn', 'Liên hệ', 0, '', 278),
(538, 'en', 'Liên hệ', 0, '', 278),
(539, 'cn', 'Liên hệ', 0, '', 278),
(540, 'vn', 'Tuyển dụng', 0, '', 279),
(541, 'en', 'Tuyển dụng', 0, '', 279),
(542, 'cn', 'Tuyển dụng', 0, '', 279),
(543, 'vn', 'Blog', 0, '', 280),
(544, 'en', 'Blog', 0, '', 280),
(545, 'cn', 'Blog', 0, '', 280),
(546, 'vn', 'Tập đoàn Vinatop', 0, '', 281),
(547, 'en', 'Tập đoàn Vinatop', 0, '', 281),
(548, 'cn', 'Tập đoàn Vinatop', 0, '', 281),
(549, 'vn', 'Bộ phận đá mài', 0, '', 282),
(550, 'en', 'Bộ phận đá mài', 0, '', 282),
(551, 'cn', 'Bộ phận đá mài', 0, '', 282),
(552, 'vn', 'Bộ phận thương mại', 0, '', 283),
(553, 'en', 'Bộ phận thương mại', 0, '', 283),
(554, 'cn', 'Bộ phận thương mại', 0, '', 283),
(555, 'vn', 'Bộ phận men màu', 0, '', 284),
(556, 'en', 'Bộ phận men màu', 0, '', 284),
(557, 'cn', 'Bộ phận men màu', 0, '', 284),
(558, 'vn', 'Bộ phận công trình', 0, '', 285),
(559, 'en', 'Bộ phận công trình', 0, '', 285),
(560, 'cn', 'Bộ phận công trình', 0, '', 285),
(561, 'vn', 'Bộ phận gạch', 0, '', 286),
(562, 'en', 'Bộ phận gạch', 0, '', 286),
(563, 'cn', 'Bộ phận gạch', 0, '', 286),
(564, 'vn', 'Bộ phận khuôn mẫu', 0, '', 287),
(565, 'en', 'Bộ phận khuôn mẫu', 0, '', 287),
(566, 'cn', 'Bộ phận khuôn mẫu', 0, '', 287),
(567, 'vn', 'Showroom', 0, '', 288),
(568, 'en', 'Showroom', 0, '', 288),
(569, 'cn', 'Showroom', 0, '', 288),
(570, 'vn', 'Gạch trang trí', 0, '', 289),
(571, 'en', 'Gạch trang trí', 0, '', 289),
(572, 'cn', 'Gạch trang trí', 0, '', 289),
(573, 'vn', 'Khuôn mẫu sx gạch men', 0, '', 290),
(574, 'en', 'Khuôn mẫu sx gạch men', 0, '', 290),
(575, 'cn', 'Khuôn mẫu sx gạch men', 0, '', 290),
(576, 'vn', 'Thiết bị vật tư sx gạch men', 0, '', 291),
(577, 'en', 'Thiết bị vật tư sx gạch men', 0, '', 291),
(578, 'cn', 'Thiết bị vật tư sx gạch men', 0, '', 291),
(579, 'vn', 'Công trình trạm khí hóa', 0, '', 292),
(580, 'en', 'Công trình trạm khí hóa', 0, '', 292),
(581, 'cn', 'Công trình trạm khí hóa', 0, '', 292),
(582, 'vn', 'Men màu xs gạch men', 0, '', 293),
(583, 'en', 'Men màu xs gạch men', 0, '', 293),
(584, 'cn', 'Men màu xs gạch men', 0, '', 293),
(585, 'vn', 'Sản phẩm đá mài', 0, '', 294),
(586, 'en', 'Sản phẩm đá mài', 0, '', 294),
(587, 'cn', 'Sản phẩm đá mài', 0, '', 294),
(588, 'vn', 'Dịch vụ', 0, '', 295),
(589, 'en', 'Dịch vụ', 0, '', 295),
(590, 'cn', 'Dịch vụ', 0, '', 295);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham-1'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in'),
(31, 'cn', 6, 'All News', 'news'),
(32, 'cn', 9, 'Contact', 'contact'),
(33, 'cn', 2, 'All products', 'products'),
(34, 'cn', 10, 'All Services', 'services');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(145, 'Bộ ấm trà - đồ dùng không thể thiếu trong mỗi gia đình Việt.', 'Với phong tục, tập quán cũng như  thói quen của người Việt thì một Bộ ấm trà sẽ không bao giờ thiếu trong những buổi hội họp, tiệc tùng của mỗi gia đình hay công ty. \r\n', '', '6.jpg', 0, 3, '', '2018-10-13 10:10:35', '2020-04-10 17:04:43', 1, '', '', '', '', '', 'Bộ ấm trà - đồ dùng không thể thiếu trong mỗi gia đình Việt.', 'Với phong tục, tập quán cũng như  thói quen của người Việt thì một Bộ ấm trà sẽ không bao giờ thiếu trong những buổi hội họp, tiệc tùng của mỗi gia đình hay công ty. \r\n', 'bo-am-tra-do-dung-khong-the-thieu-trong-moi-gia-dinh-viet', 'Bộ ấm trà', 1),
(146, 'Bình giữ nhiệt nhựa thủy tinh và những điều bạn chưa biết.', 'Bình giữ nhiệt nhựa thủy tinh là một trong những vật dụng mà dân văn phòng và những sinh viên đi học cả ngày tại trường ưa chuộng nhờ sự tiện lợi cũng như hiệu quả mà nó đem lại.\r\n', '', '6.jpg', 0, 2, '', '2018-10-13 10:10:27', '2020-04-10 17:04:37', 1, '', '', '', '', '', 'Bình giữ nhiệt nhựa thủy tinh và những điều bạn chưa biết.', 'Bình giữ nhiệt nhựa thủy tinh là một trong những vật dụng mà dân văn phòng và những sinh viên đi học cả ngày tại trường ưa chuộng nhờ sự tiện lợi cũng như hiệu quả mà nó đem lại.\r\n', 'binh-giu-nhiet-nhua-thuy-tinh-va-nhung-dieu-ban-chua-biet', 'bình giữ nhiệt nhựa thủy tinh', 1),
(147, 'Bình nước nhựa thể thao - Món quà tặng độc đáo hiện nay', 'Bình nước nhựa thể thao tích hợp kiểu dáng hiện đại, đơn giản thích hợp sử dụng cho những người năng động, ưa thích việc vận động ngoài trời nhiều. \r\n', '', '6.jpg', 0, 1, '', '2018-10-13 10:10:18', '2020-04-10 17:04:32', 1, '', '', '', '', '', 'Bình nước nhựa thể thao - Món quà tặng độc đáo hiện nay', 'Bình nước nhựa thể thao tích hợp kiểu dáng hiện đại, đơn giản thích hợp sử dụng cho những người năng động, ưa thích việc vận động ngoài trời nhiều. ', 'binh-nuoc-nhua-the-thao-mon-qua-tang-doc-dao-hien-nay', 'Bình nước nhựa thể thao', 1),
(148, 'Bình nước nhựa- sản phẩm phù hợp làm quà tặng cho các đơn vị , quà tặng người thân bạn bè', 'Những món quà tặng đầy ý nghĩa như bình nước nhựa, bình nước giữ nhiệt,… hiện đang được rất nhiều đơn vị ưa chuộng để tặng cho những khách hàng, bạn bè và người thân của mình.', '', '6.jpg', 0, 1, '', '2018-10-13 10:10:28', '2020-04-10 17:04:27', 1, '', '', '', '', '', 'Bình nước nhựa- sản phẩm phù hợp làm quà tặng cho các đơn vị , quà tặng người thân bạn bè', 'Những món quà tặng đầy ý nghĩa như bình nước nhựa, bình nước giữ nhiệt,… hiện đang được rất nhiều đơn vị ưa chuộng để tặng cho những khách hàng, bạn bè và người thân của mình.', 'binh-nuoc-nhua-san-pham-phu-hop-lam-qua-tang-cho-cac-don-vi-qua-tang-nguoi-than-ban-be', 'Bình nước nhựa', 1),
(149, 'CĐ các KCN tỉnh Vĩnh Phúc: Ra mắt CĐ Cty CP Tập đoàn Vina Top', 'Đang cập nhật', '<p>Đang cập nhật</p>\r\n', '111.jpg', 0, 1, '', '2020-04-22 15:04:14', '2020-04-22 15:04:19', 1, '', '', '', '', '', 'CĐ các KCN tỉnh Vĩnh Phúc: Ra mắt CĐ Cty CP Tập đoàn Vina Top', '', 'cd-cac-kcn-tinh-vinh-phuc-ra-mat-cd-cty-cp-tap-doan-vina-top', '', 1),
(150, 'Lễ công bố sản phẩm mới gạch trang trí tập đoàn Vinatop 2017', 'Đang cập nhật', '<p>Đang cập nhật</p>\r\n', 'IMG_7465.jpg', 0, 1, '', '2020-04-22 16:04:21', NULL, 1, '', '', '', '', '', 'Lễ công bố sản phẩm mới gạch trang trí tập đoàn Vinatop 2017', '', 'le-cong-bo-san-pham-moi-gach-trang-tri-tap-doan-vinatop-2017', '', 1),
(151, 'Vật tư, thiết bị phòng thí nghiệm sản xuất gạch ốp lát', 'đang cập nhật', '<p>đang cập nhật</p>\r\n', 'May-nung-va-say-thi-nghiem.jpg', 0, 1, '', '2020-04-22 16:04:37', '2020-04-22 16:04:10', 1, '', '', '', '', '', 'Vật tư, thiết bị phòng thí nghiệm sản xuất gạch ốp lát', '', 'vat-tu-thiet-bi-phong-thi-nghiem-san-xuat-gach-op-lat', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(1, 'Công nghệ', '', '', 0, 0, '2020-04-10 17:04:27', NULL, 1, '', '', '', '', '', '', 'Công nghệ', '', 'cong-nghe', '', 1),
(2, 'Sản phẩm', '', '', 0, 0, '2020-04-10 17:04:53', NULL, 1, '', '', '', '', '', '', 'Sản phẩm', '', 'san-pham', '', 1),
(3, 'CoVid-19', '', '', 0, 0, '2020-04-10 17:04:09', NULL, 1, '', '', '', '', '', '', 'CoVid-19', '', 'covid-19', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(1, 1, 'vn', 'Công nghệ', '', '1', '', '', '', '', '', 1, 'cong-nghe', '', 'Công nghệ', ''),
(2, 1, 'en', 'Technology', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-cong-nghe', '', 'Công nghệ', ''),
(3, 2, 'vn', 'Sản phẩm', '', '1', '', '', '', '', '', 1, 'san-pham', '', 'Sản phẩm', ''),
(4, 2, 'en', 'Product', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-san-pham', '', 'Sản phẩm', ''),
(5, 3, 'vn', 'CoVid-19', '', '1', '', '', '', '', '', 1, 'covid-19', '', 'CoVid-19', ''),
(6, 3, 'en', 'CoVid-19', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-covid-19', '', 'CoVid-19', ''),
(13, 1, 'cn', 'Công nghệ cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-cong-nghe', NULL, 'Công nghệ cn', NULL),
(14, 2, 'cn', 'Sản phẩm cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-san-pham', NULL, 'Sản phẩm cn', NULL),
(15, 3, 'cn', 'CoVid-19 cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-covid-19', NULL, 'CoVid-19 cn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(289, 145, 'vn', 'Bộ ấm trà - đồ dùng không thể thiếu trong mỗi gia đình Việt.', 'Với phong tục, tập quán cũng như  thói quen của người Việt thì một Bộ ấm trà sẽ không bao giờ thiếu trong những buổi hội họp, tiệc tùng của mỗi gia đình hay công ty. \r\n', '', '', '', '', '', '', 0, 'bo-am-tra-do-dung-khong-the-thieu-trong-moi-gia-dinh-viet', 'Bộ ấm trà - đồ dùng không thể thiếu trong mỗi gia đình Việt.', 'Với phong tục, tập quán cũng như  thói quen của người Việt thì một Bộ ấm trà sẽ không bao giờ thiếu trong những buổi hội họp, tiệc tùng của mỗi gia đình hay công ty. \r\n', 'Bộ ấm trà'),
(290, 145, 'en', 'english version Bộ ấm trà - đồ dùng không thể thiếu trong mỗi gia đình Việt.', 'english version Với phong tục, tập quán cũng như  thói quen của người Việt thì một Bộ ấm trà sẽ không bao giờ thiếu trong những buổi hội họp, tiệc tùng của mỗi gia đình hay công ty. \r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\">Với phong tục, tập qu&aacute;n cũng như &nbsp;th&oacute;i quen của người Việt th&igrave; một Bộ ấm tr&agrave; sẽ kh&ocirc;ng bao giờ thiếu trong những buổi hội họp, tiệc t&ugrave;ng của mỗi gia đ&igrave;nh hay c&ocirc;ng ty.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Từ xưa tới nay việc chọn bộ ấm ch&eacute;n ph&ugrave; hợp với nhu cầu sử dụng ri&ecirc;ng của mỗi c&ocirc;ng ty, gia đ&igrave;nh hay c&aacute; nh&acirc;n kh&ocirc;ng hề đơn giản.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Sau đ&acirc;y bạn v&agrave; H2D h&atilde;y c&ugrave;ng t&igrave;m hiểu về một số loại ấm tr&agrave; phổ biến hiện nay.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"407\" src=\"https://lh4.googleusercontent.com/SVem8i90iYY6Zz69wFRy1dGjOgbUamkp9QtHGofjdWpcp4CpZf03mP30S9_poz3HCo962AtMANEVRuW3dUb6uSb9wF4gN4zAKauCUOBKE1ZNwTR2UMMvNgFi8wLoT38FSRE7aZ24O78wc1ODfg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bộ ấm tr&agrave; đậm chất sang trọng v&agrave; cố xưa</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ấm gang: L&agrave; loại ấm kh&aacute; phổ biến trong văn h&oacute;a Nhật Bản, ấm gang giữ nhiệt tốt hơn c&aacute;c chất liệu kh&aacute;c.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ấm tứ sa: L&agrave; loại ấm được l&agrave;m từ loại đất s&eacute;t c&oacute; m&agrave;u t&iacute;m (tứ sa) chỉ c&oacute; Trung Quốc. Ấm hấp thụ hương vị của tr&agrave; gi&uacute;p tr&agrave; ngon hơn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ấm gốm sứ: Đ&acirc;y l&agrave; loại phổ biến nhất, thiết kế đa dạng, giữ nhiệt tốt gi&aacute; th&agrave;nh ph&ugrave; hợp với từng đối tượng v&agrave; mục đ&iacute;ch sử dụng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ấm thủy tinh: Ra đời sau những ấm kh&aacute;c nhưng đ&atilde; sớm chiếm lĩnh được thị trường người ti&ecirc;u d&ugrave;ng bởi thiết kế sang trọng, lạ, trong suốt, bắt mắt.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Lưu &yacute; khi lựa chọn mua bộ ấm tr&agrave;</strong></h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"421\" src=\"https://lh6.googleusercontent.com/bAxxYakhJwl9pwoYXtliBpKjka-fDaGaF3woK2maeoN58130aOb4SEz3P1a_XeVgAF62DwQQWO4CLnKg6nnibon-GPPd8zxoFWR5m3w9XVWZIpfpSWL5g4FhWaKLmzvs5PSzM2lAx3AWdRj3Pg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Ấm tr&agrave; với nhiều kiểu c&aacute;ch, mẫu m&atilde;</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Khi mua bộ ấm tr&agrave; c&aacute;c loại bạn cần &nbsp;ch&uacute; &yacute; một số điều như sau:</strong></h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\" style=\"text-align:justify\">K&iacute;ch thước phải ph&ugrave; hợp với nhu cầu sử dụng v&agrave; bộ b&agrave;n tr&agrave; c&oacute; sẵn tại gia đ&igrave;nh bạn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\" style=\"text-align:justify\">Thiết kế ph&ugrave; hợp với c&aacute; t&iacute;nh của bạn nhưng cũng n&ecirc;n tr&aacute;nh c&aacute;c thiết kế c&oacute; nhiều hoa văn dễ g&atilde;y trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\" style=\"text-align:justify\">N&ecirc;n t&igrave;m hiểu gi&aacute; c&aacute;c loại ấm tr&agrave; kh&aacute;c nhau trước khi mua để c&oacute; hướng kinh ph&iacute; trước cho m&igrave;nh.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\" style=\"text-align:justify\">Lựa chọn những địa chỉ b&aacute;n ấm tr&agrave; uy t&iacute;n, chất lượng để chọn những ấm tr&agrave; tốt, như thế th&igrave; khi pha tr&agrave; chất lượng sẽ ngon hơn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\" style=\"text-align:justify\">Lựa chọn&nbsp;qu&agrave; tặng doanh nghiệp cho kh&aacute;ch h&agrave;ng, đối t&aacute;c lu&ocirc;n l&agrave; một trong những vấn đề g&acirc;y kh&oacute; khăn cho doanh nghiệp. Nhất l&agrave; v&agrave;o dịp cuối năm, lễ tết, kỉ niệm c&ocirc;ng ty, c&aacute;c chương tr&igrave;nh hội nghị, hội thảo, đ&acirc;y l&agrave; thời điểm để tri &acirc;n, tạo sự ch&uacute; &yacute; cho kh&aacute;ch h&agrave;ng. Để Qu&yacute; Kh&aacute;ch c&oacute; thể dễ d&agrave;ng lựa chọn mẫu qu&agrave; tặng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Một bộ ấm ch&eacute;n được in ấn logo, h&igrave;nh ảnh của c&ocirc;ng ty, doanh nghiệp, người được tặng... sẽ tạo được ấn tượng, gi&uacute;p kh&aacute;ch h&agrave;ng nhớ đến bạn nhiều hơn.&nbsp;bạn sẽ g&oacute;p phần thực hiện chiến lược marketing hiệu quả, l&agrave;m cho kh&aacute;ch h&agrave;ng nhận diện thương hiệu doanh nghiệp tốt nhất.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Nếu muốn mua bộ ấm tr&agrave; c&aacute;c loại bạn h&atilde;y nhấn v&agrave;o đ&acirc;y <a href=\"http://h2d.thietkewebsitegbvn.com/\">http://h2d.thietkewebsitegbvn.com/</a> để chọn cho m&igrave;nh những ấm tr&agrave; ph&ugrave; hợp v&agrave; y&ecirc;u th&iacute;ch. Uy t&iacute;n v&agrave; chất lượng lu&ocirc;n được đặt l&ecirc;n h&agrave;ng đầu sẽ kh&ocirc;ng l&agrave;m bạn thất vọng khi sử dụng sản phẩm tại đ&acirc;y.</p>\r\n', '', '', '', '', '', 0, 'en-bo-am-tra-do-dung-khong-the-thieu-trong-moi-gia-dinh-viet', 'Bộ ấm trà - đồ dùng không thể thiếu trong mỗi gia đình Việt.', 'Với phong tục, tập quán cũng như  thói quen của người Việt thì một Bộ ấm trà sẽ không bao giờ thiếu trong những buổi hội họp, tiệc tùng của mỗi gia đình hay công ty. \r\n', 'Bộ ấm trà'),
(291, 146, 'vn', 'Bình giữ nhiệt nhựa thủy tinh và những điều bạn chưa biết.', 'Bình giữ nhiệt nhựa thủy tinh là một trong những vật dụng mà dân văn phòng và những sinh viên đi học cả ngày tại trường ưa chuộng nhờ sự tiện lợi cũng như hiệu quả mà nó đem lại.\r\n', '', '', '', '', '', '', 0, 'binh-giu-nhiet-nhua-thuy-tinh-va-nhung-dieu-ban-chua-biet', 'Bình giữ nhiệt nhựa thủy tinh và những điều bạn chưa biết.', 'Bình giữ nhiệt nhựa thủy tinh là một trong những vật dụng mà dân văn phòng và những sinh viên đi học cả ngày tại trường ưa chuộng nhờ sự tiện lợi cũng như hiệu quả mà nó đem lại.\r\n', 'bình giữ nhiệt nhựa thủy tinh'),
(292, 146, 'en', 'english version Bình giữ nhiệt nhựa thủy tinh và những điều bạn chưa biết.', 'english version ', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><strong>B&igrave;nh giữ nhiệt nhựa thủy tinh l&agrave; một trong những vật dụng m&agrave; d&acirc;n văn ph&ograve;ng v&agrave; những sinh vi&ecirc;n đi học cả ng&agrave;y tại trường ưa chuộng nhờ sự tiện lợi cũng như hiệu quả m&agrave; n&oacute; đem lại.</strong></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"455\" src=\"https://lh5.googleusercontent.com/vXNwhpOsKLTGx-zEkQfniD43efu4f2yu66C_eObd6CVslJ1Briwx55eCSP6h_fQ1Li95qtxzTjv38IdmP2H8LCFcgJAtD_4A2Lrp0J90utfGzilvHUHSduckuMAOaliGZ-eEsz64XHFASUk7Cg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>B&igrave;nh giữ nhiệt nhựa thủy tinh chất lượng cao, gi&aacute; th&agrave;nh rẻ</em></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">B&igrave;nh giữ nhiệt ra đời sau c&aacute;c loại b&igrave;nh đựng nước rất l&acirc;u nhưng lại nhanh ch&oacute;ng chiếm được thị trường v&agrave; trở th&agrave;nh một vật dụng kh&ocirc;ng thể thiếu của một bộ phận &nbsp;người ti&ecirc;u d&ugrave;ng kh&ocirc;ng hề nhỏ. Tr&ecirc;n thị trường hiện nay c&oacute; rất nhiều loại b&igrave;nh giữ nhiệt, c&oacute; loại bằng inox, c&oacute; loại bằng th&eacute;p kh&ocirc;ng gỉ tuy nhi&ecirc;n sản phẩm được nhiều kh&aacute;ch h&agrave;ng chọn mua nhất ch&iacute;nh l&agrave; b&igrave;nh giữ nhiệt nhựa thủy tinh.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"411\" src=\"https://lh5.googleusercontent.com/KJNrrqCJR4-vUuixUXqpUaGcweyQjbblz2xTGfh05eZDZqvYIEZpJxwc5Ay7JwbSpt_di_DET5K5MTkOYh7-1lc4_Mrk3Z2gcDIIH7C0ngIPkV4kbFZF3H9PRjbkShaBNJ2trf2Rqpui_FmW6w\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Sử dụng b&igrave;nh giữ nhiệt nhựa thủy tinh để đảm bảo cho sức khỏe của bạn</em></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Đặc điểm của b&igrave;nh giữ nhiệt nhựa thủy tinh.</strong></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; loại b&igrave;nh giữ nhiệt tốt nhất v&igrave; &iacute;t tạo ra c&aacute;c phản ứng h&oacute;a học khi c&oacute; sự tiếp x&uacute;c giữa c&aacute;c chất kh&aacute;c với thủy tinh. L&iacute; do m&agrave; b&igrave;nh giữ nhiệt c&oacute; thể giữ được độ n&oacute;ng cho nước l&acirc;u như vậy l&agrave; nhờ cấu tạo gồm 3 lớp: lớp vỏ l&agrave;m từ nhựa, đảm bảo độ bền đẹp cho sản phẩm, lớp ch&acirc;n kh&ocirc;ng c&aacute;ch nhiệt gi&uacute;p giữ lại hơi ấm của nước được l&acirc;u hơn v&agrave; trong c&ugrave;ng l&agrave; lớp thủy tinh gi&uacute;p tr&aacute;nh g&acirc;y m&ugrave;i kh&oacute; chịu sau khi tẩy rửa. B&igrave;nh c&oacute; d&aacute;ng h&igrave;nh trụ d&agrave;i gi&uacute;p giảm bề mặt tiếp x&uacute;c của kh&ocirc;ng kh&iacute; với nước được đựng trong b&igrave;nh, nắp b&igrave;nh thường được thiết kế với 2 tầng nắp k&iacute;n, tầng b&ecirc;n trong l&agrave; cao su gi&uacute;p giữ chặt được phần miệng b&igrave;nh l&agrave;m hạn chế kh&ocirc;ng kh&iacute; tho&aacute;t ra ngo&agrave;i.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Ưu nhược điểm của b&igrave;nh giữ nhiệt nhựa thủy tinh l&agrave; g&igrave;?</strong></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Về ưu điểm: B&igrave;nh giữ nhiệt hiện nay c&oacute; rất nhiều kiểu d&aacute;ng mẫu m&atilde; đa dạng cho kh&aacute;ch h&agrave;ng lựa chọn. V&igrave; c&oacute; vỏ l&agrave;m bằng nhựa n&ecirc;n sản phẩm &iacute;t bị nứt hay vỡ khi va đập. Kh&ocirc;ng chỉ giữ nhiệt cho nước n&oacute;ng, b&igrave;nh giữ nhiệt cũng c&oacute; thể bảo quản được nước lạnh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Về nhược điểm: Nếu kh&ocirc;ng biết c&aacute;ch bảo quản th&igrave; khả năng giữ nhiệt của sản phẩm c&oacute; thể bị giảm, sản phẩm cũng c&oacute; thể bị tr&oacute;c sơn b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Kh&ocirc;ng hề dễ bị vỡ như mọi người thường nghĩ về b&igrave;nh c&oacute; chất liệu thủy tinh, sản phẩm c&oacute; độ bền cao v&agrave; tuyệt đối an to&agrave;n cho sức khỏe người sử dụng. C&ocirc;ng ty H2D của ch&uacute;ng t&ocirc;i tự tin l&agrave; một trong những đơn vị h&agrave;ng đầu cung cấp sản phẩm b&igrave;nh giữ nhiệt nhựa thủy tinh n&agrave;y. Để biết th&ecirc;m th&ocirc;ng tin chi tiết về sản phẩm, vui l&ograve;ng truy cập website <a href=\"http://h2d.thietkewebsitegbvn.com/\">http://h2d.thietkewebsitegbvn.com/</a> để được tư vấn trực tiếp.</p>\r\n', '', '', '', '', '', 0, 'en-binh-giu-nhiet-nhua-thuy-tinh-va-nhung-dieu-ban-chua-biet', 'Bình giữ nhiệt nhựa thủy tinh và những điều bạn chưa biết.', 'Bình giữ nhiệt nhựa thủy tinh là một trong những vật dụng mà dân văn phòng và những sinh viên đi học cả ngày tại trường ưa chuộng nhờ sự tiện lợi cũng như hiệu quả mà nó đem lại.\r\n', 'bình giữ nhiệt nhựa thủy tinh'),
(293, 147, 'vn', 'Bình nước nhựa thể thao - Món quà tặng độc đáo hiện nay', 'Bình nước nhựa thể thao tích hợp kiểu dáng hiện đại, đơn giản thích hợp sử dụng cho những người năng động, ưa thích việc vận động ngoài trời nhiều. \r\n', '', '', '', '', '', '', 0, 'binh-nuoc-nhua-the-thao-mon-qua-tang-doc-dao-hien-nay', 'Bình nước nhựa thể thao - Món quà tặng độc đáo hiện nay', 'Bình nước nhựa thể thao tích hợp kiểu dáng hiện đại, đơn giản thích hợp sử dụng cho những người năng động, ưa thích việc vận động ngoài trời nhiều. ', 'Bình nước nhựa thể thao'),
(294, 147, 'en', 'english version Bình nước nhựa thể thao - Món quà tặng độc đáo hiện nay', 'english version Bình nước nhựa thể thao tích hợp kiểu dáng hiện đại, đơn giản thích hợp sử dụng cho những người năng động, ưa thích việc vận động ngoài trời nhiều. \r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><strong>B&igrave;nh nước nhựa thể thao t&iacute;ch hợp kiểu d&aacute;ng hiện đại, đơn giản th&iacute;ch hợp sử dụng cho những người năng động, ưa th&iacute;ch việc vận động ngo&agrave;i trời nhiều. </strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">C&aacute;c sản phẩm qu&agrave; tặng phổ biến tr&ecirc;n thị trường đang ng&agrave;y c&agrave;ng c&oacute; xu hướng đa dạng về mẫu m&atilde;, kiểu d&aacute;ng v&agrave; mục đ&iacute;ch sử dụng hơn. Điển h&igrave;nh trong số đ&oacute; chsnh l&agrave; sản phẩm b&igrave;nh nước nhựa thể thao.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">B&igrave;nh nước nhựa thể thao c&oacute; kiểu d&aacute;ng rất năng động, thu h&uacute;t c&oacute; thể in logo l&ecirc;n sản phẩm rất th&iacute;ch hợp để l&agrave;m qu&agrave; tặng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"339\" src=\"https://lh6.googleusercontent.com/-NQRpWCd1vRtdljv1j5oZotoUHMpqA8SnEc28goY77Zn7UrzDZItVIjWpSKTdVy-CcauCd1mvBuFHfbpzz4_BM_HM7ndygS7cvnpz2wtCzz0PG4IBy1Ut8zz3J3dbiXx2lNqgnm9v5TO64BA0w\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>B&igrave;nh thể thao l&agrave; một trong những loại qu&agrave; tặng kh&aacute; độc đ&aacute;o hiện nay</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Mẫu m&atilde; của sản phẩm b&igrave;nh nước nhựa thể thao c&oacute; điểm g&igrave; đặc biệt?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Giống như c&aacute;i t&ecirc;n của m&igrave;nh, sản phẩm b&igrave;nh nước nhựa thể thao được ứng dụng đặc biệt đối với những người ưa th&iacute;ch c&aacute;c bộ m&ocirc;n vận động. Đồng thời, kiểu d&aacute;ng của b&igrave;nh cũng rất đơn giản v&agrave; tiện dụng. Với m&agrave;u sắc tương đối sang trọng c&ugrave;ng phần nắp v&agrave; d&acirc;y đai để dễ d&agrave;ng mang theo.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">B&igrave;nh c&oacute; mẫu m&atilde; tương đối giống với b&igrave;nh nước th&ocirc;ng thường, những được cải tiến để vượt trội hơn về mặt dung t&iacute;ch v&agrave; khả năng sử dụng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Sản phẩm b&igrave;nh nước nhựa thể thao c&oacute; th&iacute;ch hợp để trở th&agrave;nh qu&agrave; tặng kh&ocirc;ng?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">M&oacute;n qu&agrave; b&igrave;nh nước nhựa thể thao l&agrave; sự lựa chọn h&agrave;ng đầu của những doanh nghiệp hoạt động trong c&aacute;c lĩnh vực kh&aacute;c nhau tr&ecirc;n thị trường với ưu điểm ở mẫu m&atilde;, t&iacute;nh ứng dụng v&agrave; hiệu quả sử dụng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">C&aacute;c đơn vị cũng dễ d&agrave;ng hơn trong việc in logo sản phẩm sao cho ph&ugrave; hợp nhất với nhu cầu tặng qu&agrave; v&agrave; quảng b&aacute; thương hiệu của đơn vị m&igrave;nh nhiều hơn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Với những ưu điểm tr&ecirc;n, sản phẩm b&igrave;nh nước nhựa thể thao hứa hẹn sẽ trở th&agrave;nh sự lựa chọn h&agrave;ng đầu d&agrave;nh cho kh&aacute;ch h&agrave;ng. Mọi th&ocirc;ng tin chi tiết về sản phẩm, vui l&ograve;ng li&ecirc;n hệ với <a href=\"http://h2d.thietkewebsitegbvn.com/\">http://h2d.thietkewebsitegbvn.com/</a> để nhận được sự tư vấn kỹ c&agrave;ng v&agrave; chi tiết hơn nữa.</p>\r\n', '', '', '', '', '', 0, 'en-binh-nuoc-nhua-the-thao-mon-qua-tang-doc-dao-hien-nay', 'Bình nước nhựa thể thao - Món quà tặng độc đáo hiện nay', 'Bình nước nhựa thể thao tích hợp kiểu dáng hiện đại, đơn giản thích hợp sử dụng cho những người năng động, ưa thích việc vận động ngoài trời nhiều. ', 'Bình nước nhựa thể thao'),
(295, 148, 'vn', 'Bình nước nhựa- sản phẩm phù hợp làm quà tặng cho các đơn vị , quà tặng người thân bạn bè', 'Những món quà tặng đầy ý nghĩa như bình nước nhựa, bình nước giữ nhiệt,… hiện đang được rất nhiều đơn vị ưa chuộng để tặng cho những khách hàng, bạn bè và người thân của mình.', '', '', '', '', '', '', 0, 'binh-nuoc-nhua-san-pham-phu-hop-lam-qua-tang-cho-cac-don-vi-qua-tang-nguoi-than-ban-be', 'Bình nước nhựa- sản phẩm phù hợp làm quà tặng cho các đơn vị , quà tặng người thân bạn bè', 'Những món quà tặng đầy ý nghĩa như bình nước nhựa, bình nước giữ nhiệt,… hiện đang được rất nhiều đơn vị ưa chuộng để tặng cho những khách hàng, bạn bè và người thân của mình.', 'Bình nước nhựa'),
(296, 148, 'en', 'english version Bình nước nhựa- sản phẩm phù hợp làm quà tặng cho các đơn vị , quà tặng người thân bạn bè', 'english version Những món quà tặng đầy ý nghĩa như bình nước nhựa, bình nước giữ nhiệt,… hiện đang được rất nhiều đơn vị ưa chuộng để tặng cho những khách hàng, bạn bè và người thân của mình.', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><strong>Những m&oacute;n qu&agrave; tặng đầy &yacute; nghĩa như b&igrave;nh nước nhựa, b&igrave;nh nước giữ nhiệt,&hellip; hiện đang được rất nhiều đơn vị ưa chuộng để tặng cho những kh&aacute;ch h&agrave;ng, bạn b&egrave; v&agrave; người th&acirc;n của m&igrave;nh.</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để tri &acirc;n kh&aacute;ch h&agrave;ng, c&aacute;c đối t&aacute;c của m&igrave;nh, nhiều đơn vị thường ưu ti&ecirc;n sử dụng những loại qu&agrave; tặng &yacute; nghĩa, c&oacute; t&iacute;nh thực tiễn cao lại c&oacute; chi ph&iacute; hợp l&yacute;. Điển h&igrave;nh trong số những m&oacute;n qu&agrave; tặng đ&aacute;p ứng được y&ecirc;u cầu đ&oacute; ch&iacute;nh l&agrave; b&igrave;nh nước nhựa.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">B&igrave;nh nước nhựa c&oacute; bề mặt diện t&iacute;ch rộng, dễ d&agrave;ng in logo, lại được nhiều người ưa chuộng sử dụng n&ecirc;n trở th&agrave;nh m&oacute;n qu&agrave; phổ biến v&agrave; nhận được nhiều sự ủng hộ từ ph&iacute;a những đơn vị tr&ecirc;n thị trường hiện nay.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"486\" src=\"https://lh5.googleusercontent.com/12NgSocyc8NF8L1nj46hWZR8r-KqFaii46Cujb8UAE4Q_sd-0TKydgEi48lNP8oHTVbHfHhhJzj5tQqnnUlgwvmT2_0pfwhkxbXEnVhOny369TYrYPOwED3UGIamkIzobCJE5yAgqQJ5850abQ\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>B&igrave;nh nước nhựa l&agrave; một trong những sản phẩm được ưa chuộng h&agrave;ng đầu tr&ecirc;n thị trường hiện nay</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\">&nbsp;</h2>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>B&igrave;nh nước nhựa c&oacute; mẫu m&atilde; đa dạng, nhiều m&agrave;u sắc, k&iacute;ch cỡ, chất liệu&nbsp;:</strong></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Trong số c&aacute;c m&oacute;n qu&agrave; tặng phổ biến hiện nay, b&igrave;nh nước nhựa l&agrave; m&oacute;n qu&agrave; c&oacute; nhiều ưu thế ở mẫu m&atilde;. Bạn c&oacute; thể lựa chọn mọi loại b&igrave;nh nước với những đặc điểm kh&aacute;c nhau trong m&agrave;u sắc, chất liệu, k&iacute;ch cở, đồng thời cũng c&oacute; thể dễ d&agrave;ng in Logo thương hiệu l&ecirc;n đ&oacute; để l&agrave;m qu&agrave; tặng.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\">&nbsp;</h2>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>V&igrave; sao b&igrave;nh nước nhựa trở th&agrave;nh sự lựa chọn h&agrave;ng đầu cho những đơn vị kinh doanh&nbsp;?</strong></span></h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\" style=\"text-align:justify\">B&igrave;nh nước nhựa c&oacute; thể gi&uacute;p c&aacute;c đơn vị quảng b&aacute; được thương hiệu h&agrave;ng đầu của m&igrave;nh tr&ecirc;n thị trường với Logo được in tr&ecirc;n b&igrave;nh c&ugrave;ng t&iacute;nh ứng dụng cao trong thực tiễn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\" style=\"text-align:justify\">Chi ph&iacute; sử dụng qu&agrave; tặng b&igrave;nh nước nhựa l&agrave; rất hợp l&yacute;, những loại b&igrave;nh nước nhựa c&oacute; gi&aacute; th&agrave;nh kh&aacute; ổn so với nhiều loại qu&agrave; tặng kh&aacute;c tr&ecirc;n thị trường n&ecirc;n rất được ưa chuộng sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Địa chỉ cung cấp sản phẩm qu&agrave; tặng b&igrave;nh nước nhựa chất lượng nhất&nbsp;:</strong></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bạn đọc nếu c&oacute; nhu cầu muốn sử dụng b&igrave;nh nước nhựa để l&agrave;m qu&agrave; tặng độc đ&aacute;o v&agrave; &yacute; nghĩa, đừng qu&ecirc;n li&ecirc;n hệ ngay với <a href=\"http://h2d.thietkewebsitegbvn.com/\">http://h2d.thietkewebsitegbvn.com/</a> để tham khảo sản phẩm ph&ugrave; hợp v&agrave; được tư vấn chi tiết.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-binh-nuoc-nhua-san-pham-phu-hop-lam-qua-tang-cho-cac-don-vi-qua-tang-nguoi-than-ban-be', 'Bình nước nhựa- sản phẩm phù hợp làm quà tặng cho các đơn vị , quà tặng người thân bạn bè', 'Những món quà tặng đầy ý nghĩa như bình nước nhựa, bình nước giữ nhiệt,… hiện đang được rất nhiều đơn vị ưa chuộng để tặng cho những khách hàng, bạn bè và người thân của mình.', 'Bình nước nhựa'),
(297, 149, 'vn', 'CĐ các KCN tỉnh Vĩnh Phúc: Ra mắt CĐ Cty CP Tập đoàn Vina Top', 'Đang cập nhật', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'cd-cac-kcn-tinh-vinh-phuc-ra-mat-cd-cty-cp-tap-doan-vina-top', 'CĐ các KCN tỉnh Vĩnh Phúc: Ra mắt CĐ Cty CP Tập đoàn Vina Top', '', ''),
(298, 149, 'en', 'english version CĐ các KCN tỉnh Vĩnh Phúc: Ra mắt CĐ Cty CP Tập đoàn Vina Top', 'english version Đang cập nhật', 'english version <p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'en-cd-cac-kcn-tinh-vinh-phuc-ra-mat-cd-cty-cp-tap-doan-vina-top', 'CĐ các KCN tỉnh Vĩnh Phúc: Ra mắt CĐ Cty CP Tập đoàn Vina Top', '', ''),
(299, 150, 'vn', 'Lễ công bố sản phẩm mới gạch trang trí tập đoàn Vinatop 2017', 'Đang cập nhật', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'le-cong-bo-san-pham-moi-gach-trang-tri-tap-doan-vinatop-2017', 'Lễ công bố sản phẩm mới gạch trang trí tập đoàn Vinatop 2017', '', ''),
(300, 150, 'en', 'english version Lễ công bố sản phẩm mới gạch trang trí tập đoàn Vinatop 2017', 'english version Đang cập nhật', 'english version <p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'en-le-cong-bo-san-pham-moi-gach-trang-tri-tap-doan-vinatop-2017', 'Lễ công bố sản phẩm mới gạch trang trí tập đoàn Vinatop 2017', '', ''),
(301, 151, 'vn', 'Vật tư, thiết bị phòng thí nghiệm sản xuất gạch ốp lát', 'đang cập nhật', '<p>đang cập nhật</p>\r\n', '', '', '', '', '', 1, 'vat-tu-thiet-bi-phong-thi-nghiem-san-xuat-gach-op-lat', 'Vật tư, thiết bị phòng thí nghiệm sản xuất gạch ốp lát', '', ''),
(302, 151, 'en', 'english version Vật tư, thiết bị phòng thí nghiệm sản xuất gạch ốp lát', 'english version đang cập nhật', '<p>english version</p>\r\n\r\n<p>đang cập nhật</p>\r\n', '', '', '', '', '', 1, 'en-vat-tu-thiet-bi-phong-thi-nghiem-san-xuat-gach-op-lat', 'Vật tư, thiết bị phòng thí nghiệm sản xuất gạch ốp lát', '', ''),
(303, 145, 'cn', 'Bộ ấm trà - đồ dùng không thể thiếu trong mỗi gia đình Việt. cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-bo-am-tra-do-dung-khong-the-thieu-trong-moi-gia-dinh-viet', 'Bộ ấm trà - đồ dùng không thể thiếu trong mỗi gia đình Việt. cn', NULL, NULL),
(304, 146, 'cn', 'Bình giữ nhiệt nhựa thủy tinh và những điều bạn chưa biết. cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-binh-giu-nhiet-nhua-thuy-tinh-va-nhung-dieu-ban-chua-biet', 'Bình giữ nhiệt nhựa thủy tinh và những điều bạn chưa biết. cn', NULL, NULL),
(305, 147, 'cn', 'Bình nước nhựa thể thao - Món quà tặng độc đáo hiện nay cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-binh-nuoc-nhua-the-thao-mon-qua-tang-doc-dao-hien-nay', 'Bình nước nhựa thể thao - Món quà tặng độc đáo hiện nay cn', NULL, NULL),
(306, 148, 'cn', 'Bình nước nhựa- sản phẩm phù hợp làm quà tặng cho các đơn vị , quà tặng người thân bạn bè cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-binh-nuoc-nhua-san-pham-phu-hop-lam-qua-tang-cho-cac-don-vi-qua-tang-nguoi-than-ban-be', 'Bình nước nhựa- sản phẩm phù hợp làm quà tặng cho các đơn vị , quà tặng người thân bạn bè cn', NULL, NULL),
(307, 149, 'cn', 'CĐ các KCN tỉnh Vĩnh Phúc: Ra mắt CĐ Cty CP Tập đoàn Vina Top cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-cd-cac-kcn-tinh-vinh-phuc-ra-mat-cd-cty-cp-tap-doan-vina-top', 'CĐ các KCN tỉnh Vĩnh Phúc: Ra mắt CĐ Cty CP Tập đoàn Vina Top cn', NULL, NULL),
(308, 150, 'cn', 'Lễ công bố sản phẩm mới gạch trang trí tập đoàn Vinatop 2017 cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-le-cong-bo-san-pham-moi-gach-trang-tri-tap-doan-vinatop-2017', 'Lễ công bố sản phẩm mới gạch trang trí tập đoàn Vinatop 2017 cn', NULL, NULL),
(309, 151, 'cn', 'Vật tư, thiết bị phòng thí nghiệm sản xuất gạch ốp lát cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-vat-tu-thiet-bi-phong-thi-nghiem-san-xuat-gach-op-lat', 'Vật tư, thiết bị phòng thí nghiệm sản xuất gạch ốp lát cn', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_ban_tin`
--

INSERT INTO `nhan_ban_tin` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 13:54:44'),
(2, 'donguyenthinh30031989@gmail.com', '2017-12-23 01:12:33'),
(3, 'truongquangtuan3110@gmail.com', '2018-01-03 12:04:35'),
(4, 'truongquangtuan3110@gmail.com', '2018-01-03 12:12:05'),
(5, 'donguyenthinh30031989@gmail.com', '2018-01-04 07:40:46'),
(6, 'truongquangtuan3110@gmail.com', '2018-01-04 09:02:07'),
(7, 'donguyenthinh30031989@gmail.com', '2018-01-04 09:31:40'),
(8, 'donguyenthinh30031989@gmail.com', '2018-01-04 10:17:09'),
(9, 'viethung95cute@gmail.com', '2018-03-27 07:55:42'),
(10, 'viethung95cute@gmail.com', '2018-03-28 05:08:41'),
(11, 'viethung95cute@gmail.com', '2018-03-28 05:12:29'),
(12, 'viethung95cute@gmail.com', '2018-03-28 05:13:40'),
(13, 'viethung95cute@gmail.com', '2018-03-28 05:45:42'),
(14, 'viethung95cute@gmail.com', '2018-03-28 05:48:44'),
(15, 'hung71483@gmail.com', '2018-03-28 05:51:51'),
(16, 'hung71483@gmail.com', '2018-03-28 05:54:44'),
(17, 'hung71483@gmail.com', '2018-03-28 06:01:14'),
(18, 'hung71483@gmail.com', '2018-03-28 06:03:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_tai_lieu`
--

INSERT INTO `nhan_tai_lieu` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 12:33:22'),
(2, 'manh@gmail.com', '2017-12-02 11:58:58'),
(3, 'ngockhanh260614@gmail.com', '2017-12-03 04:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(56, 'Về chúng tôi', '', '<p>C&ocirc;ng ty cổ phần Tập Đo&agrave;n&nbsp;<strong>VINA TOP</strong>&nbsp;tiền th&acirc;n l&agrave; C&ocirc;ng ty Cổ phần&nbsp;<strong>VINA TOP</strong>&nbsp;được th&agrave;nh lập v&agrave;o th&aacute;ng 7 năm 2009, l&agrave; một doanh nghiệp 100% vốn đầu tư nước ngo&agrave;i.</p>\r\n\r\n<p>Với diện t&iacute;ch đất 3,4ha v&agrave; m&aacute;y m&oacute;c hiện đại c&ocirc;ng ty đang tạo n&ecirc;n vị thế h&agrave;ng đầu trong ng&agrave;nh c&ocirc;ng nghiệp sản xuất trang thiết bị gạch men v&agrave; gạch men. Qua 10 năm ph&aacute;t triển c&ocirc;ng ty&nbsp;<strong>VINATOP</strong>&nbsp;tự tin mang đến những sản phẩm tốt nhất cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng l&agrave; động lực lớn nhất để ch&uacute;ng t&ocirc;i ph&aacute;t triển, s&aacute;ng tạo v&agrave; l&agrave; l&yacute; do để c&ocirc;ng ty trường tồn. C&ugrave;ng với sự nỗ lực v&agrave; kh&aacute;t vọng kh&ocirc;ng ngừng đổi mới, tự ho&agrave;n thiện m&igrave;nh&nbsp;<strong>VINATOP</strong>&nbsp;hy vọng sẽ nhận được sự đồng thuận v&agrave; hợp t&aacute;c l&acirc;u d&agrave;i của qu&yacute; vị.</p>\r\n', '', '2020-05-16 10:05:32', NULL, 1, '', '', '', '', '', '', 'Về chúng tôi', '', 've-chung-toi-1', 1),
(57, 'Bộ phận men màu', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:33', '2020-05-16 17:05:56', 1, '', '', '', '', '', '', 'Bộ phận men màu', '', 'bo-phan-men-mau', 1),
(58, 'Bộ phận thương mại', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:51', '2020-05-16 17:05:50', 1, '', '', '', '', '', '', 'Bộ phận thương mại', '', 'bo-phan-thuong-mai', 1),
(59, 'Bộ phận đá mài', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:06', '2020-05-16 17:05:45', 1, '', '', '', '', '', '', 'Bộ phận đá mài', '', 'bo-phan-da-mai', 1),
(60, 'Showroom', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:18', '2020-05-16 17:05:39', 1, '', '', '', '', '', '', 'Showroom', '', 'showroom', 1),
(61, 'Tập đoàn Vinatop', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:36', '2020-05-16 17:05:33', 1, '', '', '', '', '', '', 'Tập đoàn Vinatop', '', 'tap-doan-vinatop', 1),
(62, 'Bộ phận khuôn mẫu', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:55', '2020-05-16 17:05:27', 1, '', '', '', '', '', '', 'Bộ phận khuôn mẫu', '', 'bo-phan-khuon-mau', 1),
(63, 'Bộ phận gạch', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:26', '2020-05-16 17:05:20', 1, '', '', '', '', '', '', 'Bộ phận gạch', '', 'bo-phan-gach', 1),
(64, 'Bộ phận công trình', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:39', '2020-05-16 17:05:14', 1, '', '', '', '', '', '', 'Bộ phận công trình', '', 'bo-phan-cong-trinh', 1),
(65, 'Tuyển Dụng', '', '<p>Đang cập nhật</p>\r\n', NULL, '2020-05-16 16:05:48', '2020-05-16 16:05:19', 1, '', '', '', '', '', '', 'Tuyển Dụng', '', 'tuyen-dung', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(78, 56, 'vn', 'Về chúng tôi', '', '<p>C&ocirc;ng ty cổ phần Tập Đo&agrave;n&nbsp;<strong>VINA TOP</strong>&nbsp;tiền th&acirc;n l&agrave; C&ocirc;ng ty Cổ phần&nbsp;<strong>VINA TOP</strong>&nbsp;được th&agrave;nh lập v&agrave;o th&aacute;ng 7 năm 2009, l&agrave; một doanh nghiệp 100% vốn đầu tư nước ngo&agrave;i.</p>\r\n\r\n<p>Với diện t&iacute;ch đất 3,4ha v&agrave; m&aacute;y m&oacute;c hiện đại c&ocirc;ng ty đang tạo n&ecirc;n vị thế h&agrave;ng đầu trong ng&agrave;nh c&ocirc;ng nghiệp sản xuất trang thiết bị gạch men v&agrave; gạch men. Qua 10 năm ph&aacute;t triển c&ocirc;ng ty&nbsp;<strong>VINATOP</strong>&nbsp;tự tin mang đến những sản phẩm tốt nhất cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng l&agrave; động lực lớn nhất để ch&uacute;ng t&ocirc;i ph&aacute;t triển, s&aacute;ng tạo v&agrave; l&agrave; l&yacute; do để c&ocirc;ng ty trường tồn. C&ugrave;ng với sự nỗ lực v&agrave; kh&aacute;t vọng kh&ocirc;ng ngừng đổi mới, tự ho&agrave;n thiện m&igrave;nh&nbsp;<strong>VINATOP</strong>&nbsp;hy vọng sẽ nhận được sự đồng thuận v&agrave; hợp t&aacute;c l&acirc;u d&agrave;i của qu&yacute; vị.</p>\r\n', '', '', '', '', '', 0, 've-chung-toi', 'Về chúng tôi', '', ''),
(79, 56, 'en', 'english version Về chúng tôi', 'english version ', 'english version <p>C&ocirc;ng ty cổ phần Tập Đo&agrave;n&nbsp;<strong>VINA TOP</strong>&nbsp;tiền th&acirc;n l&agrave; C&ocirc;ng ty Cổ phần&nbsp;<strong>VINA TOP</strong>&nbsp;được th&agrave;nh lập v&agrave;o th&aacute;ng 7 năm 2009, l&agrave; một doanh nghiệp 100% vốn đầu tư nước ngo&agrave;i.</p>\r\n\r\n<p>Với diện t&iacute;ch đất 3,4ha v&agrave; m&aacute;y m&oacute;c hiện đại c&ocirc;ng ty đang tạo n&ecirc;n vị thế h&agrave;ng đầu trong ng&agrave;nh c&ocirc;ng nghiệp sản xuất trang thiết bị gạch men v&agrave; gạch men. Qua 10 năm ph&aacute;t triển c&ocirc;ng ty&nbsp;<strong>VINATOP</strong>&nbsp;tự tin mang đến những sản phẩm tốt nhất cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng l&agrave; động lực lớn nhất để ch&uacute;ng t&ocirc;i ph&aacute;t triển, s&aacute;ng tạo v&agrave; l&agrave; l&yacute; do để c&ocirc;ng ty trường tồn. C&ugrave;ng với sự nỗ lực v&agrave; kh&aacute;t vọng kh&ocirc;ng ngừng đổi mới, tự ho&agrave;n thiện m&igrave;nh&nbsp;<strong>VINATOP</strong>&nbsp;hy vọng sẽ nhận được sự đồng thuận v&agrave; hợp t&aacute;c l&acirc;u d&agrave;i của qu&yacute; vị.</p>\r\n', '', '', '', '', '', 0, 'en-ve-chung-toi', 'Về chúng tôi', '', ''),
(80, 56, 'cn', 'china version Về chúng tôi', 'china version ', 'china version <p>C&ocirc;ng ty cổ phần Tập Đo&agrave;n&nbsp;<strong>VINA TOP</strong>&nbsp;tiền th&acirc;n l&agrave; C&ocirc;ng ty Cổ phần&nbsp;<strong>VINA TOP</strong>&nbsp;được th&agrave;nh lập v&agrave;o th&aacute;ng 7 năm 2009, l&agrave; một doanh nghiệp 100% vốn đầu tư nước ngo&agrave;i.</p>\r\n\r\n<p>Với diện t&iacute;ch đất 3,4ha v&agrave; m&aacute;y m&oacute;c hiện đại c&ocirc;ng ty đang tạo n&ecirc;n vị thế h&agrave;ng đầu trong ng&agrave;nh c&ocirc;ng nghiệp sản xuất trang thiết bị gạch men v&agrave; gạch men. Qua 10 năm ph&aacute;t triển c&ocirc;ng ty&nbsp;<strong>VINATOP</strong>&nbsp;tự tin mang đến những sản phẩm tốt nhất cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng l&agrave; động lực lớn nhất để ch&uacute;ng t&ocirc;i ph&aacute;t triển, s&aacute;ng tạo v&agrave; l&agrave; l&yacute; do để c&ocirc;ng ty trường tồn. C&ugrave;ng với sự nỗ lực v&agrave; kh&aacute;t vọng kh&ocirc;ng ngừng đổi mới, tự ho&agrave;n thiện m&igrave;nh&nbsp;<strong>VINATOP</strong>&nbsp;hy vọng sẽ nhận được sự đồng thuận v&agrave; hợp t&aacute;c l&acirc;u d&agrave;i của qu&yacute; vị.</p>\r\n', '', '', '', '', '', 0, 'cn-ve-chung-toi', 'Về chúng tôi', '', ''),
(81, 57, 'vn', 'Bộ phận men màu', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'bo-phan-men-mau', 'Bộ phận men màu', '', ''),
(82, 57, 'en', 'english version Bộ phận men màu', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-phan-men-mau', 'Bộ phận men màu', '', ''),
(83, 57, 'cn', 'china version Bộ phận men màu', 'china version ', 'china version ', '', '', '', '', '', 0, 'cn-bo-phan-men-mau', 'Bộ phận men màu', '', ''),
(84, 58, 'vn', 'Bộ phận thương mại', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'bo-phan-thuong-mai', 'Bộ phận thương mại', '', ''),
(85, 58, 'en', 'english version Bộ phận thương mại', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-phan-thuong-mai', 'Bộ phận thương mại', '', ''),
(86, 58, 'cn', 'china version Bộ phận thương mại', 'china version ', 'china version ', '', '', '', '', '', 0, 'cn-bo-phan-thuong-mai', 'Bộ phận thương mại', '', ''),
(87, 59, 'vn', 'Bộ phận đá mài', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'bo-phan-da-mai', 'Bộ phận đá mài', '', ''),
(88, 59, 'en', 'english version Bộ phận đá mài', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-phan-da-mai', 'Bộ phận đá mài', '', ''),
(89, 59, 'cn', 'china version Bộ phận đá mài', 'china version ', 'china version ', '', '', '', '', '', 0, 'cn-bo-phan-da-mai', 'Bộ phận đá mài', '', ''),
(90, 60, 'vn', 'Showroom', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'showroom', 'Showroom', '', ''),
(91, 60, 'en', 'english version Showroom', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-showroom', 'Showroom', '', ''),
(92, 60, 'cn', 'china version Showroom', 'china version ', 'china version ', '', '', '', '', '', 0, 'cn-showroom', 'Showroom', '', ''),
(93, 61, 'vn', 'Tập đoàn Vinatop', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'tap-doan-vinatop', 'Tập đoàn Vinatop', '', ''),
(94, 61, 'en', 'english version Tập đoàn Vinatop', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tap-doan-vinatop', 'Tập đoàn Vinatop', '', ''),
(95, 61, 'cn', 'china version Tập đoàn Vinatop', 'china version ', 'china version ', '', '', '', '', '', 0, 'cn-tap-doan-vinatop', 'Tập đoàn Vinatop', '', ''),
(96, 62, 'vn', 'Bộ phận khuôn mẫu', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'bo-phan-khuon-mau', 'Bộ phận khuôn mẫu', '', ''),
(97, 62, 'en', 'english version Bộ phận khuôn mẫu', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-phan-khuon-mau', 'Bộ phận khuôn mẫu', '', ''),
(98, 62, 'cn', 'china version Bộ phận khuôn mẫu', 'china version ', 'china version ', '', '', '', '', '', 0, 'cn-bo-phan-khuon-mau', 'Bộ phận khuôn mẫu', '', ''),
(99, 63, 'vn', 'Bộ phận gạch', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'bo-phan-gach', 'Bộ phận gạch', '', ''),
(100, 63, 'en', 'english version Bộ phận gạch', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-phan-gach', 'Bộ phận gạch', '', ''),
(101, 63, 'cn', 'china version Bộ phận gạch', 'china version ', 'china version ', '', '', '', '', '', 0, 'cn-bo-phan-gach', 'Bộ phận gạch', '', ''),
(102, 64, 'vn', 'Bộ phận công trình', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'bo-phan-cong-trinh', 'Bộ phận công trình', '', ''),
(103, 64, 'en', 'english version Bộ phận công trình', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-phan-cong-trinh', 'Bộ phận công trình', '', ''),
(104, 64, 'cn', 'china version Bộ phận công trình', 'china version ', 'china version ', '', '', '', '', '', 0, 'cn-bo-phan-cong-trinh', 'Bộ phận công trình', '', ''),
(105, 65, 'vn', 'Tuyển Dụng', '', '<p>Đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'tuyen-dung', 'Tuyển Dụng', '', ''),
(106, 65, 'en', 'english version Tuyển Dụng', 'english version ', 'english version <p>Bảng gi&aacute; dịch thuật c&ocirc;ng chứng Gi&aacute; tốt, chất lượng cao, dịch ngay\\r\\nHơn 8000 CTV Dịch thuật &middot; Hơn 10 năm kinh nghiệm &middot; 100% kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng&#39;, &#39;</p>\r\n\r\n<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n\\r\\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n\\r\\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n\\r\\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n\\r\\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n\\r\\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n\\r\\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<ul>\r\n	<li>\\r\\n</li>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>\\r\\n</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>\\r\\n</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>\\r\\n</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>\\r\\n</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>\\r\\n</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>\\r\\n</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n	<li>\\r\\n</li>\r\n</ul>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"\\\" title=\"\\&quot;Dịch\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"\\\" title=\"\\&quot;Công\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p><img alt=\"\\&quot;\\&quot;\" height=\"\\&quot;800\\&quot;\" src=\"\\&quot;/image/images/55e7557453f13-sierra-fig2.jpg\\&quot;\" width=\"\\&quot;1600\\&quot;\" /></p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'en-tuyen-dung', 'Tuyển Dụng', '', ''),
(107, 65, 'cn', 'china version Tuyển Dụng', 'china version ', 'china version <p>Bảng gi&aacute; dịch thuật c&ocirc;ng chứng Gi&aacute; tốt, chất lượng cao, dịch ngay\\r\\nHơn 8000 CTV Dịch thuật &middot; Hơn 10 năm kinh nghiệm &middot; 100% kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng&#39;, &#39;</p>\r\n\r\n<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n\\r\\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n\\r\\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n\\r\\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n\\r\\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n\\r\\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n\\r\\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<ul>\r\n	<li>\\r\\n</li>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>\\r\\n</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>\\r\\n</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>\\r\\n</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>\\r\\n</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>\\r\\n</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>\\r\\n</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n	<li>\\r\\n</li>\r\n</ul>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"\\\" title=\"\\&quot;Dịch\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"\\\" title=\"\\&quot;Công\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p><img alt=\"\\&quot;\\&quot;\" height=\"\\&quot;800\\&quot;\" src=\"\\&quot;/image/images/55e7557453f13-sierra-fig2.jpg\\&quot;\" width=\"\\&quot;1600\\&quot;\" /></p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>\\r\\n\\r\\n</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'cn-tuyen-dung', 'Tuyển Dụng', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_favorite` int(11) NOT NULL,
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`) VALUES
(261, 'Khuôn chày cái hoa văn A95', '', '', '', '', '', '', 0, 0, 0, 'AM-365.jpg', '[]', '2020-04-11 15:04:58', '2020-04-22 16:04:46', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Khuôn chày cái hoa văn A95', '', 'khuon-chay-cai-hoa-van-a95', '', 1, '', '', '', NULL, NULL, '232,232'),
(262, 'Máy đo độ giãn men', '', '', '', '', '', '', 0, 0, 0, 'May-do-do-gian-men.jpg', '[]', '2020-04-11 15:04:11', '2020-04-22 16:04:03', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Máy đo độ giãn men', '', 'may-do-do-gian-men', '', 1, '', '', '', NULL, NULL, '231,231'),
(263, 'Gạch cao nhôm', '', '', '', '', '', '', 0, 0, 0, 'GẠCH CAO NHÔM.jpg', '[]', '2020-04-11 15:04:31', '2020-04-22 16:04:14', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Gạch cao nhôm', '', 'gach-cao-nhom', '', 1, '', '', '', NULL, NULL, '230,230'),
(264, 'Bi cao nhôm', '', '', '', '', '', '', 0, 0, 0, 'BI CAO NHÔM.jpg', '[]', '2020-04-22 16:04:52', NULL, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Bi cao nhôm', '', 'bi-cao-nhom', '', 1, '', '', '', NULL, NULL, '230,230'),
(265, 'Xe nâng điện', '', '', '', '', '', '', 0, 0, 0, 'Xe-nang-dien.jpg', '[\"{\\\"image\\\":\\\"Xe-nang-dien.jpg\\\"}\"]', '2020-04-22 16:04:50', '2020-05-08 10:05:33', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Xe nâng điện', '', 'xe-nang-dien', '', 1, '', '', '', NULL, NULL, '231,231'),
(266, 'Khuôn chày cái hoa văn A94', '', '', '', '', '', '', 123000, 0, 0, 'AM-344.jpg', '[]', '2020-04-22 16:04:17', '2020-05-04 14:05:05', 0, 0, 0, 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Khuôn chày cái hoa văn A94', '', 'khuon-chay-cai-hoa-van-a94', '', 1, '', '', '', NULL, NULL, '232,230,230');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `home`) VALUES
(230, 'Gạch trang trí', '', '', 0, 0, 'GẠCH CAO NHÔM.jpg', '2020-04-22 16:04:05', NULL, '', '', '', '', '', 1, 'Gạch trang trí', '', 'gach-trang-tri', '', 1, 0),
(231, 'Thiết bị vật tư', '', '', 0, 0, 'May-do-do-gian-men.jpg', '2020-04-22 16:04:38', NULL, '', '', '', '', '', 1, 'Thiết bị vật tư', '', 'thiet-bi-vat-tu', '', 1, 0),
(232, 'Khuôn chày', '', '', 0, 0, 'AM-344.jpg', '2020-04-22 16:04:11', NULL, '', '', '', '', '', 1, 'Khuôn chày', '', 'khuon-chay', '', 1, 0),
(233, 'Công trình', '', '', 0, 0, 'Bo-tong-khuon-gach-the.jpg', '2020-04-22 15:04:34', NULL, '', '', '', '', '', 1, 'Công trình', '', 'cong-trinh', '', 1, 0),
(234, 'Men màu', '', '', 0, 0, 'Dầu in truyền thống.png', '2020-04-22 16:04:17', NULL, '', '', '', '', '', 1, 'Men màu', '', 'men-mau', '', 1, 0),
(235, 'Sản phẩm đá mài', '', '', 0, 0, 'L140(T1).jpg', '2020-04-22 16:04:05', NULL, '', '', '', '', '', 1, 'Sản phẩm đá mài', '', 'san-pham-da-mai', '', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(445, 230, 'Gạch trang trí', 'vn', '', '', '', '', '', '', '', 1, 'gach-trang-tri', '', 'Gạch trang trí', ''),
(446, 230, 'Decorative bricks', 'en', '<p>english version</p>\r\n', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-gach-trang-tri', '', 'GẠCH TRANG TRÍ', ''),
(447, 231, 'Thiết bị vật tư', 'vn', '', '', '', '', '', '', '', 1, 'thiet-bi-vat-tu', '', 'Thiết bị vật tư', ''),
(448, 231, 'Equipment and supplies', 'en', '<p>english version</p>\r\n', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-khuon-mau-san-xuat-gach-men', '', 'KHUÔN MẪU SẢN XUẤT GẠCH MEN', ''),
(449, 232, 'Khuôn chày', 'vn', '', '', '', '', '', '', '', 1, 'khuon-chay', '', 'Khuôn chày', ''),
(450, 232, 'Mold baseball', 'en', '<p>english version</p>\r\n', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-san-pham-da-mai-1', '', 'SẢN PHẨM ĐÁ MÀI', ''),
(451, 233, 'Công trình', 'vn', '', '', '', '', '', '', '', 1, 'cong-trinh', '', 'Công trình', ''),
(452, 233, 'Construction', 'en', '<p>english version</p>\r\n', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-cong-trinh', '', 'Công trình', ''),
(453, 234, 'Men màu', 'vn', '', '', '', '', '', '', '', 1, 'men-mau', '', 'Men màu', ''),
(454, 234, 'Color glaze', 'en', '<p>english version</p>\r\n', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-men-mau', '', 'Men màu', ''),
(455, 235, 'Sản phẩm đá mài', 'vn', '', '', '', '', '', '', '', 1, 'san-pham-da-mai', '', 'Sản phẩm đá mài', ''),
(456, 235, 'Whetstone products', 'en', '<p>english version</p>\r\n', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-san-pham-da-mai', '', 'Sản phẩm đá mài', ''),
(457, 230, 'Gạch trang trí cn', 'cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-gach-trang-tri', NULL, 'Gạch trang trí cn', NULL),
(458, 231, 'Thiết bị vật tư cn', 'cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-thiet-bi-vat-tu', NULL, 'Thiết bị vật tư cn', NULL),
(459, 232, 'Khuôn chày cn', 'cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-khuon-chay', NULL, 'Khuôn chày cn', NULL),
(460, 233, 'Công trình cn', 'cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-cong-trinh', NULL, 'Công trình cn', NULL),
(461, 234, 'Men màu cn', 'cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-men-mau', NULL, 'Men màu cn', NULL),
(462, 235, 'Sản phẩm đá mài cn', 'cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-san-pham-da-mai', NULL, 'Sản phẩm đá mài cn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(509, 261, 'vn', 'Khuôn chày cái hoa văn A95', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'khuon-chay-cai-hoa-van-a95', 'Khuôn chày cái hoa văn A95', '', ''),
(510, 261, 'en', 'english version Sản phẩm 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-san-pham-1', 'Sản phẩm 1', '', ''),
(511, 262, 'vn', 'Máy đo độ giãn men', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'may-do-do-gian-men', 'Máy đo độ giãn men', '', ''),
(512, 262, 'en', 'english version Sản phẩm 2', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-san-pham-2', 'Sản phẩm 2', '', ''),
(513, 263, 'vn', 'Gạch cao nhôm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'gach-cao-nhom', 'Gạch cao nhôm', '', ''),
(514, 263, 'en', 'english version Sản phẩm 3', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-san-pham-3', 'Sản phẩm 3', '', ''),
(515, 264, 'vn', 'Bi cao nhôm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bi-cao-nhom', 'Bi cao nhôm', '', ''),
(516, 264, 'en', 'english version Bi cao nhôm', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bi-cao-nhom', 'Bi cao nhôm', '', ''),
(517, 265, 'vn', 'Xe nâng điện', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'xe-nang-dien', 'Xe nâng điện', '', ''),
(518, 265, 'en', 'english version Xe nâng điện', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-xe-nang-dien', 'Xe nâng điện', '', ''),
(519, 266, 'vn', 'Khuôn chày cái hoa văn A94', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'khuon-chay-cai-hoa-van-a94', 'Khuôn chày cái hoa văn A94', '', ''),
(520, 266, 'en', 'english version Khuôn chày cái hoa văn A94', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-khuon-chay-cai-hoa-van-a94', 'Khuôn chày cái hoa văn A94', '', ''),
(521, 261, 'cn', 'Khuôn chày cái hoa văn A95 cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-khuon-chay-cai-hoa-van-a95', 'Khuôn chày cái hoa văn A95 cn', NULL, NULL),
(522, 262, 'cn', 'Máy đo độ giãn men cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-may-do-do-gian-men', 'Máy đo độ giãn men cn', NULL, NULL),
(523, 263, 'cn', 'Gạch cao nhôm cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-gach-cao-nhom', 'Gạch cao nhôm cn', NULL, NULL),
(524, 264, 'cn', 'Bi cao nhôm cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-bi-cao-nhom', 'Bi cao nhôm cn', NULL, NULL),
(525, 265, 'cn', 'Xe nâng điện cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-xe-nang-dien', 'Xe nâng điện cn', NULL, NULL),
(526, 266, 'cn', 'Khuôn chày cái hoa văn A94 cn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'cn-khuon-chay-cai-hoa-van-a94', 'Khuôn chày cái hoa văn A94 cn', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(71, 'Mua hàng trực tuyến Trung Quốc', 'Thương mại quốc tế vinatop chúng tôi chuyên cung cấp dịch vụ mua hàng trực tuyến Trung Quốc hàng đầu như Alibaba , TaBao , Tmall… cho khách hàng từ Việt Nam muốn mua hàng.Đến với chúng tôi quý khách hàng hãy yên tâm về chất lượng dù bạn mua đơn hay mua bộ , dù bạn mua ít hay mua nhiều , chỉ cần bạn có yêu cầu chúng tôi sẽ làm bạn hài lòng.', '<p>Thương mại quốc tế vinatop ch&uacute;ng t&ocirc;i chuy&ecirc;n cung cấp dịch vụ mua h&agrave;ng trực tuyến Trung Quốc h&agrave;ng đầu như Alibaba , TaBao , Tmall&hellip; cho kh&aacute;ch h&agrave;ng từ Việt Nam muốn mua h&agrave;ng.Đến với ch&uacute;ng t&ocirc;i qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y y&ecirc;n t&acirc;m về chất lượng d&ugrave; bạn mua đơn hay mua bộ , d&ugrave; bạn mua &iacute;t hay mua nhiều , chỉ cần bạn c&oacute; y&ecirc;u cầu ch&uacute;ng t&ocirc;i sẽ l&agrave;m bạn h&agrave;i l&ograve;ng.</p>\r\n', 'alibaba2.jpg', '0', 6, '', '2020-04-13', '2020-04-22', 1, NULL, NULL, NULL, NULL, NULL, 'Mua hàng trực tuyến Trung Quốc', '', 'mua-hang-truc-tuyen-trung-quoc', '', 1),
(72, 'Vận chuyển hàng từ trung quốc về việt nam', 'Với đội ngũ chuyên nghiệp chúng tôi xin cung cấp cho bạn một dịch vụ vận chuyển hàng từ trung quốc về việt nam nhanh nhất, an toàn nhất và chi phí thấp nhât. Chúng tôi làm việc với phương châm “Lợi ích của khách hàng là giá trị của chúng tôi” chúng tôi luôn sẵn sàng phục vụ , đặt lợi ích của khách hàng làm tiêu chí hàng đầu. Được phục vụ khách hàng là niềm vinh hạnh của chúng tôi.', '<p>Với đội ngũ chuy&ecirc;n nghiệp ch&uacute;ng t&ocirc;i xin cung cấp cho bạn một dịch vụ vận chuyển h&agrave;ng từ trung quốc về việt nam nhanh nhất, an to&agrave;n nhất v&agrave; chi ph&iacute; thấp nh&acirc;t. Ch&uacute;ng t&ocirc;i l&agrave;m việc với phương ch&acirc;m &ldquo;Lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&agrave; gi&aacute; trị của ch&uacute;ng t&ocirc;i&rdquo; ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng phục vụ , đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&agrave;m ti&ecirc;u ch&iacute; h&agrave;ng đầu. Được phục vụ kh&aacute;ch h&agrave;ng l&agrave; niềm vinh hạnh của ch&uacute;ng t&ocirc;i.</p>\r\n', 'van chuyen 3.jpg', '0', 0, '', '2020-04-22', '2020-04-22', 1, NULL, NULL, NULL, NULL, NULL, 'Vận chuyển hàng từ trung quốc về việt nam', '', 'van-chuyen-hang-tu-trung-quoc-ve-viet-nam', '', 1),
(73, 'Tìm nguồn hàng Trung Quốc', 'Trong thời đại nền kinh tế mở cửa việc giao thương buôn bán chưa bao giờ chở nên dễ dàng đến thế.Chính vì lẽ đó Trung Quốc là một trong những nước mà chúng tôi có nhiều đối tác nhất.Với nhiều năm kinh nghiệm trong nghề chúng tôi sẽ giúp khách hàng có thể tìm kiếm được nguồn hàng tốt nhất, giá cả hợp lý nhất cho doanh nghiệp cũng như cá nhân.', '<p>Trong thời đại nền kinh tế mở cửa việc giao thương bu&ocirc;n b&aacute;n chưa bao giờ chở n&ecirc;n dễ d&agrave;ng đến thế.Ch&iacute;nh v&igrave; lẽ đ&oacute; Trung Quốc l&agrave; một trong những nước m&agrave; ch&uacute;ng t&ocirc;i c&oacute; nhiều đối t&aacute;c nhất.Với nhiều năm kinh nghiệm trong nghề ch&uacute;ng t&ocirc;i sẽ gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m kiếm được nguồn h&agrave;ng tốt nhất, gi&aacute; cả hợp l&yacute; nhất cho doanh nghiệp cũng như c&aacute; nh&acirc;n.</p>\r\n', 'Hội chợ caexpo 2.jpg', '0', 0, '', '2020-04-22', '2020-04-22', 1, NULL, NULL, NULL, NULL, NULL, 'Tìm nguồn hàng Trung Quốc', '', 'tim-nguon-hang-trung-quoc', '', 1),
(74, 'Dịch vụ chuyển hàng đi Trung Quốc', 'Thương mại quốc tế vinatop chúng tôi cung cấp dịch vụ vận chuyển hàng sang Trung Quốc cho những khách hàng có nhu cầu vận chuyển hàng hóa cũng như sản phẩm của mình sang Trung Quốc cho các đối tác của mình.Đến với chúng tôi bạn sẽ cảm thấy sự hài lòng và tin tưởng về dịch vụ.', '<p>Thương mại quốc tế vinatop ch&uacute;ng t&ocirc;i cung cấp dịch vụ vận chuyển h&agrave;ng sang Trung Quốc cho những kh&aacute;ch h&agrave;ng c&oacute; nhu cầu vận chuyển h&agrave;ng h&oacute;a cũng như sản phẩm của m&igrave;nh sang Trung Quốc cho c&aacute;c đối t&aacute;c của m&igrave;nh.Đến với ch&uacute;ng t&ocirc;i bạn sẽ cảm thấy sự h&agrave;i l&ograve;ng v&agrave; tin tưởng về dịch vụ.</p>\r\n', 'Untitled-1.jpg', '0', 0, '', '2020-04-22', '2020-04-22', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ chuyển hàng đi Trung Quốc', '', 'dich-vu-chuyen-hang-di-trung-quoc', '', 1),
(75, 'Foshan City Zhuo Dahao machinery Co., Ltd', 'Foshan City Zhuo Dahao machinery Co., Ltd từ một công ty nhỏ chuyên về máy móc công trình gốm sứ thành một công ty lớn,sản phẩm chủ yếu của công ty là hệ thống máy phun sương dạng bảo vệ môi trường,lò nhiệt gió,quả nghiền dạng tiết kiệm năng lượng,hệ thống cấp liệu hoàn toàn tự động và các sản phẩm đi đầu khác.', '<p>Foshan City Zhuo Dahao machinery Co., Ltd từ một c&ocirc;ng ty nhỏ chuy&ecirc;n về m&aacute;y m&oacute;c c&ocirc;ng tr&igrave;nh gốm sứ th&agrave;nh một c&ocirc;ng ty lớn,sản phẩm chủ yếu của c&ocirc;ng ty l&agrave; hệ thống m&aacute;y phun sương dạng bảo vệ m&ocirc;i trường,l&ograve; nhiệt gi&oacute;,quả nghiền dạng tiết kiệm năng lượng,hệ thống cấp liệu ho&agrave;n to&agrave;n tự động v&agrave; c&aacute;c sản phẩm đi đầu kh&aacute;c.</p>\r\n', '32db982a3b3076d6870b78ad6dc74c0e_IMG_0517.jpg', '0', 7, '', '2020-05-08', '2020-05-08', 1, NULL, NULL, NULL, NULL, NULL, 'Foshan City Zhuo Dahao machinery Co., Ltd', '', 'foshan-city-zhuo-dahao-machinery-co-ltd', '', 1),
(76, 'Foshan HENGLITAI Machinery Co., Ltd', 'Được sự tin tưởng cũng như tinh thần hợp tác Foshan HENGLITAI là một trong những đối tác lớn của Vinatop trong việc cung cấp đến nhà máy sản xuất gạch men máy ép tốt nhất. Bắt đầu từ năm 1957 là một doanh nghiệp tư nhân chuyên về máy móc thiết bị ngành gốm sứ .', '<h3><a href=\"http://vinatop.com.vn/n/danh-sach-doi-tac-tap-doan-vinatop/foshan-henglitai-machinery-co-ltd\" title=\"Foshan HENGLITAI Machinery Co., Ltd\">Foshan HENGLITAI Machinery Co., Ltd</a></h3>\r\n\r\n<p>Được sự tin tưởng cũng như tinh thần hợp t&aacute;c Foshan HENGLITAI l&agrave; một trong những đối t&aacute;c lớn của Vinatop trong việc cung cấp đến nh&agrave; m&aacute;y sản xuất gạch men m&aacute;y &eacute;p tốt nhất. Bắt đầu từ năm 1957 l&agrave; một doanh nghiệp tư nh&acirc;n chuy&ecirc;n về m&aacute;y m&oacute;c thiết bị ng&agrave;nh gốm sứ .</p>\r\n', 'tailai2.jpg', '0', 7, '', '2020-05-08', '2020-05-08', 1, NULL, NULL, NULL, NULL, NULL, 'Foshan HENGLITAI Machinery Co., Ltd', '', 'foshan-henglitai-machinery-co-ltd', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(6, 'DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG MỤC', '', '', 0, 0, '2020-05-04', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG MỤC', '', 'dich-vu-tim-kiem-van-chuyen-hang-muc', '', 1),
(7, 'Đối tác', '', '', 0, 0, '2020-05-08', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Đối tác', '', 'doi-tac', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(11, 'DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG MỤC', '', '1', 1, '', '', '', '', '', 'DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG MỤC', '', 'dich-vu-tim-kiem-van-chuyen-hang-muc', '', NULL, 'vn', 6),
(12, 'english version DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG', '<p>english version</p>\r\n', '1', 1, '', '', '', '', '', 'DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG', '', 'en-dich-vu-tim-kiem-van-chuyen-hang-muc', '', NULL, 'en', 6),
(13, 'Đối tác', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Đối tác', '', 'doi-tac', '', NULL, 'vn', 7),
(14, 'english version Đối tác', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, 'Đối tác', '', 'en-doi-tac', '', NULL, 'en', 7),
(15, 'DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG MỤC cn', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG MỤC cn', NULL, 'cn-dich-vu-tim-kiem-van-chuyen-hang-muc', NULL, NULL, 'cn', 6),
(16, 'Đối tác cn', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Đối tác cn', NULL, 'cn-doi-tac', NULL, NULL, 'cn', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(97, 'vn', 'Mua hàng trực tuyến Trung Quốc', 'Thương mại quốc tế vinatop chúng tôi chuyên cung cấp dịch vụ mua hàng trực tuyến Trung Quốc hàng đầu như Alibaba , TaBao , Tmall… cho khách hàng từ Việt Nam muốn mua hàng.Đến với chúng tôi quý khách hàng hãy yên tâm về chất lượng dù bạn mua đơn hay mua bộ , dù bạn mua ít hay mua nhiều , chỉ cần bạn có yêu cầu chúng tôi sẽ làm bạn hài lòng.', '<p>Thương mại quốc tế vinatop ch&uacute;ng t&ocirc;i chuy&ecirc;n cung cấp dịch vụ mua h&agrave;ng trực tuyến Trung Quốc h&agrave;ng đầu như Alibaba , TaBao , Tmall&hellip; cho kh&aacute;ch h&agrave;ng từ Việt Nam muốn mua h&agrave;ng.Đến với ch&uacute;ng t&ocirc;i qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y y&ecirc;n t&acirc;m về chất lượng d&ugrave; bạn mua đơn hay mua bộ , d&ugrave; bạn mua &iacute;t hay mua nhiều , chỉ cần bạn c&oacute; y&ecirc;u cầu ch&uacute;ng t&ocirc;i sẽ l&agrave;m bạn h&agrave;i l&ograve;ng.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Mua hàng trực tuyến Trung Quốc', '', 'mua-hang-truc-tuyen-trung-quoc', '', NULL, 71),
(98, 'en', 'english version DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG', 'english version ', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'DỊCH VỤ TÌM KIẾM VẬN CHUYỂN HÀNG', '', 'en-dich-vu-tim-kiem-van-chuyen-hang', '', NULL, 71),
(99, 'vn', 'Vận chuyển hàng từ trung quốc về việt nam', 'Với đội ngũ chuyên nghiệp chúng tôi xin cung cấp cho bạn một dịch vụ vận chuyển hàng từ trung quốc về việt nam nhanh nhất, an toàn nhất và chi phí thấp nhât. Chúng tôi làm việc với phương châm “Lợi ích của khách hàng là giá trị của chúng tôi” chúng tôi luôn sẵn sàng phục vụ , đặt lợi ích của khách hàng làm tiêu chí hàng đầu. Được phục vụ khách hàng là niềm vinh hạnh của chúng tôi.', '<p>Với đội ngũ chuy&ecirc;n nghiệp ch&uacute;ng t&ocirc;i xin cung cấp cho bạn một dịch vụ vận chuyển h&agrave;ng từ trung quốc về việt nam nhanh nhất, an to&agrave;n nhất v&agrave; chi ph&iacute; thấp nh&acirc;t. Ch&uacute;ng t&ocirc;i l&agrave;m việc với phương ch&acirc;m &ldquo;Lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&agrave; gi&aacute; trị của ch&uacute;ng t&ocirc;i&rdquo; ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng phục vụ , đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&agrave;m ti&ecirc;u ch&iacute; h&agrave;ng đầu. Được phục vụ kh&aacute;ch h&agrave;ng l&agrave; niềm vinh hạnh của ch&uacute;ng t&ocirc;i.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vận chuyển hàng từ trung quốc về việt nam', '', 'van-chuyen-hang-tu-trung-quoc-ve-viet-nam', '', NULL, 72),
(100, 'en', 'english version Vận chuyển hàng từ trung quốc về việt nam', 'english version Với đội ngũ chuyên nghiệp chúng tôi xin cung cấp cho bạn một dịch vụ vận chuyển hàng từ trung quốc về việt nam nhanh nhất, an toàn nhất và chi phí thấp nhât. Chúng tôi làm việc với phương châm “Lợi ích của khách hàng là giá trị của chúng tôi” chúng tôi luôn sẵn sàng phục vụ , đặt lợi ích của khách hàng làm tiêu chí hàng đầu. Được phục vụ khách hàng là niềm vinh hạnh của chúng tôi.', 'english version <p>Với đội ngũ chuy&ecirc;n nghiệp ch&uacute;ng t&ocirc;i xin cung cấp cho bạn một dịch vụ vận chuyển h&agrave;ng từ trung quốc về việt nam nhanh nhất, an to&agrave;n nhất v&agrave; chi ph&iacute; thấp nh&acirc;t. Ch&uacute;ng t&ocirc;i l&agrave;m việc với phương ch&acirc;m &ldquo;Lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&agrave; gi&aacute; trị của ch&uacute;ng t&ocirc;i&rdquo; ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng phục vụ , đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&agrave;m ti&ecirc;u ch&iacute; h&agrave;ng đầu. Được phục vụ kh&aacute;ch h&agrave;ng l&agrave; niềm vinh hạnh của ch&uacute;ng t&ocirc;i.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vận chuyển hàng từ trung quốc về việt nam', '', 'en-van-chuyen-hang-tu-trung-quoc-ve-viet-nam', '', NULL, 72),
(101, 'vn', 'Tìm nguồn hàng Trung Quốc', 'Trong thời đại nền kinh tế mở cửa việc giao thương buôn bán chưa bao giờ chở nên dễ dàng đến thế.Chính vì lẽ đó Trung Quốc là một trong những nước mà chúng tôi có nhiều đối tác nhất.Với nhiều năm kinh nghiệm trong nghề chúng tôi sẽ giúp khách hàng có thể tìm kiếm được nguồn hàng tốt nhất, giá cả hợp lý nhất cho doanh nghiệp cũng như cá nhân.', '<p>Trong thời đại nền kinh tế mở cửa việc giao thương bu&ocirc;n b&aacute;n chưa bao giờ chở n&ecirc;n dễ d&agrave;ng đến thế.Ch&iacute;nh v&igrave; lẽ đ&oacute; Trung Quốc l&agrave; một trong những nước m&agrave; ch&uacute;ng t&ocirc;i c&oacute; nhiều đối t&aacute;c nhất.Với nhiều năm kinh nghiệm trong nghề ch&uacute;ng t&ocirc;i sẽ gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m kiếm được nguồn h&agrave;ng tốt nhất, gi&aacute; cả hợp l&yacute; nhất cho doanh nghiệp cũng như c&aacute; nh&acirc;n.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Tìm nguồn hàng Trung Quốc', '', 'tim-nguon-hang-trung-quoc', '', NULL, 73),
(102, 'en', 'english version Tìm nguồn hàng Trung Quốc', 'english version Trong thời đại nền kinh tế mở cửa việc giao thương buôn bán chưa bao giờ chở nên dễ dàng đến thế.Chính vì lẽ đó Trung Quốc là một trong những nước mà chúng tôi có nhiều đối tác nhất.Với nhiều năm kinh nghiệm trong nghề chúng tôi sẽ giúp khách hàng có thể tìm kiếm được nguồn hàng tốt nhất, giá cả hợp lý nhất cho doanh nghiệp cũng như cá nhân.', 'english version <p>Trong thời đại nền kinh tế mở cửa việc giao thương bu&ocirc;n b&aacute;n chưa bao giờ chở n&ecirc;n dễ d&agrave;ng đến thế.Ch&iacute;nh v&igrave; lẽ đ&oacute; Trung Quốc l&agrave; một trong những nước m&agrave; ch&uacute;ng t&ocirc;i c&oacute; nhiều đối t&aacute;c nhất.Với nhiều năm kinh nghiệm trong nghề ch&uacute;ng t&ocirc;i sẽ gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m kiếm được nguồn h&agrave;ng tốt nhất, gi&aacute; cả hợp l&yacute; nhất cho doanh nghiệp cũng như c&aacute; nh&acirc;n.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Tìm nguồn hàng Trung Quốc', '', 'en-tim-nguon-hang-trung-quoc', '', NULL, 73),
(103, 'vn', 'Dịch vụ chuyển hàng đi Trung Quốc', 'Thương mại quốc tế vinatop chúng tôi cung cấp dịch vụ vận chuyển hàng sang Trung Quốc cho những khách hàng có nhu cầu vận chuyển hàng hóa cũng như sản phẩm của mình sang Trung Quốc cho các đối tác của mình.Đến với chúng tôi bạn sẽ cảm thấy sự hài lòng và tin tưởng về dịch vụ.', '<p>Thương mại quốc tế vinatop ch&uacute;ng t&ocirc;i cung cấp dịch vụ vận chuyển h&agrave;ng sang Trung Quốc cho những kh&aacute;ch h&agrave;ng c&oacute; nhu cầu vận chuyển h&agrave;ng h&oacute;a cũng như sản phẩm của m&igrave;nh sang Trung Quốc cho c&aacute;c đối t&aacute;c của m&igrave;nh.Đến với ch&uacute;ng t&ocirc;i bạn sẽ cảm thấy sự h&agrave;i l&ograve;ng v&agrave; tin tưởng về dịch vụ.</p>\r\n', NULL, 1, '', '', '', '', '', 'Dịch vụ chuyển hàng đi Trung Quốc', '', 'dich-vu-chuyen-hang-di-trung-quoc', '', NULL, 74),
(104, 'en', 'english version Dịch vụ chuyển hàng đi Trung Quốc', 'english version Thương mại quốc tế vinatop chúng tôi cung cấp dịch vụ vận chuyển hàng sang Trung Quốc cho những khách hàng có nhu cầu vận chuyển hàng hóa cũng như sản phẩm của mình sang Trung Quốc cho các đối tác của mình.Đến với chúng tôi bạn sẽ cảm thấy sự hài lòng và tin tưởng về dịch vụ.', '<p>english version</p>\r\n\r\n<p>Thương mại quốc tế vinatop ch&uacute;ng t&ocirc;i cung cấp dịch vụ vận chuyển h&agrave;ng sang Trung Quốc cho những kh&aacute;ch h&agrave;ng c&oacute; nhu cầu vận chuyển h&agrave;ng h&oacute;a cũng như sản phẩm của m&igrave;nh sang Trung Quốc cho c&aacute;c đối t&aacute;c của m&igrave;nh.Đến với ch&uacute;ng t&ocirc;i bạn sẽ cảm thấy sự h&agrave;i l&ograve;ng v&agrave; tin tưởng về dịch vụ.</p>\r\n', NULL, 1, '', '', '', '', '', 'Dịch vụ chuyển hàng đi Trung Quốc', '', 'en-dich-vu-chuyen-hang-di-trung-quoc', '', NULL, 74),
(105, 'vn', 'Foshan City Zhuo Dahao machinery Co., Ltd', 'Foshan City Zhuo Dahao machinery Co., Ltd từ một công ty nhỏ chuyên về máy móc công trình gốm sứ thành một công ty lớn,sản phẩm chủ yếu của công ty là hệ thống máy phun sương dạng bảo vệ môi trường,lò nhiệt gió,quả nghiền dạng tiết kiệm năng lượng,hệ thống cấp liệu hoàn toàn tự động và các sản phẩm đi đầu khác.', '<p>Foshan City Zhuo Dahao machinery Co., Ltd từ một c&ocirc;ng ty nhỏ chuy&ecirc;n về m&aacute;y m&oacute;c c&ocirc;ng tr&igrave;nh gốm sứ th&agrave;nh một c&ocirc;ng ty lớn,sản phẩm chủ yếu của c&ocirc;ng ty l&agrave; hệ thống m&aacute;y phun sương dạng bảo vệ m&ocirc;i trường,l&ograve; nhiệt gi&oacute;,quả nghiền dạng tiết kiệm năng lượng,hệ thống cấp liệu ho&agrave;n to&agrave;n tự động v&agrave; c&aacute;c sản phẩm đi đầu kh&aacute;c.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Foshan City Zhuo Dahao machinery Co., Ltd', '', 'foshan-city-zhuo-dahao-machinery-co-ltd', '', NULL, 75),
(106, 'en', 'english version Foshan City Zhuo Dahao machinery Co., Ltd', 'english version Foshan City Zhuo Dahao machinery Co., Ltd từ một công ty nhỏ chuyên về máy móc công trình gốm sứ thành một công ty lớn,sản phẩm chủ yếu của công ty là hệ thống máy phun sương dạng bảo vệ môi trường,lò nhiệt gió,quả nghiền dạng tiết kiệm năng lượng,hệ thống cấp liệu hoàn toàn tự động và các sản phẩm đi đầu khác.', 'english version <p>Foshan City Zhuo Dahao machinery Co., Ltd từ một c&ocirc;ng ty nhỏ chuy&ecirc;n về m&aacute;y m&oacute;c c&ocirc;ng tr&igrave;nh gốm sứ th&agrave;nh một c&ocirc;ng ty lớn,sản phẩm chủ yếu của c&ocirc;ng ty l&agrave; hệ thống m&aacute;y phun sương dạng bảo vệ m&ocirc;i trường,l&ograve; nhiệt gi&oacute;,quả nghiền dạng tiết kiệm năng lượng,hệ thống cấp liệu ho&agrave;n to&agrave;n tự động v&agrave; c&aacute;c sản phẩm đi đầu kh&aacute;c.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Foshan City Zhuo Dahao machinery Co., Ltd', '', 'en-foshan-city-zhuo-dahao-machinery-co-ltd', '', NULL, 75),
(107, 'vn', 'Foshan HENGLITAI Machinery Co., Ltd', 'Được sự tin tưởng cũng như tinh thần hợp tác Foshan HENGLITAI là một trong những đối tác lớn của Vinatop trong việc cung cấp đến nhà máy sản xuất gạch men máy ép tốt nhất. Bắt đầu từ năm 1957 là một doanh nghiệp tư nhân chuyên về máy móc thiết bị ngành gốm sứ .', '<h3><a href=\"http://vinatop.com.vn/n/danh-sach-doi-tac-tap-doan-vinatop/foshan-henglitai-machinery-co-ltd\" title=\"Foshan HENGLITAI Machinery Co., Ltd\">Foshan HENGLITAI Machinery Co., Ltd</a></h3>\r\n\r\n<p>Được sự tin tưởng cũng như tinh thần hợp t&aacute;c Foshan HENGLITAI l&agrave; một trong những đối t&aacute;c lớn của Vinatop trong việc cung cấp đến nh&agrave; m&aacute;y sản xuất gạch men m&aacute;y &eacute;p tốt nhất. Bắt đầu từ năm 1957 l&agrave; một doanh nghiệp tư nh&acirc;n chuy&ecirc;n về m&aacute;y m&oacute;c thiết bị ng&agrave;nh gốm sứ .</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Foshan HENGLITAI Machinery Co., Ltd', '', 'foshan-henglitai-machinery-co-ltd', '', NULL, 76),
(108, 'en', 'english version Foshan HENGLITAI Machinery Co., Ltd', 'english version Được sự tin tưởng cũng như tinh thần hợp tác Foshan HENGLITAI là một trong những đối tác lớn của Vinatop trong việc cung cấp đến nhà máy sản xuất gạch men máy ép tốt nhất. Bắt đầu từ năm 1957 là một doanh nghiệp tư nhân chuyên về máy móc thiết bị ngành gốm sứ .', 'english version <h3><a href=\"http://vinatop.com.vn/n/danh-sach-doi-tac-tap-doan-vinatop/foshan-henglitai-machinery-co-ltd\" title=\"Foshan HENGLITAI Machinery Co., Ltd\">Foshan HENGLITAI Machinery Co., Ltd</a></h3>\r\n\r\n<p>Được sự tin tưởng cũng như tinh thần hợp t&aacute;c Foshan HENGLITAI l&agrave; một trong những đối t&aacute;c lớn của Vinatop trong việc cung cấp đến nh&agrave; m&aacute;y sản xuất gạch men m&aacute;y &eacute;p tốt nhất. Bắt đầu từ năm 1957 l&agrave; một doanh nghiệp tư nh&acirc;n chuy&ecirc;n về m&aacute;y m&oacute;c thiết bị ng&agrave;nh gốm sứ .</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Foshan HENGLITAI Machinery Co., Ltd', '', 'en-foshan-henglitai-machinery-co-ltd', '', NULL, 76),
(109, 'cn', 'Mua hàng trực tuyến Trung Quốc cn', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Mua hàng trực tuyến Trung Quốc cn', NULL, 'cn-mua-hang-truc-tuyen-trung-quoc', NULL, NULL, 71),
(110, 'cn', 'Vận chuyển hàng từ trung quốc về việt nam cn', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vận chuyển hàng từ trung quốc về việt nam cn', NULL, 'cn-van-chuyen-hang-tu-trung-quoc-ve-viet-nam', NULL, NULL, 72),
(111, 'cn', 'Tìm nguồn hàng Trung Quốc cn', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Tìm nguồn hàng Trung Quốc cn', NULL, 'cn-tim-nguon-hang-trung-quoc', NULL, NULL, 73),
(112, 'cn', 'Dịch vụ chuyển hàng đi Trung Quốc cn', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ chuyển hàng đi Trung Quốc cn', NULL, 'cn-dich-vu-chuyen-hang-di-trung-quoc', NULL, NULL, 74),
(113, 'cn', 'Foshan City Zhuo Dahao machinery Co., Ltd cn', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Foshan City Zhuo Dahao machinery Co., Ltd cn', NULL, 'cn-foshan-city-zhuo-dahao-machinery-co-ltd', NULL, NULL, 75),
(114, 'cn', 'Foshan HENGLITAI Machinery Co., Ltd cn', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Foshan HENGLITAI Machinery Co., Ltd cn', NULL, 'cn-foshan-henglitai-machinery-co-ltd', NULL, NULL, 76);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
