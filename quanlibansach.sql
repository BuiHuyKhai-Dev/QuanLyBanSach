-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2025 lúc 03:09 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlibansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctkm`
--

CREATE TABLE `ctkm` (
  `makm` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `tilekm` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `masach` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `dongia` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctphieunhap`
--

INSERT INTO `ctphieunhap` (`maphieunhap`, `masach`, `soluong`, `dongia`) VALUES
(1, 'S10', 100, 210000),
(2, 'S18', 50, 130000),
(2, 'S8', 50, 170000),
(3, 'S14', 100, 160000),
(3, 'S15', 100, 130000),
(3, 'S16', 100, 150000),
(4, 'S23', 100, 190000),
(4, 'S24', 100, 160000),
(5, 'S18', 100, 180000),
(5, 'S19', 100, 140000),
(6, 'S1', 100, 150000),
(6, 'S2', 100, 250000),
(7, 'S12', 100, 140000),
(7, 'S13', 100, 190000),
(7, 'S14', 100, 160000),
(8, 'S1', 1, 150000),
(9, 'S1', 2, 150000),
(10, 'S1', 12, 150000),
(11, 'S12', 12, 140000),
(11, 'S16', 1, 150000),
(11, 'S19', 1, 140000),
(12, 'S29', 12, 200000),
(22, 'S10', 1, 210000),
(23, 'S1', 2, 150000),
(25, 'S1', 5, 150000),
(28, 'S2', 1, 250000),
(29, 'S1', 1, 150000),
(31, 'S21', 100, 120000),
(31, 'S26', 10, 90000),
(32, 'S1', 15, 150000),
(33, 'S15', 100, 130000),
(34, 'S6', 100, 140000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieutra`
--

CREATE TABLE `ctphieutra` (
  `maphieuxuat` int(11) NOT NULL,
  `masach` varchar(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tienthu` int(11) NOT NULL,
  `lydo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieuxuat`
--

CREATE TABLE `ctphieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `masach` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `dongia` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctphieuxuat`
--

INSERT INTO `ctphieuxuat` (`maphieuxuat`, `masach`, `soluong`, `dongia`) VALUES
(1, 'S7', 1, 130000),
(1, 'S8', 1, 170000),
(2, 'S25', 10, 90000),
(3, 'S14', 1, 160000),
(3, 'S15', 1, 130000),
(3, 'S16', 1, 150000),
(4, 'S10', 1, 210000),
(4, 'S8', 1, 200000),
(5, 'S21', 1, 120000),
(5, 'S22', 10, 200000),
(5, 'S23', 1, 190000),
(6, 'S3', 1, 180000),
(6, 'S4', 1, 160000),
(6, 'S5', 1, 120000),
(7, 'S20', 1, 130000),
(7, 'S21', 1, 120000),
(8, 'S1', 4, 150000),
(8, 'S4', 1, 160000),
(50, 'S1', 1, 150000),
(52, 'S1', 1, 150000),
(52, 'S2', 1, 250000),
(52, 'S3', 1, 180000),
(52, 'S4', 1, 160000),
(52, 'S5', 1, 120000),
(52, 'S6', 1, 140000),
(52, 'S7', 1, 130000),
(52, 'S8', 1, 170000),
(52, 'S9', 1, 200000),
(54, 'S4', 1, 160000),
(55, 'S1', 1, 150000),
(56, 'S1', 2, 150000),
(57, 'S1', 1, 150000),
(58, 'S1', 1, 150000),
(60, 'S1', 1, 150000),
(61, 'S1', 1, 150000),
(62, 'S1', 1, 150000),
(63, 'S1', 4, 150000),
(64, 'S1', 12, 150000),
(65, 'S1', 3, 150000),
(65, 'S11', 12, 150000),
(66, 'S1', 1, 150000),
(67, 'S1', 1, 150000),
(68, '12', 1, 140000),
(69, 'S1', 12, 150000),
(70, 'S1', 1, 150000),
(71, 'S1', 1, 150000),
(72, '12', 1, 140000),
(73, 'S1', 1, 150000),
(74, 'S1', 1, 150000),
(75, 'S1', 1, 150000),
(76, 'S16', 1, 150000),
(77, 'S4', 1, 160000),
(78, 'S10', 1, 210000),
(79, 'S1', 1, 150000),
(80, 'S11', 1, 150000),
(81, 'S1', 1, 150000),
(82, 'S1', 1, 150000),
(83, 'S1', 12, 150000),
(84, 'S12', 1, 140000),
(85, 'S10', 1, 210000),
(86, 'S10', 1, 210000),
(87, 'S1', 1, 150000),
(90, 'S1', 1, 150000),
(91, 'S2', 1, 250000),
(92, 'S13', 1, 190000),
(128, 'S1', 1, 150000),
(129, 'S111', 1, 1000),
(130, 'S113', 1, 1000),
(132, 'S1', 1, 150000),
(132, 'S10', 1, 210000),
(132, 'S11', 1, 150000),
(132, 'S112', 1, 1000),
(132, 'S12', 1, 140000),
(132, 'S13', 1, 190000),
(133, 'S1', 1, 150000),
(133, 'S2', 1, 250000),
(133, 'S4', 3, 160000),
(134, 'S11', 1, 150000),
(134, 'S111', 1, 1000),
(134, 'S112', 1, 1000),
(134, 'S113', 1, 1000),
(135, 'S1', 1, 150000),
(136, 'S3', 1, 200000),
(137, 'S1', 1, 150000),
(139, 'S3', 1, 200000),
(139, 'S7', 1, 130000),
(140, 'S28', 1, 270000),
(140, 'S5', 1, 120000),
(141, 'S23', 1, 190000),
(150, 'S11', 1, 150000),
(150, 'S19', 1, 140000),
(150, 'S4', 1, 160000),
(150, 'S6', 1, 140000),
(150, 'S9', 1, 200000),
(151, 'S18', 1, 180000),
(151, 'S2', 1, 250000),
(151, 'S4', 1, 160000),
(151, 'S6', 1, 140000),
(151, 'S7', 1, 130000),
(152, 'S1', 1, 150000),
(152, 'S2', 1, 250000),
(152, 'S3', 3, 200000),
(154, 'S12', 1, 140000),
(156, 'S3', 9, 200000),
(157, 'S2', 1, 250000),
(158, 'S1', 1, 150000),
(159, 'S11', 12, 150000),
(159, 'S13', 12, 190000),
(159, 'S15', 12, 130000),
(160, 'S10', 1, 210000),
(161, 'S12', 1, 140000),
(162, 'S17', 5, 140000),
(162, 'S19', 5, 140000),
(162, 'S21', 5, 120000),
(163, 'S1', 11, 150000),
(164, 'S9', 45, 200000),
(165, 'S25', 12, 90000),
(166, 'S22', 1, 200000),
(166, 'S23', 1, 190000),
(166, 'S24', 1, 160000),
(166, 'S25', 1, 90000),
(166, 'S26', 1, 90000),
(166, 'S27', 1, 250000),
(166, 'S28', 1, 270000),
(167, 'S1', 12, 150000),
(167, 'S11', 12, 150000),
(167, 'S2', 1, 250000),
(168, 'S1', 1, 150000),
(169, 'S1', 1, 150000),
(170, 'S1', 1, 150000),
(171, 'S1', 1, 150000),
(172, 'S7', 1, 130000),
(173, 'S1', 1, 150000),
(174, 'S5', 1, 120000),
(175, 'S1', 1, 150000),
(176, 'S13', 1, 190000),
(177, 'S1', 1, 150000),
(178, 'S1', 1, 150000),
(179, 'S1', 1, 150000),
(180, 'S1', 1, 150000),
(181, 'S1', 1, 150000),
(182, 'S15', 1, 130000),
(183, 'S1', 3, 150000),
(184, 'S1', 2, 150000),
(184, 'S3', 2, 200000),
(185, 'S1', 12, 150000),
(186, 'S10', 1, 210000),
(186, 'S11', 1, 150000),
(186, 'S20', 1, 130000),
(186, 'S21', 1, 120000),
(186, 'S23', 1, 190000),
(186, 'S4', 1, 160000),
(186, 'S5', 1, 120000),
(186, 'S6', 1, 140000),
(186, 'S7', 1, 130000),
(186, 'S9', 1, 200000),
(187, 'S10', 12, 210000),
(187, 'S11', 12, 150000),
(187, 'S12', 12, 140000),
(187, 'S16', 12, 150000),
(187, 'S18', 12, 180000),
(187, 'S28', 12, 270000),
(187, 'S6', 12, 140000),
(187, 'S7', 12, 130000),
(187, 'S8', 12, 170000),
(187, 'S9', 12, 200000),
(188, 'S1', 15, 150000),
(188, 'S2', 15, 250000),
(188, 'S20', 15, 130000),
(188, 'S21', 15, 120000),
(188, 'S3', 15, 200000),
(189, 'S20', 15, 130000),
(189, 'S21', 30, 120000),
(189, 'S24', 15, 160000),
(189, 'S25', 15, 90000),
(189, 'S26', 15, 90000),
(189, 'S27', 15, 250000),
(189, 'S28', 15, 270000),
(190, 'S1', 105, 150000),
(190, 'S11', 30, 150000),
(190, 'S12', 15, 140000),
(192, 'S1', 37, 150000),
(193, 'S3', 100, 200000),
(194, 'S1', 1, 150000),
(194, 'S2', 1, 250000),
(195, 'S1', 12, 150000),
(196, 'S12', 1, 140000),
(196, 'S15', 111, 130000),
(197, 'S3', 96, 200000),
(198, 'S1', 11, 150000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctquyen`
--

CREATE TABLE `ctquyen` (
  `manhomquyen` int(11) NOT NULL,
  `machucnang` int(11) NOT NULL,
  `hanhdong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctquyen`
--

INSERT INTO `ctquyen` (`manhomquyen`, `machucnang`, `hanhdong`) VALUES
(1, 1, 'CRUD'),
(1, 2, 'CRUD'),
(1, 3, 'CRUD'),
(1, 4, 'CRUD'),
(1, 5, 'CRUD'),
(1, 6, 'CRUD'),
(1, 7, 'CRUD'),
(1, 8, 'CRUD'),
(1, 9, 'CRUD'),
(1, 10, 'CRUD'),
(1, 11, 'CRUD'),
(2, 2, 'ALL'),
(2, 3, 'ALL'),
(2, 4, 'ALL'),
(2, 5, 'ALL'),
(2, 6, 'ALL'),
(2, 10, 'ALL'),
(3, 2, 'ALL'),
(3, 3, 'ALL'),
(3, 4, 'ALL'),
(3, 5, 'ALL'),
(3, 6, 'ALL'),
(3, 9, 'ALL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctsach`
--

CREATE TABLE `ctsach` (
  `masach` int(11) NOT NULL,
  `maphieunhap` int(11) NOT NULL,
  `maphieuxuat` int(11) DEFAULT NULL,
  `tinhtrang` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucchucnang`
--

CREATE TABLE `danhmucchucnang` (
  `machucnang` int(11) NOT NULL,
  `tenchucnang` varchar(255) NOT NULL,
  `trangthai` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucchucnang`
--

INSERT INTO `danhmucchucnang` (`machucnang`, `tenchucnang`, `trangthai`) VALUES
(1, 'Quản lý nhân viên', 1),
(2, 'Quản lý khách hàng', 1),
(3, 'Quản lý nhà cung cấp', 1),
(4, 'Quản lý nhà xuất bản', 1),
(5, 'Quản lý tác giả', 1),
(6, 'Quản lý thể loại', 1),
(7, 'Quản lý nhóm quyền', 1),
(8, 'Quản lý tài khoản', 1),
(9, 'Quản lý nhập hàng', 1),
(10, 'Quản lý xuất hàng', 1),
(11, 'Quản lý thống kê', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `hokhachhang` varchar(255) DEFAULT NULL,
  `tenkhachhang` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sdt` varchar(50) DEFAULT NULL,
  `trangthai` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `hokhachhang`, `tenkhachhang`, `email`, `ngaysinh`, `sdt`, `trangthai`) VALUES
(1, 'Nguyễn Văn', 'An', 'an.nguyen@example.com', '1996-05-14', '0912345678', 1),
(2, 'Trần Thị', 'Bình', 'binh.tran@example.com', '1988-10-22', '0987654321', 1),
(3, 'Lê Minh', 'Cường', 'cuong.le@example.com', '1995-07-30', '0909876543', 1),
(4, 'Phạm Thảo', 'Dung', 'dung.pham@example.com', '2000-03-15', '0965123456', 1),
(5, 'Đặng Hữu', 'Đức', 'duc.dang@example.com', '1985-08-05', '0978456123', 1),
(6, 'Hồ Lan', 'Hương	', 'huong.ho@example.com', '1993-11-25', '0911122233', 1),
(7, 'Bùi Khánh', 'Hòa', 'hoa.bui@example.com', '1998-06-18', '0922233344', 1),
(8, 'Võ Hoàng', 'Khang', 'khang.vo@example.com', '1987-09-12', '0933344455', 1),
(9, 'Nguyễn Mai', 'Linh', 'linh.nguyen@example.com', '1996-04-07', '0944455566', 1),
(10, 'Trịnh Ngọc', 'Minh', 'minh.trinh@example.com', '2002-02-28', '0955566677', 1),
(11, 'Dương Thanh', 'Nam', 'nam.duong@example.com', '1990-12-01', '0966677788', 1),
(12, 'Phan Anh', 'Quân', 'quan.phan@example.com	', '1989-07-19', '0977788899', 1),
(13, 'Lương Thu', 'Trang', 'trang.luong@example.com', '1997-01-23', '0988899000', 1),
(14, 'Lương ', 'Thuận', 'thihachcf@gmail.com', '2005-01-01', '0352447642', 1),
(15, 'Trung', 'Trung', 'thihahcf@gmail.com', '2022-11-11', '0352447642', 1),
(16, 'Lê ', 'Văn Luyện', 'thi@gmail.com', '2005-12-12', '0987654321', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makm` int(11) NOT NULL,
  `tenkm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ngaybatdau` datetime NOT NULL,
  `ngayketthuc` datetime NOT NULL,
  `dieukientoithieu` double NOT NULL,
  `phantramgiam` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`makm`, `tenkm`, `ngaybatdau`, `ngayketthuc`, `dieukientoithieu`, `phantramgiam`) VALUES
(12, 's2', '2025-04-16 00:00:00', '2025-05-01 00:00:00', 500000, 13),
(14, 'S1', '2025-05-01 00:00:00', '2025-05-01 00:00:00', 100000, 12),
(15, '1', '2025-05-01 00:00:00', '2025-05-01 00:00:00', 1, 1),
(16, 'Khuyến mãi đầu năm', '2025-05-01 00:00:00', '2025-05-20 00:00:00', 500000, 20),
(17, 'khuyến mãi chơi chơi', '2025-05-07 00:00:00', '2025-05-07 00:00:00', 400000, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `mancc` int(11) NOT NULL,
  `tenncc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachincc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sdt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trangthai` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `tenncc`, `diachincc`, `sdt`, `email`, `trangthai`) VALUES
(1, 'CTCP Sách Alpha', 'Số 176 Thái Hà, Đống Đa, Hà Nội', '(024) 6263 3355', 'info@alphabooks.vn', 1),
(2, 'CT TNHH Phát Hành Sách Fahasa', '60-62 Lê Lợi, Quận 1, TP.HCM', '(028) 3822 5796', 'fahasa@fahasa.com', 1),
(3, 'CT Sách Minh Long', '145 Bùi Hữu Nghĩa, Bình Thạnh, TP.HCM', '(028) 3551 5858', 'minhlongbook@gmail.com', 1),
(4, 'CT TNHH Văn Hóa Hương Trang', '32A Lê Lợi, Q.1, TP.HCM', '(028) 3829 5890', 'huongtrangbooks@gmail.com', 1),
(5, 'CTCP Sách Thái Hà', 'Số 53A, ngõ 64 Nguyễn Lương Bằng, Đống Đa, Hà Nội', '(024) 3513 6499', 'contact@thaihabooks.com', 1),
(6, 'Trung', '123aaa', '0352447642', 'thi@gmail.com', 1),
(7, 'Trung2', '1', '0352449123', 'a@gmail.com', 1),
(8, 'Trung3', 'a', '0123456789', 'aa@gmail.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `honv` varchar(255) NOT NULL,
  `tennv` varchar(255) NOT NULL,
  `gioittinh` tinyint(4) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `honv`, `tennv`, `gioittinh`, `sdt`, `ngaysinh`, `trangthai`) VALUES
(1, 'Nguyễn Tiến', 'Trung', 1, '0352447642', '2005-05-16', 1),
(2, 'Phạm Hoài', 'Phương', 2, '0961640807', '2006-03-13', 1),
(3, 'Nguyễn Minh', 'Thuận', 1, '0123456789', '2005-03-01', 1),
(4, 'Bùi Huy', 'Khải', 1, '0123456145', '2005-05-01', 1),
(5, 'Nguyễn Hải', 'Đăng', 1, '0123456076', '2005-04-01', 1),
(6, 'Admin', 'Master', 1, '0999999999', '1999-09-09', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `manxb` int(11) NOT NULL,
  `tennxb` varchar(255) NOT NULL,
  `diachinxb` varchar(255) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `trangthai` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`manxb`, `tennxb`, `diachinxb`, `sdt`, `email`, `trangthai`) VALUES
(1, 'NXB Kim Đồng', '248 Cống Quỳnh, P. Phạm Ngũ Lão, Q.1', '(028) 39250987', 'cnkimdong@nxbkimdong.com.vn', 1),
(2, 'NXB Trẻ', '161B Lý Chính Thắng, P.7, Q.3, TP. Hồ Chí Minh', '(028) 39316289', 'nxbtre@trepublishinghouse.vn', 1),
(3, 'NXB Giáo Dục Việt Nam', 'Số 81 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội', '(024) 38220801', 'nxbgd@gmail.com', 1),
(4, 'NXB Lao Động', '75 Giảng Võ, Đống Đa, Hà Nội', '(024) 38463796', 'nxblaodong@gmail.com', 1),
(5, 'NXB Tổng Hợp TP.HCM', '62 Nguyễn Thị Minh Khai, P. Đa Kao, Q.1, TP. Hồ Chí Minh', '(028) 38297808', 'nxb@nxbtphcm.com.vn', 1),
(6, '123', 'Daia', '0352447642', 'th@gmail.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomquyen`
--

CREATE TABLE `nhomquyen` (
  `manhomquyen` int(11) NOT NULL,
  `tennhomquyen` varchar(255) NOT NULL,
  `trangthai` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomquyen`
--

INSERT INTO `nhomquyen` (`manhomquyen`, `tennhomquyen`, `trangthai`) VALUES
(1, 'Quản lý', 1),
(2, 'Nhân viên', 1),
(3, 'Quản lý kho', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `mancc` int(11) NOT NULL,
  `thoigiantao` datetime DEFAULT current_timestamp(),
  `tongtien` bigint(20) NOT NULL DEFAULT 0,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`maphieunhap`, `manv`, `mancc`, `thoigiantao`, `tongtien`, `trangthai`) VALUES
(1, 1, 1, '2021-03-17 23:43:01', 21000000, 1),
(2, 1, 3, '2025-03-01 23:51:39', 3000000, 1),
(3, 1, 5, '2025-03-17 23:54:50', 44000000, 1),
(4, 1, 2, '2025-03-17 23:57:23', 35000000, 1),
(5, 1, 3, '2025-03-17 23:59:30', 32000000, 1),
(6, 1, 4, '2025-03-18 00:01:25', 40000000, 1),
(7, 3, 1, '2025-03-18 00:03:08', 49000000, 1),
(8, 6, 1, '2025-05-05 15:24:05', 150000, 1),
(9, 6, 1, '2025-05-05 15:25:36', 300000, 1),
(10, 6, 1, '2025-05-06 22:39:55', 1800000, 1),
(11, 6, 1, '2025-05-06 22:40:30', 1970000, 1),
(12, 6, 1, '2025-05-06 22:43:29', 2400000, 1),
(14, 6, 1, '2025-05-06 22:50:40', 150000, 0),
(15, 6, 1, '2025-05-06 23:02:27', 130000, 0),
(17, 6, 1, '2025-05-06 23:03:25', 150000, 0),
(19, 6, 1, '2025-05-06 23:05:16', 130000, 0),
(22, 6, 1, '2025-05-06 23:50:43', 210000, 1),
(23, 6, 1, '2025-05-06 23:50:53', 300000, 1),
(25, 6, 1, '2025-05-06 23:52:51', 750000, 1),
(28, 6, 1, '2025-05-07 01:20:57', 250000, 1),
(29, 6, 1, '2025-05-07 02:28:53', 150000, 1),
(31, 6, 1, '2025-05-11 17:05:15', 12900000, 1),
(32, 6, 1, '2025-05-11 17:11:03', 2250000, 1),
(33, 6, 1, '2025-05-12 13:44:25', 13000000, 1),
(34, 6, 1, '2025-05-16 14:09:04', 14000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieutra`
--

CREATE TABLE `phieutra` (
  `phieutra` int(11) NOT NULL,
  `thoigiantao` datetime NOT NULL,
  `tongtien` bigint(255) NOT NULL,
  `manv` int(11) NOT NULL,
  `makh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `manv` int(11) DEFAULT NULL,
  `makh` int(11) DEFAULT NULL,
  `thoigiantao` datetime NOT NULL DEFAULT current_timestamp(),
  `tongtien` bigint(20) DEFAULT 0,
  `trangthai` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`maphieuxuat`, `manv`, `makh`, `thoigiantao`, `tongtien`, `trangthai`) VALUES
(1, 1, 7, '2025-03-18 00:07:07', 300000, 1),
(2, 1, 10, '2025-03-18 00:09:21', 900000, 1),
(3, 1, 7, '2025-03-18 00:11:16', 440000, 1),
(4, 1, 6, '2025-03-18 00:12:51', 410000, 1),
(5, 1, 13, '2025-03-18 00:14:15', 2310000, 1),
(6, 1, 9, '2025-03-18 00:16:42', 460000, 1),
(7, 1, 2, '2025-03-18 00:18:07', 250000, 1),
(8, 1, 6, '2025-04-03 00:25:53', 760000, 1),
(128, 6, 5, '2025-04-22 00:01:33', 150000, 1),
(129, 6, 4, '2025-04-22 00:01:39', 1000, 1),
(130, 6, 3, '2025-04-22 00:01:46', 1000, 1),
(132, 6, 4, '2025-04-22 01:46:41', 841000, 1),
(133, 6, 4, '2025-04-22 14:58:30', 824000, 1),
(134, 6, 2, '2025-04-22 15:01:00', 692700, 1),
(135, 6, 1, '2025-04-22 15:05:44', 150000, 1),
(136, 6, 4, '2025-04-22 15:07:01', 520000, 1),
(137, 6, 2, '2025-04-22 15:09:14', 150000, 1),
(139, 5, 3, '2025-04-22 17:06:11', 330000, 1),
(140, 3, 7, '2025-04-22 17:06:32', 390000, 1),
(141, 3, 3, '2025-04-22 17:06:42', 190000, 1),
(150, 6, 7, '2025-04-22 17:35:12', 740000, 1),
(151, 6, 2, '2025-04-22 17:55:31', 806000, 1),
(152, 6, 3, '2025-04-28 10:45:26', 1000000, 1),
(154, 6, 4, '2025-05-01 13:24:12', 140000, 1),
(156, 6, 2, '2025-05-01 16:32:24', 1440000, 1),
(157, 6, 4, '2025-05-05 01:38:56', 250000, 1),
(158, 6, 3, '2025-05-05 01:40:26', 150000, 1),
(159, 4, 5, '2025-05-06 16:38:33', 4512000, 1),
(160, 4, 9, '2025-05-06 16:38:46', 210000, 1),
(161, 4, 14, '2025-05-06 16:38:54', 140000, 1),
(162, 4, 2, '2025-05-06 16:39:03', 1600000, 1),
(163, 4, 4, '2025-05-06 16:39:20', 1320000, 1),
(164, 4, 2, '2025-05-06 16:39:40', 7200000, 1),
(165, 4, 9, '2025-05-02 00:00:00', 864000, 1),
(166, 4, 3, '2025-05-06 16:40:15', 1000000, 1),
(167, 6, 11, '2025-05-06 22:34:06', 3080000, 1),
(168, 6, 1, '2025-05-06 23:15:04', 150000, 1),
(169, 6, 10, '2025-05-06 23:15:26', 150000, 1),
(170, 6, 2, '2025-05-07 01:21:11', 150000, 1),
(171, 6, 1, '2025-05-07 01:21:41', 150000, 1),
(172, 6, 9, '2025-05-07 01:23:19', 130000, 1),
(173, 6, 4, '2025-05-07 01:23:30', 150000, 1),
(174, 6, 8, '2025-05-07 01:25:59', 120000, 1),
(175, 6, 3, '2025-04-30 01:29:25', 150000, 1),
(176, 6, 4, '2025-05-07 01:32:16', 190000, 1),
(177, 6, 6, '2025-04-30 01:34:30', 150000, 1),
(178, 6, 6, '2025-05-07 01:35:57', 150000, 1),
(179, 6, 4, '2025-05-03 00:00:00', 150000, 1),
(180, 6, 5, '2025-05-07 02:30:54', 150000, 1),
(181, 6, 2, '2025-05-07 02:45:34', 150000, 1),
(182, 6, 2, '2025-05-07 02:50:56', 130000, 1),
(183, 6, 3, '2025-05-07 17:28:57', 382500, 1),
(184, 6, 4, '2025-05-07 22:27:35', 560000, 1),
(185, 6, 4, '2025-05-05 00:00:00', 1440000, 1),
(186, 6, 9, '2025-05-11 16:56:08', 1240000, 1),
(187, 6, 4, '2025-05-11 17:01:03', 16704000, 1),
(188, 6, 3, '2025-05-10 00:00:00', 10200000, 1),
(189, 6, 13, '2025-05-09 00:00:00', 14760000, 1),
(190, 6, 14, '2025-05-08 00:00:00', 17880000, 1),
(192, 6, 2, '2025-05-12 13:43:17', 4440000, 1),
(193, 6, 2, '2025-05-12 13:44:54', 16000000, 1),
(194, 6, 9, '2025-05-12 14:53:12', 400000, 1),
(195, 6, 3, '2025-05-16 14:08:29', 1440000, 1),
(196, 6, 9, '2025-05-16 14:08:39', 11656000, 1),
(197, 6, 5, '2025-05-16 14:09:27', 15360000, 1),
(198, 6, 4, '2025-05-16 14:26:59', 1320000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `masach` varchar(255) NOT NULL,
  `tensach` varchar(255) DEFAULT NULL,
  `manxb` int(11) DEFAULT NULL,
  `matacgia` int(11) DEFAULT NULL,
  `matheloai` int(11) DEFAULT NULL,
  `soluongton` int(11) DEFAULT 0,
  `namxuatban` varchar(255) DEFAULT NULL,
  `dongia` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`masach`, `tensach`, `manxb`, `matacgia`, `matheloai`, `soluongton`, `namxuatban`, `dongia`) VALUES
('S1', 'Harry Potter và Hòn Đá Phù Thủy', 1, 1, 5, 811, '1997', 150000),
('S10', 'Dune: Hành tinh cát', 1, 10, 2, 80, '1965', 210000),
('S11', '1984', 2, 11, 2, 359, '1949	', 150000),
('S12', 'Frankenstein', 2, 12, 2, 50, '1818', 140000),
('S13', 'Trò chơi vương quyền', 2, 13, 5, 49, '1996', 190000),
('S14', 'Cô gái có hình xăm rồng', 2, 14, 4, 60, '2005', 160000),
('S15', 'Sherlock Holmes: Tên sát nhân vùng mỏ', 2, 15, 4, 30, '1893', 130000),
('S16', 'Án mạng trên sông Nile', 3, 15, 4, 38, '1937', 150000),
('S17', 'Bí ẩn cung điện Versailles', 3, 16, 4, 58, '2001', 140000),
('S18', 'IT (Gã Hề Ma Quái)', 3, 18, 3, 70, '1986', 180000),
('S19', 'Dracula', 3, 18, 3, 78, '1897', 140000),
('S2', 'Chúa tể những chiếc nhẫn', 1, 1, 1, 197, '1952', 250000),
('S20', 'Bóng ma trong nhà hát', 3, 19, 3, 64, '1910', 130000),
('S21', 'Người đàn bà bí ẩn', 3, 20, 3, 72, '1859', 120000),
('S22', 'Lược sử thời gian', 4, 21, 6, 61, '1988', 200000),
('S23', 'Thế giới phẳng', 4, 23, 8, 80, '2005', 190000),
('S24', 'Cha giàu cha nghèo', 5, 24, 8, 81, '1997', 160000),
('S25', 'One Piece', 4, 24, 9, 66, '1997', 90000),
('S26', 'Naruto', 4, 25, 9, 46, '1999', 90000),
('S27', 'Giải tích căn bản', 4, 24, 10, 88, '1965', 250000),
('S28', 'Cấu trúc dữ liệu và thuật toán', 4, 25, 10, 222, '1990', 270000),
('S29', 'Sacha', 4, 1, 1, 0, '2018', 100000),
('S3', 'Những kẻ khốn khổ', 1, 2, 1, 99, '1862', 200000),
('S4', 'Bố già', 1, 4, 1, 33, '1969', 160000),
('S40', 'TestExcel1', 1, 1, 1, 123, '2012', 1000),
('S41', 'TestExcel2', 1, 1, 1, 123, '2012', 1000),
('S42', 'TestExcel3', 1, 1, 1, 123, '2012', 1000),
('S5', 'Đắc Nhân Tâm', 1, 5, 7, 51, '1936', 120000),
('S6', '7 Thói quen của người thành đạt', 2, 6, 7, 149, '1989', 140000),
('S7', 'Nhà giả kim', 1, 8, 1, 59, '1988', 130000),
('S8', 'Tội ác và trừng phạt	', 1, 8, 1, 74, '1866', 170000),
('S9', 'Chiến tranh và hòa bình	', 1, 9, 1, 939, '1869', 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `matacgia` int(11) NOT NULL,
  `tentacgia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`matacgia`, `tentacgia`) VALUES
(1, 'J.R.R. Tolkien'),
(2, 'Victor Hugo'),
(3, 'Mario Puzo'),
(4, 'Dale Carnegie'),
(5, 'Stephen R. Covey'),
(6, 'Masashi Kishimoto'),
(7, 'Paulo Coelho'),
(8, 'Fyodor Dostoevsky'),
(9, 'Lev Tolstoy'),
(10, 'Frank Herbert'),
(11, 'George Orwell'),
(12, 'Mary Shelley'),
(13, 'George R.R. Martin'),
(14, 'Stieg Larsson'),
(15, 'Arthur Conan Doyle'),
(16, 'Agatha Christie'),
(17, 'Jean-Christian Petitfils'),
(18, 'Stephen King'),
(19, 'Bram Stoker'),
(20, 'Gaston Leroux'),
(21, 'Wilkie Collins'),
(22, 'Stephen Hawking'),
(23, 'Hugh Trevor-Roper'),
(24, 'Baird T. Spalding'),
(25, 'Thomas L. Friedman'),
(26, 'Robert Kiyosaki & Sharon Lechter'),
(27, 'Eiichiro Oda');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `manv` int(11) NOT NULL,
  `tendangnhap` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `manhomquyen` int(11) NOT NULL,
  `trangthai` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`manv`, `tendangnhap`, `matkhau`, `manhomquyen`, `trangthai`) VALUES
(1, 'trung123', '12345', 3, 1),
(3, 'thuan123', '12345', 2, 1),
(4, 'khai123', '12345', 2, 1),
(5, 'dang123', '12345', 2, 1),
(6, 'admin', '12345', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `matheloai` int(11) NOT NULL,
  `tentheloai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`matheloai`, `tentheloai`) VALUES
(1, 'Tiểu thuyết'),
(2, 'Khoa học viễn tưởng'),
(3, 'Kinh dị'),
(4, 'Trinh thám'),
(5, 'Kỳ ảo'),
(6, 'Lịch sử'),
(7, 'Tâm lý, kỹ năng sống'),
(8, 'Kinh doanh, đầu tư'),
(9, 'Truyện tranh, manga'),
(10, 'Sách giáo khoa, tham khảo');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`maphieunhap`,`masach`);

--
-- Chỉ mục cho bảng `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`,`masach`);

--
-- Chỉ mục cho bảng `ctquyen`
--
ALTER TABLE `ctquyen`
  ADD PRIMARY KEY (`manhomquyen`,`machucnang`,`hanhdong`);

--
-- Chỉ mục cho bảng `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  ADD PRIMARY KEY (`machucnang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makm`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`mancc`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`manxb`);

--
-- Chỉ mục cho bảng `nhomquyen`
--
ALTER TABLE `nhomquyen`
  ADD PRIMARY KEY (`manhomquyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD KEY `FK_phieunhap_taikhoan` (`manv`),
  ADD KEY `FK_phieunhap_nhacungcap` (`mancc`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`),
  ADD KEY `FK_phieuxuat_khachhang` (`makh`),
  ADD KEY `FK_phieuxuat_taikhoan` (`manv`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`masach`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`matacgia`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `FK_taikhoan_nhomquyen` (`manhomquyen`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`matheloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  MODIFY `machucnang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `makm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `mancc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `manxb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhomquyen`
--
ALTER TABLE `nhomquyen`
  MODIFY `manhomquyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `maphieuxuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `matacgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `matheloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_phieunhap_nhacungcap` FOREIGN KEY (`mancc`) REFERENCES `nhacungcap` (`mancc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieunhap_taikhoan` FOREIGN KEY (`manv`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `FK_phieuxuat_khachhang` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieuxuat_taikhoan` FOREIGN KEY (`manv`) REFERENCES `taikhoan` (`manv`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_taikhoan_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_taikhoan_nhomquyen` FOREIGN KEY (`manhomquyen`) REFERENCES `nhomquyen` (`manhomquyen`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
