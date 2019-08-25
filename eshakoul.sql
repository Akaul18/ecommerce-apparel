-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 24, 2018 at 08:52 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `eshakoul`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `prod_id` varchar(10) NOT NULL,
  `size` text NOT NULL,
  `color` text NOT NULL,
  `custom_color` varchar(100) NOT NULL,
  `other_details` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `total` varchar(300) NOT NULL,
  `total_c` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `prod_id`, `size`, `color`, `custom_color`, `other_details`, `quantity`, `total`, `total_c`) VALUES
(17, 'ek151', 'S', 'Same as sample', '', '', 1, '42,560', 42560);

-- --------------------------------------------------------

--
-- Table structure for table `clientImages`
--

CREATE TABLE `clientImages` (
  `id` int(11) NOT NULL,
  `img_name` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientImages`
--

INSERT INTO `clientImages` (`id`, `img_name`) VALUES
(1, 'img0.jpg'),
(2, 'img1.jpg'),
(3, 'img2.jpg'),
(4, 'img3.jpg'),
(5, 'img4.jpg'),
(6, 'img5.jpg'),
(7, 'img6.jpg'),
(8, 'img7.jpg'),
(9, 'img8.jpg'),
(10, 'img9.jpg'),
(11, 'img10.jpg'),
(12, 'img11.jpg'),
(13, 'img12.jpg'),
(14, 'img13.jpg'),
(15, 'img14.jpg'),
(16, 'img15.jpg'),
(17, 'img16.jpg'),
(18, 'img17.jpg'),
(19, 'img18.jpg'),
(20, 'img19.jpg'),
(21, 'img20.jpg'),
(22, 'img21.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `prod_id` varchar(20) NOT NULL,
  `prod_name` text NOT NULL,
  `prod_code` int(11) NOT NULL,
  `prod_type` tinytext NOT NULL,
  `bestseller` tinytext NOT NULL,
  `cover` tinyint(1) NOT NULL,
  `prod_mrp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prod_id`, `prod_name`, `prod_code`, `prod_type`, `bestseller`, `cover`, `prod_mrp`) VALUES
(1, 'ek001', 'Mint Green Gota pati kurta set', 1, 'kurta', '', 1, '14,000'),
(2, 'ek002', 'Mint Green Gota pati kurta set', 1, 'kurta', '', 0, '14,000'),
(3, 'ek003', 'Mint Green Gota pati kurta set', 1, 'kurta', '', 0, '14,000'),
(4, 'ek004', 'Magenta lehenga set', 2, 'lehenga', '', 1, '22,000'),
(5, 'ek005', 'Magenta lehenga set', 2, 'lehenga', '', 0, '22,000'),
(6, 'ek006', 'Magenta lehenga set', 2, 'lehenga', '', 0, '22,000'),
(7, 'ek007', 'Maroon gota pati gown', 3, 'gown', '', 1, '15,000'),
(8, 'ek008', 'Maroon gota pati gown', 3, 'gown', '', 0, '15,000'),
(9, 'ek009', 'Maroon gota pati gown', 3, 'gown', '', 0, '15,000'),
(10, 'ek010', 'Teal Green Crop top set', 4, 'croptop&skirt', '', 1, '15,000'),
(11, 'ek011', 'Teal Green Crop top set', 4, 'croptop&skirt', '', 0, '15,000'),
(12, 'ek012', 'Teal Green Crop top set', 4, 'croptop&skirt', '', 0, '15,000'),
(13, 'ek013', 'Cream anakali set', 5, 'anarkali', '', 1, '25,000'),
(14, 'ek014', 'Cream anakali set', 5, 'anarkali', '', 0, '25,000'),
(15, 'ek015', 'Black gota pati lengha set', 6, 'lehenga', '1', 1, '18,000'),
(16, 'ek016', 'Black gota pati lengha set', 6, 'lehenga', '', 0, '18,000'),
(17, 'ek017', 'Black gota pati lengha set', 6, 'lehenga', '', 0, '18,000'),
(18, 'ek018', 'Orange jacket lehenga', 7, 'lehenga', '', 1, '25,000'),
(19, 'ek019', 'Orange jacket lehenga', 7, 'lehenga', '', 0, '25,000'),
(20, 'ek020', 'Orange jacket lehenga', 7, 'lehenga', '', 0, '25,000'),
(21, 'ek021', 'Cream lengha set', 8, 'lehenga', '1', 1, '22,000'),
(22, 'ek022', 'Cream lengha set', 8, 'lehenga', '', 0, '22,000'),
(23, 'ek023', 'Cream lengha set', 8, 'lehenga', '', 0, '22,000'),
(24, 'ek024', 'Aqua Blue crop top set', 9, 'croptop&skirt', '', 1, '15,000'),
(25, 'ek025', 'Aqua Blue crop top set', 9, 'croptop&skirt', '', 0, '15,000'),
(26, 'ek026', 'Aqua Blue crop top set', 9, 'croptop&skirt', '', 0, '15,000'),
(27, 'ek027', 'Magenta lehenga set', 10, 'lehenga', '', 1, '25,000'),
(28, 'ek028', 'Magenta lehenga set', 10, 'lehenga', '', 0, '25,000'),
(29, 'ek029', 'Magenta lehenga set', 10, 'lehenga', '', 0, '25,000'),
(30, 'ek030', 'Bright pink crop top set', 11, 'croptop&skirt', '', 1, '15,000'),
(31, 'ek031', 'Bright pink crop top set', 11, 'croptop&skirt', '', 0, '15,000'),
(32, 'ek032', 'Bright pink crop top set', 11, 'croptop&skirt', '', 0, '15,000'),
(33, 'ek033', 'Lavender lehenga set', 41, 'lehenga', '', 1, '20,160'),
(34, 'ek034', 'Lavender lehenga set', 41, 'lehenga', '', 0, '20,160'),
(35, 'ek035', 'Lavender lehenga set', 41, 'lehenga', '', 0, '20,160'),
(36, 'ek036', 'Baby pink sharara set   ', 42, 'sharara', '1', 1, '28,000'),
(37, 'ek037', 'Baby pink sharara set   ', 42, 'sharara', '', 0, '28,000'),
(38, 'ek038', 'Baby pink sharara set   ', 42, 'sharara', '', 0, '28,000'),
(39, 'ek039', 'Baby pink sharara set   ', 42, 'sharara', '', 0, '28,000'),
(40, 'ek040', 'Purple Crop top set', 43, 'croptop&skirt', '', 1, '20,160'),
(41, 'ek041', 'Purple Crop top set', 43, 'croptop&skirt', '', 0, '20,160'),
(42, 'ek042', 'Purple Crop top set', 43, 'croptop&skirt', '', 0, '20,160'),
(43, 'ek043', 'Black crop top set', 44, 'croptop&skirt', '1', 1, '21,280'),
(44, 'ek044', 'Black crop top set', 44, 'croptop&skirt', '', 0, '21,280'),
(45, 'ek045', 'Black crop top set', 44, 'croptop&skirt', '', 0, '21,280'),
(46, 'ek046', 'Ice blue Jumpsuit', 45, 'jumpsuits', '', 1, '20,160'),
(47, 'ek047', 'Ice blue Jumpsuit', 45, 'jumpsuits', '', 0, '20,160'),
(48, 'ek048', 'Ice blue Jumpsuit', 45, 'jumpsuits', '', 0, '20,160'),
(49, 'ek049', 'Maroon top & skirt set ', 46, 'croptop&skirt', '', 1, '21,280'),
(50, 'ek050', 'Maroon top & skirt set ', 46, 'croptop&skirt', '', 0, '21,280'),
(51, 'ek051', 'Maroon top & skirt set ', 46, 'croptop&skirt', '', 0, '21,280'),
(52, 'ek052', 'cream lehenga set', 47, 'lehenga', '', 1, '19,040'),
(53, 'ek053', 'cream lehenga set', 47, 'lehenga', '', 0, '19,040'),
(54, 'ek054', 'Mint green cape set', 48, 'cape', '', 1, '29,120'),
(55, 'ek055', 'Mint green cape set', 48, 'cape', '', 0, '29,120'),
(56, 'ek056', 'Mint green cape set', 48, 'cape', '', 0, '29,120'),
(57, 'ek057', 'Onion pink cape set', 12, 'cape', '', 1, '28,000'),
(58, 'ek058', 'Onion pink cape set', 12, 'cape', '', 0, '28,000'),
(59, 'ek059', 'Onion pink cape set', 12, 'cape', '', 0, '28,000'),
(60, 'ek060', 'Coral Jacket Lehenga', 13, 'lehenga', '', 1, '50,000'),
(61, 'ek061', 'Coral Jacket Lehenga', 13, 'lehenga', '', 0, '50,000'),
(62, 'ek062', 'Coral Jacket Lehenga', 13, 'lehenga', '', 0, '50,000'),
(63, 'ek063', 'Baby pink allover lehenga', 14, 'lehenga', '', 1, '55,000'),
(64, 'ek064', 'Baby pink allover lehenga', 14, 'lehenga', '', 0, '55,000'),
(65, 'ek065', 'Baby pink allover lehenga', 14, 'lehenga', '', 0, '55,000'),
(66, 'ek066', 'Cream anakali with jacket set', 49, 'anarkali', '', 1, '28,000'),
(67, 'ek067', 'Cream anakali with jacket set', 49, 'anarkali', '', 0, '28,000'),
(68, 'ek068', 'Cream anakali with jacket set', 49, 'anarkali', '', 0, '28,000'),
(69, 'ek069', 'Lime Yellow anarkali', 15, 'anarkali', '', 1, '23,000'),
(70, 'ek070', 'Lime Yellow anarkali', 15, 'anarkali', '', 0, '23,000'),
(71, 'ek071', 'Lime Yellow anarkali', 15, 'anarkali', '', 0, '23,000'),
(72, 'ek072', 'Ice Blue Jumpsuit', 16, 'jumpsuits', '', 1, '18,000'),
(73, 'ek073', 'Ice Blue Jumpsuit', 16, 'jumpsuits', '', 0, '18,000'),
(74, 'ek074', 'Ice Blue Jumpsuit', 16, 'jumpsuits', '', 0, '18,000'),
(75, 'ek075', 'Offwhite Sharara set', 28, 'sharara', '', 0, '31,360'),
(76, 'ek076', 'cream suit set', 50, '', '', 0, '24,640'),
(77, 'ek077', 'cream suit set', 50, '', '', 1, '24,640'),
(78, 'ek078', 'Ice Blue sharara set', 17, 'sharara', '', 1, '25,000'),
(79, 'ek079', 'Ice Blue sharara set', 17, 'sharara', '', 0, '25,000'),
(80, 'ek080', 'Ice Blue sharara set', 17, 'sharara', '', 0, '25,000'),
(81, 'ek081', 'Baby pink anarkali set', 18, 'anarkali', '', 0, '28,000'),
(82, 'ek082', 'Baby pink anarkali set', 18, 'anarkali', '', 1, '28,000'),
(83, 'ek083', 'Baby pink anarkali set', 18, 'anarkali', '', 0, '28,000'),
(84, 'ek084', 'Coral sharara set', 19, 'sharara', '', 1, '28,000'),
(85, 'ek085', 'Coral sharara set', 19, 'sharara', '', 0, '28,000'),
(86, 'ek086', 'Coral sharara set', 19, 'sharara', '', 0, '28,000'),
(87, 'ek087', 'Offwhite offshoulder', 20, 'offshoulder', '', 1, '22,000'),
(88, 'ek088', 'Offwhite offshoulder', 20, 'offshoulder', '', 0, '22,000'),
(89, 'ek089', 'Offwhite offshoulder', 20, 'offshoulder', '', 0, '22,000'),
(90, 'ek090', 'Offwhite backless lehenga set', 21, 'lehenga', '', 0, '25,000'),
(91, 'ek091', 'Offwhite backless lehenga set', 21, 'lehenga', '', 1, '25,000'),
(92, 'ek092', 'Offwhite backless lehenga set', 21, 'lehenga', '', 0, '25,000'),
(93, 'ek093', 'Musturd Crop top set', 51, 'croptop&skirt', '', 1, '20,160'),
(94, 'ek094', 'Musturd Crop top set', 51, 'croptop&skirt', '', 0, '20,160'),
(95, 'ek095', 'Musturd Crop top set', 51, 'croptop&skirt', '', 0, '20,160'),
(96, 'ek096', 'Mint green cape set', 22, 'cape', '', 1, '26,000'),
(97, 'ek097', 'Mint green cape set', 22, 'cape', '', 0, '26,000'),
(98, 'ek098', 'Magenta Lehenga Set', 23, 'lehenga', '', 1, '28,000'),
(99, 'ek099', 'Magenta Lehenga Set', 23, 'lehenga', '', 0, '28,000'),
(100, 'ek100', 'Magenta Lehenga Set', 23, 'lehenga', '', 0, '28,000'),
(101, 'ek101', 'Mint Lehenga Set', 24, 'lehenga', '', 1, '38,000'),
(102, 'ek102', 'Mint Lehenga Set', 24, 'lehenga', '', 0, '38,000'),
(103, 'ek103', 'Black and gold cape set', 25, 'cape', '', 1, '28,000'),
(104, 'ek104', 'Black and gold cape set', 25, 'cape', '', 0, '28,000'),
(105, 'ek105', 'Black and gold lengha set', 26, 'lehenga', '', 1, '58,000'),
(106, 'ek106', 'Black and gold lengha set', 26, 'lehenga', '', 0, '58,000'),
(107, 'ek107', 'Onion Pink crop top and skirt', 27, 'croptop&skirt', '', 1, '25,760'),
(108, 'ek108', 'Onion Pink crop top and skirt', 27, 'croptop&skirt', '', 0, '25,760'),
(109, 'ek109', 'Offwhite Sharara set', 28, 'sharara', '', 1, '31,360'),
(110, 'ek110', 'Offwhite Sharara set', 28, 'sharara', '', 0, '31,360'),
(111, 'ek111', 'Offwhite Sharara set', 28, 'sharara', '', 0, '31,360'),
(112, 'ek112', 'Printed lehenga with thread work blouse', 29, 'lehenga', '', 1, '42,560'),
(113, 'ek113', 'Printed lehenga with thread work blouse and contrasting dupattaPrinted lehenga with thread work blouse', 29, 'lehenga', '', 0, '42,560'),
(114, 'ek114', 'Printed lehenga with thread work blouse', 29, 'lehenga', '', 0, '42,560'),
(115, 'ek115', 'Printed lehenga with thread work blouse', 29, 'lehenga', '', 0, '42,560'),
(116, 'ek116', 'Printed lehenga with thread work blouse', 40, '', '', 1, '42,560'),
(117, 'ek117', 'same as 40', 30, '', '', 0, ''),
(118, 'ek118', 'same as 40', 30, '', '', 0, ''),
(119, 'ek119', 'Printed lehenga with all over hand work', 31, 'lehenga', '', 1, '58,240'),
(120, 'ek120', 'Printed lehenga with all over hand work', 31, 'lehenga', '', 0, '58,240'),
(121, 'ek121', 'Printed lehenga with all over hand work', 31, 'lehenga', '', 0, '58,240'),
(122, 'ek122', 'Printed lehenga with all over hand work', 31, 'lehenga', '', 0, '58,240'),
(123, 'ek123', 'Printed lehenga with all over hand work', 31, 'lehenga', '', 0, '58,240'),
(124, 'ek124', 'Printed lehenga with all over hand work', 31, 'lehenga', '', 0, '58,240'),
(125, 'ek125', 'Printed lehenga with all over hand work', 31, 'lehenga', '', 0, '58,240'),
(126, 'ek126', 'Champagne georgette sharara with top', 32, 'sharara', '', 1, '32,480'),
(127, 'ek127', 'Champagne georgette sharara with top', 32, 'sharara', '', 0, '32,480'),
(128, 'ek128', 'Champagne georgette sharara with top', 32, 'sharara', '', 0, '32,480'),
(129, 'ek129', 'Champagne georgette sharara with top', 32, 'sharara', '', 0, '32,480'),
(130, 'ek130', 'jade green georgette sharara with gota patti', 33, 'sharara', '', 1, '28,000'),
(131, 'ek131', 'jade green georgette sharara with gota patti', 33, 'sharara', '', 0, '28,000'),
(132, 'ek132', 'jade green georgette sharara with gota patti', 33, 'sharara', '', 0, '28,000'),
(133, 'ek133', 'jade green georgette sharara with gota patti', 33, 'sharara', '', 0, '28,000'),
(134, 'ek134', 'jade green georgette sharara with gota patti', 33, 'sharara', '', 0, '28,000'),
(135, 'ek135', 'Blue Anarkali with thread work', 34, 'anarkali', '', 1, '28,000'),
(136, 'ek136', 'Blue Anarkali with thread work', 34, 'anarkali', '', 0, '28,000'),
(137, 'ek137', 'Blue Anarkali with thread work', 34, 'anarkali', '', 0, '28,000'),
(138, 'ek138', 'Blue Anarkali with thread work', 34, 'anarkali', '', 0, '28,000'),
(139, 'ek139', 'Blue Anarkali with thread work', 34, 'anarkali', '', 0, '28,000'),
(140, 'ek140', 'Blue Anarkali with thread work', 35, 'anarkali', '', 1, '28,000'),
(141, 'ek141', 'Red Anarkali with thread work', 36, 'anarkali', '', 1, '28,000'),
(142, 'ek142', 'Yellow georgette jumpsuit with gota patti', 37, 'jumpsuit', '', 1, '20,160'),
(143, 'ek143', 'White georgette plazzo & matching crop top', 38, 'croptop&skirt', '', 1, '19,040'),
(144, 'ek144', 'White georgette plazzo and matching crop top', 38, 'croptop&skirt', '', 0, '19,040'),
(145, 'ek145', 'White georgette plazzo and matching crop top', 38, 'croptop&skirt', '', 0, '19,040'),
(146, 'ek146', 'White georgette plazzo and matching crop top', 38, 'croptop&skirt', '', 0, '19,040'),
(147, 'ek147', 'White georgette plazzo and matching crop top', 38, 'croptop&skirt', '', 0, '19,040'),
(148, 'ek148', 'Anarkali with thread work on the bodice', 39, 'anarkali', '', 1, '28,000'),
(149, 'ek149', 'Anarkali with thread work on the bodice', 39, 'anarkali', '', 0, '28,000'),
(150, 'ek150', 'Printed lehenga with thread work blouse', 40, 'lehenga', '', 0, '42,560'),
(151, 'ek151', 'Printed lehenga with thread work blouse', 40, 'lehenga', '', 1, '42,560'),
(152, 'ek152', 'Printed lehenga with thread work blouse', 40, 'lehenga', '', 0, '42,560');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientImages`
--
ALTER TABLE `clientImages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `clientImages`
--
ALTER TABLE `clientImages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;