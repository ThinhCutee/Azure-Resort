-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 13, 2024 at 05:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khunghiduong`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL,
  `trangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_pass`, `trangThai`) VALUES
(1, 'pnnthuy', 'thuy091102', 1),
(2, 'ducthin', 'cute1402', 1);

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(10) NOT NULL,
  `danhMuc` varchar(255) NOT NULL,
  `tieuDe` varchar(255) NOT NULL,
  `ngayDang` datetime NOT NULL,
  `doanMoDau` varchar(1000) NOT NULL,
  `noiDung` varchar(2000) NOT NULL,
  `tuKhoa` varchar(255) NOT NULL,
  `trangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangcauhoi`
--

CREATE TABLE `bangcauhoi` (
  `id` int(10) NOT NULL,
  `cauHoi` varchar(1000) NOT NULL,
  `cauTraLoi` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goidichvu`
--

CREATE TABLE `goidichvu` (
  `id` int(11) NOT NULL,
  `tenGoi` varchar(255) NOT NULL,
  `gia` double NOT NULL,
  `moTa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `goidichvu`
--

INSERT INTO `goidichvu` (`id`, `tenGoi`, `gia`, `moTa`) VALUES
(1, 'Gói Discovery', 1000000, 'buffet sáng, bar, gym, hồ bơi'),
(2, 'Gói Adventure', 900000, 'Bữa sáng, bữa tối sang trọng, hoạt động ngoại khóa, đưa đón sân bay'),
(3, 'Membership-meo', 500000, 'spa, gym, tiệc tối private'),
(4, 'Không', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `phieuDatPhongID` int(11) NOT NULL,
  `trangThai` varchar(50) NOT NULL,
  `tongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_phong`
--

CREATE TABLE `image_phong` (
  `id_image_phong` int(10) NOT NULL,
  `id_phong` int(10) NOT NULL,
  `anh_phong` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `image_phong`
--

INSERT INTO `image_phong` (`id_image_phong`, `id_phong`, `anh_phong`) VALUES
(1, 1, 'room-1.jpg'),
(2, 1, 'room-2.jpg'),
(3, 1, 'room-3.jpg'),
(4, 2, 'room-1.jpg'),
(5, 2, 'room-2.jpg'),
(6, 3, 'standardroom_1878.jpg'),
(7, 3, 'super.jpg'),
(9, 4, 'room-1-2.jpg'),
(10, 4, 'room-1-3.jpg'),
(11, 4, 'room-1-4.jpg'),
(21, 3, 'don-vip-2.jpg'),
(22, 3, 'don-vip-3.jpg'),
(23, 15, 'doi-vip-3.jpg'),
(24, 15, 'doi-vip-4.jpg'),
(25, 2, 'don-vip-3.jpg'),
(26, 12, 'doi-vip-2.jpg'),
(27, 12, 'super.jpg'),
(28, 13, 'standardroom_1878.jpg'),
(29, 13, 'super.jpg'),
(30, 13, 'thong-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `ho` varchar(50) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diaChi` varchar(50) NOT NULL,
  `hinhAnh` varchar(50) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(100) NOT NULL DEFAULT 1,
  `is_veryfied` int(11) NOT NULL DEFAULT 0,
  `token_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `ho`, `ten`, `sdt`, `email`, `diaChi`, `hinhAnh`, `password`, `token`, `date`, `status`, `is_veryfied`, `token_created_at`) VALUES
(44, 'Nguyễn Đức', 'Thịnh', '0982706282', 'ducthinh140202@gmail.com', '281/18 Bình Lợi', 'thinh.jpg', '$2y$10$P6T/6I6xoSlWjQ8NCidoxeUfklqICUsMda6qp4Y10Zb27/R/ezbim', '3b4f37b5f414954c77eeba990b4c0fc6', '2024-05-15 13:54:51', 1, 1, '2024-05-20'),
(62, 'Đức Thịnh Nguyễn', ' ', '0123456789', 'ngducthinhh.1402@gmail.com', ' ', 'thinh.jpg', '$2y$10$o2uEC6XOrsxTjB7tubmL1uWTaPNS9bksfdp1iyukGM44P8tJdl2iW', '626c1e29f720c9136029aa900d5a03ec', '2024-05-25 13:44:42', 1, 1, '2024-05-25'),
(63, 'Nguyễn ', 'An', '0937992113', 'nguyenan@gmail.com', '12 Nguyễn Văn Bảo, Gò Vấp', NULL, 'b59c67bf196a4758191e42f76670ceba', '0ce4833416211548bac36aa117c43d2a', '2024-05-28 14:20:29', 1, 1, '2024-05-28'),
(69, 'Phùng Nguyễn Như Thùy', ' ', '0123456789', 'nhuthuy9112002@gmail.com', ' ', NULL, '1111', 'd97c43a6b6d7c2b8b742cd1615004541', '2024-05-29 08:34:17', 1, 1, '2024-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `khachsan`
--

CREATE TABLE `khachsan` (
  `id` int(11) NOT NULL,
  `tenKhachSan` varchar(50) NOT NULL,
  `diaChi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `khachsan`
--

INSERT INTO `khachsan` (`id`, `tenKhachSan`, `diaChi`) VALUES
(1, 'azure black', '123 Trần Phú, Nha Trang'),
(2, 'azure private gold', '222 Trần Phú, Nha Trang');

-- --------------------------------------------------------

--
-- Table structure for table `phieudatphong`
--

CREATE TABLE `phieudatphong` (
  `id` int(11) NOT NULL,
  `uuDaiID` varchar(100) DEFAULT NULL,
  `goiDichVuID` int(11) DEFAULT NULL,
  `khachHangID` int(11) NOT NULL,
  `phongID` int(11) NOT NULL,
  `soNguoi` int(11) NOT NULL,
  `tongTien` int(11) NOT NULL,
  `ngayDatPhong` date NOT NULL,
  `ngayTraPhong` date NOT NULL,
  `trangThai` int(10) NOT NULL,
  `ngayNhanPhong` date NOT NULL,
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id` int(11) NOT NULL,
  `khachSanID` int(11) NOT NULL,
  `tenPhong` varchar(100) NOT NULL,
  `soPhong` int(11) NOT NULL,
  `gia` double NOT NULL,
  `hangPhong` int(10) NOT NULL,
  `loaiPhong` int(10) NOT NULL,
  `dienTich` double NOT NULL,
  `songuoi` int(11) NOT NULL,
  `trangThai` int(11) NOT NULL,
  `hinhAnh` varchar(50) DEFAULT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `khachSanID`, `tenPhong`, `soPhong`, `gia`, `hangPhong`, `loaiPhong`, `dienTich`, `songuoi`, `trangThai`, `hinhAnh`, `mota`) VALUES
(1, 1, 'Deluxe Garden V', 101, 1800000, 0, 0, 50, 3, 0, 'room-5.jpg', 'Khách sạn chúng tôi mang đến không gian sang trọng, tiện nghi hiện đại và dịch vụ chu đáo. Tận hưởng giường ngủ êm ái, Wi-Fi miễn phí, và vị trí trung tâm. Đặt phòng ngay hôm nay để trải nghiệm tuyệt vời!'),
(2, 2, 'Club Peninsula VIP', 909, 9000000, 1, 0, 100, 2, 1, 'don-vip-2.jpg', ''),
(3, 1, 'Superior Room', 102, 2100000, 1, 0, 100, 2, 1, 'super.jpg', ''),
(4, 1, 'Silverland Room', 103, 1200000, 0, 0, 100, 4, 1, 'room-1.jpg', ''),
(12, 2, 'Gold room', 109, 4000000, 1, 0, 50, 3, 1, 'room-1-3.jpg', ''),
(13, 2, 'Deluxe View', 333, 5555555, 1, 1, 100, 6, 0, 'doi-vip-3.jpg', ''),
(15, 2, 'ISam View S', 112, 1999000, 2, 1, 80, 4, 0, 'thong-1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `uudai`
--

CREATE TABLE `uudai` (
  `id` varchar(100) NOT NULL,
  `ngayBatDau` date NOT NULL,
  `ngayKetThuc` date NOT NULL,
  `giaGiam` double NOT NULL,
  `moTa` varchar(200) DEFAULT NULL,
  `tenUuDai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `uudai`
--

INSERT INTO `uudai` (`id`, `ngayBatDau`, `ngayKetThuc`, `giaGiam`, `moTa`, `tenUuDai`) VALUES
('0', '2024-05-01', '2024-06-30', 0, NULL, '0'),
('UDAZ41036', '2024-05-29', '2024-06-01', 30, 'Meo meo ', 'Ưu đãi member'),
('UDAZ8888', '2024-05-22', '2024-05-30', 10, 'hi', 'Đón hè cùng Azure');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bangcauhoi`
--
ALTER TABLE `bangcauhoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goidichvu`
--
ALTER TABLE `goidichvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phieuDatPhongID` (`phieuDatPhongID`);

--
-- Indexes for table `image_phong`
--
ALTER TABLE `image_phong`
  ADD PRIMARY KEY (`id_image_phong`),
  ADD KEY `idphong` (`id_phong`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuDaiID` (`uuDaiID`),
  ADD KEY `goiDichVuID` (`goiDichVuID`),
  ADD KEY `khachHangID` (`khachHangID`),
  ADD KEY `phongID` (`phongID`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khachSanID` (`khachSanID`);

--
-- Indexes for table `uudai`
--
ALTER TABLE `uudai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bangcauhoi`
--
ALTER TABLE `bangcauhoi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goidichvu`
--
ALTER TABLE `goidichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_phong`
--
ALTER TABLE `image_phong`
  MODIFY `id_image_phong` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`phieuDatPhongID`) REFERENCES `phieudatphong` (`id`);

--
-- Constraints for table `image_phong`
--
ALTER TABLE `image_phong`
  ADD CONSTRAINT `idphong` FOREIGN KEY (`id_phong`) REFERENCES `phong` (`id`);

--
-- Constraints for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD CONSTRAINT `phieudatphong_ibfk_5` FOREIGN KEY (`goiDichVuID`) REFERENCES `goidichvu` (`id`),
  ADD CONSTRAINT `phieudatphong_ibfk_6` FOREIGN KEY (`khachHangID`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `phieudatphong_ibfk_7` FOREIGN KEY (`phongID`) REFERENCES `phong` (`id`),
  ADD CONSTRAINT `phieudatphong_ibfk_8` FOREIGN KEY (`uuDaiID`) REFERENCES `uudai` (`id`);

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`khachSanID`) REFERENCES `khachsan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
