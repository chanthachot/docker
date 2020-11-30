-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 02:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qrcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `path`
--

CREATE TABLE `path` (
  `path_id` int(11) NOT NULL,
  `path_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `path`
--

INSERT INTO `path` (`path_id`, `path_name`) VALUES
(26, 'คณะวิทยาศาสตร์ มข'),
(44, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `qrbird`
--

CREATE TABLE `qrbird` (
  `qrbird_id` int(11) NOT NULL,
  `qrbird_name` varchar(500) NOT NULL,
  `qrpath_name` varchar(500) NOT NULL,
  `qrbird_lat` varchar(500) NOT NULL,
  `qrbird_lng` varchar(500) NOT NULL,
  `qrbird_bird_sciname` varchar(200) CHARACTER SET utf8 NOT NULL,
  `qrbird_bird_description` mediumtext CHARACTER SET utf8 NOT NULL,
  `qrbird_bird_pic` varchar(1000) NOT NULL,
  `bird_family_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `qrbird`
--

INSERT INTO `qrbird` (`qrbird_id`, `qrbird_name`, `qrpath_name`, `qrbird_lat`, `qrbird_lng`, `qrbird_bird_sciname`, `qrbird_bird_description`, `qrbird_bird_pic`, `bird_family_name`) VALUES
(154, 'นกเป็ดแดง', 'อาคาร SC08 คณะวิทย์', '16.475753548658833', '102.82306201057607', 'Dendrocygna javanica', 'เป็ดแดงมีปากยาวสีเทา คอยาว และขายาว หน้าผากและกลางกระหม่อมสีน้ำตาลปนเทาคล้ำ หัว ลำคอ และอกสีเนื้อแกมเทาหม่น ใต้คอสีจางจนขาว และด้านข้างและหลังคอตอนบนมีสีเข้มกว่า สีข้างและท้องสีแดงอมน้ำตาลปนเหลือง มีลายขีดสีครีมตามแนวสีข้างตอนบน ขนคลุมใต้โคนหางและบริเวณก้นสีค่อนข้างขาว หลัง ไหล่ ขนคลุมหัวปีกใหญ่และขนคลุมหัวปีกกลางสีน้ำตาลคล้ำ มีลายเกล็ดสีแดงแกมน้ำตาล ขนคลุมหัวปีกน้อยสีน้ำตาลแกมแดง ขนคลุมใต้หัวปีกสีออกดำ ขนกลางปีกและขนปลายปีกสีน้ำตาลไหม้ ตะโพกสีค่อนข้างดำ ขนคลุมบนโคนหางสีน้ำตาลแกมแดงสด ขนหางสีน้ำตาลไหม้ ขาและนิ้วเท้าสีเทาปนฟ้าคล้ำ', 'Lesser Whistling-duck.jpg', 'วงศ์เป็ดและห่าน : Duck, Geese & Swans');

-- --------------------------------------------------------

--
-- Table structure for table `qrcodes`
--

CREATE TABLE `qrcodes` (
  `qrcode_id` int(11) NOT NULL,
  `qrcode_pathname` longtext NOT NULL,
  `qrcode_pathlat` longtext NOT NULL,
  `qrcode_pathlng` longtext NOT NULL,
  `qrbird_name` longtext NOT NULL,
  `qrbird_lat` longtext NOT NULL,
  `qrbird_lng` longtext NOT NULL,
  `qrbird_bird_sciname` longtext NOT NULL,
  `qrbird_bird_description` mediumtext NOT NULL,
  `qrbird_bird_pic` longtext NOT NULL,
  `qrcode_link` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `qrcodes`
--

INSERT INTO `qrcodes` (`qrcode_id`, `qrcode_pathname`, `qrcode_pathlat`, `qrcode_pathlng`, `qrbird_name`, `qrbird_lat`, `qrbird_lng`, `qrbird_bird_sciname`, `qrbird_bird_description`, `qrbird_bird_pic`, `qrcode_link`) VALUES
(318, 'อาคาร SC08 คณะวิทย์', '16.475753548658833', '102.82306201057607', 'นกเป็ดแดง/', '16.475753548658833/', '102.82306201057607/', 'Dendrocygna javanica/', 'เป็ดแดงมีปากยาวสีเทา คอยาว และขายาว หน้าผากและกลางกระหม่อมสีน้ำตาลปนเทาคล้ำ หัว ลำคอ และอกสีเนื้อแกมเทาหม่น ใต้คอสีจางจนขาว และด้านข้างและหลังคอตอนบนมีสีเข้มกว่า สีข้างและท้องสีแดงอมน้ำตาลปนเหลือง มีลายขีดสีครีมตามแนวสีข้างตอนบน ขนคลุมใต้โคนหางและบริเวณก้นสีค่อนข้างขาว หลัง ไหล่ ขนคลุมหัวปีกใหญ่และขนคลุมหัวปีกกลางสีน้ำตาลคล้ำ มีลายเกล็ดสีแดงแกมน้ำตาล ขนคลุมหัวปีกน้อยสีน้ำตาลแกมแดง ขนคลุมใต้หัวปีกสีออกดำ ขนกลางปีกและขนปลายปีกสีน้ำตาลไหม้ ตะโพกสีค่อนข้างดำ ขนคลุมบนโคนหางสีน้ำตาลแกมแดงสด ขนหางสีน้ำตาลไหม้ ขาและนิ้วเท้าสีเทาปนฟ้าคล้ำ/', 'birds-exploring.tk/birdexploring-backend/addBirdDB/images/Lesser Whistling-duck.jpg/', 'birds-exploring.tk/birdexploring-backend/addPath/qrcodelib/userQr/534124646.png');

-- --------------------------------------------------------

--
-- Table structure for table `qrpath`
--

CREATE TABLE `qrpath` (
  `qrpath_id` int(30) NOT NULL,
  `qrpath_name` varchar(500) NOT NULL,
  `path_name` varchar(500) NOT NULL,
  `path_id` int(11) NOT NULL,
  `qrpath_address` varchar(500) NOT NULL,
  `qrpath_lat` varchar(500) NOT NULL,
  `qrpath_lng` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `qrpath`
--

INSERT INTO `qrpath` (`qrpath_id`, `qrpath_name`, `path_name`, `path_id`, `qrpath_address`, `qrpath_lat`, `qrpath_lng`) VALUES
(87, 'test', 'test', 44, 'ถนน คสล. บ้านโนนม่วง ตำบล ศิลา อำเภอเมืองขอนแก่น ขอนแก่น 40000 ประเทศไทย ', '16.480061469129698', '102.8186749657493'),
(88, 'อาคาร SC08 คณะวิทย์', 'คณะวิทยาศาสตร์ มข', 26, '40000, ตำบล ศิลา อำเภอเมืองขอนแก่น ขอนแก่น 40000 ประเทศไทย', '16.475753548658833', '102.82306201057607'),
(89, 'ตึก 6', 'คณะวิทยาศาสตร์ มข', 26, 'Unnamed Road, ตำบล ศิลา อำเภอเมืองขอนแก่น ขอนแก่น 40000 ประเทศไทย', '16.474532801529573', '102.82303864891973');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(3) NOT NULL,
  `username` varchar(13) NOT NULL,
  `password` varchar(10) NOT NULL,
  `type_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `type_id`) VALUES
(1, 'admin', '1234', 1),
(8, 'admin2', '1234', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `type_id` int(1) NOT NULL,
  `type_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`type_id`, `type_name`) VALUES
(1, 'Super Admin'),
(2, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `path`
--
ALTER TABLE `path`
  ADD PRIMARY KEY (`path_id`);

--
-- Indexes for table `qrbird`
--
ALTER TABLE `qrbird`
  ADD PRIMARY KEY (`qrbird_id`);

--
-- Indexes for table `qrcodes`
--
ALTER TABLE `qrcodes`
  ADD PRIMARY KEY (`qrcode_id`);

--
-- Indexes for table `qrpath`
--
ALTER TABLE `qrpath`
  ADD PRIMARY KEY (`qrpath_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `path`
--
ALTER TABLE `path`
  MODIFY `path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `qrbird`
--
ALTER TABLE `qrbird`
  MODIFY `qrbird_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `qrcodes`
--
ALTER TABLE `qrcodes`
  MODIFY `qrcode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `qrpath`
--
ALTER TABLE `qrpath`
  MODIFY `qrpath_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
