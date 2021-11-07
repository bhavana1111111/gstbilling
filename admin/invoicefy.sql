-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2020 at 06:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoicefy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admistrator`
--

CREATE TABLE `admistrator` (
  `A_Name` varchar(50) NOT NULL,
  `Mob_No` bigint(10) NOT NULL,
  `E_Mail_Id` varchar(50) NOT NULL,
  `User_Id` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admistrator`
--

INSERT INTO `admistrator` (`A_Name`, `Mob_No`, `E_Mail_Id`, `User_Id`, `Password`) VALUES
('Burhanuddin', 7567228092, 'lokhandwalab0@gmail.com', 'BAdmin', 'admin'),
('Nikhil', 9876543211, 'nik@gmail.com', 'NAdmin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bill_series`
--

CREATE TABLE `bill_series` (
  `Client_id` varchar(6) NOT NULL,
  `P_Prefix` varchar(3) NOT NULL,
  `Pr_Prefix` varchar(3) NOT NULL,
  `S_Prefix` varchar(3) NOT NULL,
  `Sr_Prefix` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_series`
--

INSERT INTO `bill_series` (`Client_id`, `P_Prefix`, `Pr_Prefix`, `S_Prefix`, `Sr_Prefix`) VALUES
('A001', 'D', 'E', 'F', 'G'),
('A004', 'viv', 'viv', 'viv', 'viv'),
('A004', 'viv', 'viv', 'viv', 'viv'),
('A005', 'A', 'B', 'C', 'D'),
('A006', 'A', 'B', 'C', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `cat_mast`
--

CREATE TABLE `cat_mast` (
  `Cat_Id` varchar(12) NOT NULL,
  `Cat_Name` varchar(25) NOT NULL,
  `Gst_Rate` int(2) NOT NULL,
  `Client_Id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cat_mast`
--

INSERT INTO `cat_mast` (`Cat_Id`, `Cat_Name`, `Gst_Rate`, `Client_Id`) VALUES
('A001-B001', 'Mobile', 12, 'A001'),
('A001-B002', 'sdf', 28, 'A001'),
('A001-B003', 'Acc', 18, 'A001'),
('A003-B001', 'Laptop', 18, 'A003'),
('A004-B001', 'Washing machine', 18, 'A004'),
('A004-B002', 'Mobile phone', 12, 'A004'),
('A005-B001', 'mob', 12, 'A005'),
('A006-B001', 'Mobile', 12, 'A006');

-- --------------------------------------------------------

--
-- Table structure for table `client_mast`
--

CREATE TABLE `client_mast` (
  `Client_Id` varchar(6) NOT NULL,
  `C_Mail_Id` varchar(50) NOT NULL,
  `C_Name` varchar(50) NOT NULL,
  `Comp_Name` varchar(100) NOT NULL,
  `C_Address` varchar(50) NOT NULL,
  `C_City` varchar(25) NOT NULL,
  `C_State` varchar(25) NOT NULL,
  `C_Pincode` int(6) NOT NULL,
  `C_Gstn_No` varchar(15) NOT NULL,
  `C_Mob_No` bigint(10) NOT NULL,
  `C_Password` varchar(20) NOT NULL,
  `C_Subscription_Dt` date NOT NULL,
  `C_Expiry_Dt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_mast`
--

INSERT INTO `client_mast` (`Client_Id`, `C_Mail_Id`, `C_Name`, `Comp_Name`, `C_Address`, `C_City`, `C_State`, `C_Pincode`, `C_Gstn_No`, `C_Mob_No`, `C_Password`, `C_Subscription_Dt`, `C_Expiry_Dt`) VALUES
('A001', 'lokhandwalab0@gmail.com', 'Burhanuddin', 'Aziz Agency', 'Goya Bazaar', 'Ankleshwar', 'Gujarat', 393001, '24ABFFA8809D1ZO', 7567228092, 'admin', '2020-02-08', '2020-04-30'),
('A002', 'nikhil@gmail.com', 'Nik', '', 'hsiod', 'bharuch', 'gujarat', 392001, '58ASDFG1234A425', 1234567890, 'admin', '2020-02-18', '2020-04-18'),
('A003', 'nikil@gmail.com', 'Nik', '', 'hsiod', 'bharuch', 'gujarat', 392001, '58ASDFG1234A421', 9104724584, 'admin', '2020-02-18', '2020-04-18'),
('A004', 'vivek@gmail.com', 'Vivek Patel', 'Vivek Agencies', 'ankleshwar', 'ankleshwar', 'Gujarat', 392001, '24AMSFA8809D1ZO', 9896989698, 'admin', '2020-02-27', '2020-04-27'),
('A005', 'abc@abc.com', 'Burhan', 'abc', '213', 'asd', 'asf', 123456, '24ABASD8809D1ZO', 8234567899, 'admin', '2020-02-27', '2020-04-27'),
('A006', 'abc@gmail.com', 'Ramnik Sir', 'NcSc', 'Bharuch', 'Bharuch', 'Gujarat', 392001, '24ABFFF8809D1ZO', 9876543211, 'ADMIN', '2020-03-12', '2020-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `cust_mast`
--

CREATE TABLE `cust_mast` (
  `Cust_Id` varchar(12) NOT NULL,
  `Client_Id` varchar(6) NOT NULL,
  `Cust_Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Gstn_No` varchar(15) DEFAULT NULL,
  `Mob_No` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_mast`
--

INSERT INTO `cust_mast` (`Cust_Id`, `Client_Id`, `Cust_Name`, `Address`, `City`, `State`, `Pincode`, `Gstn_No`, `Mob_No`) VALUES
('A001-C001', 'A001', 'Burhanuddin', 'Goya Bazaar', 'Ankleshwar', 'Gujarat', 393001, '', 2147483647),
('A001-C002', 'A001', 'Burhanuddin', 'Goya Bazaar', 'Ankleshwar', 'Gujarat', 393001, '24ABFFA8809D1ZO', 7567228092),
('A004-C001', 'A004', 'Burhan', '213', 'asd', 'asf', 123456, '24SNSFA8809D1ZO', 8545854585),
('A004-C002', 'A004', 'sda', 'asdsd', 'samf', 'guj', 123456, '24SASFA8809X1ZO', 7485965857),
('A005-C001', 'A005', 'abc cust', 'kfjhjgj', 'bharuch', 'gujarat', 392001, '58ASHJG1234A425', 8234567899),
('A006-C001', 'A006', 'Burhan', '213', 'asd', 'asf', 123456, '58ASDGG1234A425', 9104724545);

-- --------------------------------------------------------

--
-- Table structure for table `gst_rate`
--

CREATE TABLE `gst_rate` (
  `Sr_No` int(11) NOT NULL,
  `Gst_Rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gst_rate`
--

INSERT INTO `gst_rate` (`Sr_No`, `Gst_Rate`) VALUES
(1, 12),
(2, 18),
(3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `prod_mast`
--

CREATE TABLE `prod_mast` (
  `Pr_Id` varchar(12) NOT NULL,
  `Cat_Id` varchar(12) NOT NULL,
  `Pr_Name` varchar(50) NOT NULL,
  `Pr_Desc` varchar(100) DEFAULT NULL,
  `Pr_Rate` int(5) NOT NULL,
  `Pr_Stk` int(6) NOT NULL,
  `Client_Id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prod_mast`
--

INSERT INTO `prod_mast` (`Pr_Id`, `Cat_Id`, `Pr_Name`, `Pr_Desc`, `Pr_Rate`, `Pr_Stk`, `Client_Id`) VALUES
('A005-P001', 'A005-B001', 'Xaomi Note 8 pro', 'sdfasda', 12000, 5, 'A005'),
('A005-P002', 'A005-B001', 'Xaomi Note 8 pro', 'asdaslkdm', 12000, 5, 'A005'),
('A006-P001', 'A006-B001', 'S20', 'Mob', 92000, 7, 'A006'),
('P001', 'A001-B001', 'S10 Lite', 'Smart Phone', 35000, 18, 'A001'),
('P002', 'A001-B003', 'S10 Lite Cover', 'lsdvsl', 2500, 48, 'A001'),
('P003', 'A001-B001', 'Abcf', 'adasd', 123, 16, 'A001');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_det`
--

CREATE TABLE `purchase_det` (
  `Inv_No` varchar(12) NOT NULL,
  `Pr_Id` varchar(12) NOT NULL,
  `Pr_Qty` int(3) NOT NULL,
  `C_Qty` int(10) NOT NULL,
  `Amt` int(6) NOT NULL,
  `Disc` int(3) NOT NULL,
  `Gst_Rate` int(2) NOT NULL,
  `Total_Amt` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_det`
--

INSERT INTO `purchase_det` (`Inv_No`, `Pr_Id`, `Pr_Qty`, `C_Qty`, `Amt`, `Disc`, `Gst_Rate`, `Total_Amt`) VALUES
('A001-D1', 'P001', 10, 0, 320000, 120, 12, 358266),
('A001-D1', 'P002', 10, 10, 18000, 120, 18, 21098),
('A001-D2', 'P001', 2, 2, 58000, 0, 12, 64960),
('A001-D3', 'P001', 5, 0, 145000, 0, 12, 162400),
('A001-D3', 'P002', 5, 0, 9000, 100, 18, 10502),
('A001-D4', 'P002', 5, 3, 10000, 1000, 18, 10620),
('A001-D5', 'P001', 10, 5, 299900, 0, 12, 335888),
('A006-A1', 'A006-P001', 5, 2, 450000, 50000, 12, 448000);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_det_temp`
--

CREATE TABLE `purchase_det_temp` (
  `Inv_No` varchar(12) NOT NULL,
  `Pr_Id` varchar(12) NOT NULL,
  `Pr_Qty` int(3) NOT NULL,
  `C_Qty` int(10) NOT NULL,
  `Amt` int(6) NOT NULL,
  `Disc` int(3) NOT NULL,
  `Gst_Rate` int(2) NOT NULL,
  `Total_Amt` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_mast`
--

CREATE TABLE `purchase_mast` (
  `Inv_No` varchar(12) NOT NULL,
  `Inv_Date` date NOT NULL,
  `Supp_Id` varchar(12) NOT NULL,
  `Client_Id` varchar(6) NOT NULL,
  `Final_Amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_mast`
--

INSERT INTO `purchase_mast` (`Inv_No`, `Inv_Date`, `Supp_Id`, `Client_Id`, `Final_Amt`) VALUES
('A001-D1', '2020-02-24', 'A001-S001', 'A001', 379364),
('A001-D2', '2020-02-25', 'A001-S002', 'A001', 64960),
('A001-D3', '2020-02-25', 'A001-S002', 'A001', 172902),
('A001-D4', '2020-02-27', 'A001-S001', 'A001', 10620),
('A001-D5', '2020-03-03', 'A001-S001', 'A001', 42150),
('A004-viv1', '2020-02-27', 'A004-S002', 'A004', 0),
('A004-viv2', '2020-02-20', 'A004-S001', 'A004', 200480),
('A006-A1', '2020-03-12', 'A006-S001', 'A006', 448000);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_ret_det`
--

CREATE TABLE `purchase_ret_det` (
  `Inv_No` varchar(12) NOT NULL,
  `Pr_Id` varchar(12) NOT NULL,
  `Pr_Qty` int(3) NOT NULL,
  `Amt` int(6) NOT NULL,
  `Disc` int(3) NOT NULL,
  `Gst_Rate` int(2) NOT NULL,
  `Total_Amt` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_ret_det`
--

INSERT INTO `purchase_ret_det` (`Inv_No`, `Pr_Id`, `Pr_Qty`, `Amt`, `Disc`, `Gst_Rate`, `Total_Amt`) VALUES
('A001-E10', 'P002', 5, 9000, 500, 18, 10030),
('A001-E11', 'P001', 5, 149950, 0, 12, 167944),
('A001-E5', 'P001', 10, 320000, 120, 12, 358266),
('A001-E6', 'P001', 5, 145000, 0, 12, 162400),
('A001-E7', 'P002', 2, 4000, 800, 18, 3776),
('A001-E8', 'P001', 5, 149950, 0, 12, 167944),
('A001-E9', 'P001', 5, 149950, 0, 12, 167944),
('A006-B1', 'A006-P001', 3, 270000, 150000, 12, 134400);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_ret_det_temp`
--

CREATE TABLE `purchase_ret_det_temp` (
  `Inv_No` varchar(12) NOT NULL,
  `Pr_Id` varchar(12) NOT NULL,
  `Pr_Qty` int(3) NOT NULL,
  `Amt` int(6) NOT NULL,
  `Disc` int(3) NOT NULL,
  `Gst_Rate` int(2) NOT NULL,
  `Total_Amt` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_ret_mast`
--

CREATE TABLE `purchase_ret_mast` (
  `Prn_No` varchar(12) NOT NULL,
  `Prn_Date` date NOT NULL,
  `Org_Inv_No` varchar(12) NOT NULL,
  `Supp_Id` varchar(12) NOT NULL,
  `Client_Id` varchar(6) NOT NULL,
  `Final_Amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_ret_mast`
--

INSERT INTO `purchase_ret_mast` (`Prn_No`, `Prn_Date`, `Org_Inv_No`, `Supp_Id`, `Client_Id`, `Final_Amt`) VALUES
('A001-E1', '2020-02-24', 'A001-D1', 'A001-S001', 'A001', 0),
('A001-E10', '2020-02-25', 'A001-D3', 'A001-S002', 'A001', 0),
('A001-E11', '2020-03-03', 'A001-D5', 'A001-S001', 'A001', 0),
('A001-E2', '2020-02-24', 'A001-D1', 'A001-S001', 'A001', 0),
('A001-E3', '2020-02-24', 'A001-D1', 'A001-S001', 'A001', 0),
('A001-E4', '2020-02-24', 'A001-D1', 'A001-S001', 'A001', 0),
('A001-E5', '2020-02-24', 'A001-D1', 'A001-S001', 'A001', 358266),
('A001-E6', '2020-02-25', 'A001-D3', 'A001-S002', 'A001', 162400),
('A001-E7', '2020-02-27', 'A001-D4', 'A001-S001', 'A001', 3776),
('A001-E8', '2020-03-03', 'A001-D5', 'A001-S001', 'A001', 0),
('A001-E9', '2020-03-03', 'A001-D5', 'A001-S001', 'A001', 0),
('A006-B1', '2020-03-12', 'A006-A1', 'A006-S001', 'A006', 134400);

-- --------------------------------------------------------

--
-- Table structure for table `sales_det`
--

CREATE TABLE `sales_det` (
  `Inv_No` varchar(12) NOT NULL,
  `Pr_Id` varchar(12) NOT NULL,
  `Pr_Qty` int(3) NOT NULL,
  `C_Qty` int(3) NOT NULL,
  `Amt` int(6) NOT NULL,
  `Disc` int(3) NOT NULL,
  `Gst_Rate` int(3) NOT NULL,
  `Total_Amt` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_det`
--

INSERT INTO `sales_det` (`Inv_No`, `Pr_Id`, `Pr_Qty`, `C_Qty`, `Amt`, `Disc`, `Gst_Rate`, `Total_Amt`) VALUES
('A001-F1', 'P001', 5, 5, 175000, 12000, 12, 182560),
('A001-F1', 'P002', 1, 1, 2500, 0, 18, 2950),
('A001-F1', 'P003', 1, 1, 123, 0, 12, 138),
('A001-F2', 'P001', 1, 1, 35000, 1200, 12, 37856),
('A001-F3', 'P001', 1, 0, 35000, 8500, 12, 29680),
('A001-F4', 'P002', 9, 0, 22500, 5, 18, 26544),
('A001-F5', 'P001', 5, 0, 175000, 10000, 12, 184800),
('A001-F6', 'P001', 2, 1, 70000, 2000, 12, 76160),
('A001-F7', 'P001', 1, 1, 35000, 0, 12, 39200),
('A001-F7', 'P002', 1, 1, 2500, 0, 18, 2950),
('A001-F8', 'P002', 1, 0, 2500, 0, 18, 2950);

-- --------------------------------------------------------

--
-- Table structure for table `sales_det_temp`
--

CREATE TABLE `sales_det_temp` (
  `Inv_No` varchar(12) NOT NULL,
  `Pr_Id` varchar(12) NOT NULL,
  `Pr_Qty` int(3) NOT NULL,
  `C_Qty` int(3) NOT NULL,
  `Amt` int(6) NOT NULL,
  `Disc` int(3) NOT NULL,
  `Gst_Rate` int(3) NOT NULL,
  `Total_Amt` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_mast`
--

CREATE TABLE `sales_mast` (
  `Inv_No` varchar(12) NOT NULL,
  `Inv_Date` date NOT NULL,
  `Cust_Id` varchar(12) NOT NULL,
  `Client_Id` varchar(6) NOT NULL,
  `Final_Amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_mast`
--

INSERT INTO `sales_mast` (`Inv_No`, `Inv_Date`, `Cust_Id`, `Client_Id`, `Final_Amt`) VALUES
('A001-F1', '2020-02-23', 'A001-C002', 'A001', 0),
('A001-F2', '2020-02-23', 'A001-C001', 'A001', 0),
('A001-F3', '2020-02-23', 'A001-C001', 'A001', 29680),
('A001-F4', '2020-02-06', 'A001-C002', 'A001', 26544),
('A001-F5', '2020-02-25', 'A001-C001', 'A001', 184800),
('A001-F6', '2020-02-27', 'A001-C001', 'A001', 76160),
('A001-F7', '2020-03-03', 'A001-C001', 'A001', 42150),
('A001-F8', '2020-03-03', 'A001-C001', 'A001', 2950),
('A005-C1', '2020-02-27', 'A005-C001', 'A005', 0),
('A005-C2', '2020-02-27', 'A005-C001', 'A005', 3360),
('A005-C3', '2020-02-27', 'A005-C001', 'A005', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_ret_det`
--

CREATE TABLE `sales_ret_det` (
  `Srn_No` varchar(12) NOT NULL,
  `Pr_Id` varchar(12) NOT NULL,
  `Pr_Qty` int(3) NOT NULL,
  `Amt` int(6) NOT NULL,
  `Disc` int(3) NOT NULL,
  `Gst_Rate` int(3) NOT NULL,
  `Total_Amt` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_ret_det`
--

INSERT INTO `sales_ret_det` (`Srn_No`, `Pr_Id`, `Pr_Qty`, `Amt`, `Disc`, `Gst_Rate`, `Total_Amt`) VALUES
('A001-G1', 'P001', 1, 35000, 8500, 12, 29680),
('A001-G4', 'P001', 5, 175000, 10000, 12, 184800),
('A001-G6', 'P001', 1, 35000, 1000, 12, 38080),
('A001-G7', 'P002', 9, 22500, 45, 18, 26497),
('A001-G8', 'P002', 1, 2500, 0, 18, 2950);

-- --------------------------------------------------------

--
-- Table structure for table `sales_ret_det_temp`
--

CREATE TABLE `sales_ret_det_temp` (
  `Srn_No` varchar(12) NOT NULL,
  `Pr_Id` varchar(12) NOT NULL,
  `Pr_Qty` int(3) NOT NULL,
  `Amt` int(6) NOT NULL,
  `Disc` int(3) NOT NULL,
  `Gst_Rate` int(3) NOT NULL,
  `Total_Amt` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_ret_mast`
--

CREATE TABLE `sales_ret_mast` (
  `Srn_No` varchar(12) NOT NULL,
  `Srn_Date` date NOT NULL,
  `Org_Inv_No` varchar(12) NOT NULL,
  `Cust_Id` varchar(12) NOT NULL,
  `Client_Id` varchar(6) NOT NULL,
  `Final_Amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_ret_mast`
--

INSERT INTO `sales_ret_mast` (`Srn_No`, `Srn_Date`, `Org_Inv_No`, `Cust_Id`, `Client_Id`, `Final_Amt`) VALUES
('A001-G1', '2020-02-23', 'A001-F3', 'A001-C001', 'A001', 59360),
('A001-G2', '2020-02-06', 'A001-F4', 'A001-C002', 'A001', 0),
('A001-G3', '2020-02-23', 'A001-F3', 'A001-C001', 'A001', 0),
('A001-G4', '2020-02-25', 'A001-F5', 'A001-C001', 'A001', 184800),
('A001-G5', '2020-02-25', 'A001-F5', 'A001-C001', 'A001', 0),
('A001-G6', '2020-02-27', 'A001-F6', 'A001-C001', 'A001', 38080),
('A001-G7', '2020-02-06', 'A001-F4', 'A001-C002', 'A001', 26497),
('A001-G8', '2020-03-03', 'A001-F8', 'A001-C001', 'A001', 2950),
('A005-D1', '2020-02-27', 'A005-C2', 'A005-C001', 'A005', 3360),
('A005-D2', '2020-02-27', 'A005-C2', 'A005-C001', 'A005', 0);

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `Sup_Id` varchar(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `Description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`Sup_Id`, `Name`, `Email_Id`, `Description`) VALUES
('S001', 'jknkl', 'fkkjhj', 'jkkjk.nlkkl/l'),
('S002', '', 'adsd', ''),
('S003', 'Nikhil Limbachiya', 'nik@gmail.com', 'I haven,t any issues!!!'),
('S004', 'Burhanuddin', 'lokhandwalab0@gmail.com', 'Abc'),
('S005', 'Burhan', 'abc@abc.com', 'hello nikhil here');

-- --------------------------------------------------------

--
-- Table structure for table `supp_mast`
--

CREATE TABLE `supp_mast` (
  `Supp_Id` varchar(12) NOT NULL,
  `Client_Id` varchar(6) NOT NULL,
  `Supp_Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Gstn_No` varchar(15) DEFAULT NULL,
  `Mob_No` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supp_mast`
--

INSERT INTO `supp_mast` (`Supp_Id`, `Client_Id`, `Supp_Name`, `Address`, `City`, `State`, `Pincode`, `Gstn_No`, `Mob_No`) VALUES
('A001-S001', 'A001', 'Burhanuddin', 'Goya Bazaar', 'Ankleshwar', 'Gujarat', 393001, '24ABFFA8809D1ZO', 7567228092),
('A001-S002', 'A001', 'Nikhil', 'OPP DOMINOZ', 'ANKLESHWAR', 'GUJARAT', 393002, '24ABFFA8809D1ZL', 2147483647),
('A003-S001', 'A003', 'Burhan', '213', 'asd', 'asf', 123456, '24ABJFA8809D1ZO', 2147483647),
('A004-S001', 'A004', 'Burhan', '213', 'asd', 'asf', 123456, '58ASDFG1234A425', 2147483647),
('A004-S002', 'A004', 'admin', 'admin', 'aslmd', 'dakfn', 393222, '24SASFM8809D1ZO', 9896369636),
('A005-S001', 'A005', 'abc supp', 'jjhhm', 'bharuch', 'gujarat', 392001, '24ABGHA8809D1ZO', 9104724584),
('A006-S001', 'A006', 'Burhan', '213', 'asd', 'asf', 123456, '24ABFBA8809D1ZO', 9104724581);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admistrator`
--
ALTER TABLE `admistrator`
  ADD PRIMARY KEY (`User_Id`),
  ADD UNIQUE KEY `U_E_Mail_Id` (`E_Mail_Id`) USING BTREE,
  ADD UNIQUE KEY `U_Mob_No` (`Mob_No`) USING BTREE;

--
-- Indexes for table `bill_series`
--
ALTER TABLE `bill_series`
  ADD KEY `Bill_Series_Client_Mast` (`Client_id`);

--
-- Indexes for table `cat_mast`
--
ALTER TABLE `cat_mast`
  ADD PRIMARY KEY (`Cat_Id`),
  ADD KEY `Cat_Mast_Client_Mast` (`Client_Id`);

--
-- Indexes for table `client_mast`
--
ALTER TABLE `client_mast`
  ADD PRIMARY KEY (`Client_Id`),
  ADD UNIQUE KEY `C_Gstn_No` (`C_Gstn_No`),
  ADD UNIQUE KEY `C_Mob_No` (`C_Mob_No`),
  ADD UNIQUE KEY `C_Mail_Id` (`C_Mail_Id`);

--
-- Indexes for table `cust_mast`
--
ALTER TABLE `cust_mast`
  ADD PRIMARY KEY (`Cust_Id`) USING BTREE,
  ADD KEY `Cust_Mast_Client_Mast` (`Client_Id`);

--
-- Indexes for table `gst_rate`
--
ALTER TABLE `gst_rate`
  ADD PRIMARY KEY (`Sr_No`);

--
-- Indexes for table `prod_mast`
--
ALTER TABLE `prod_mast`
  ADD PRIMARY KEY (`Pr_Id`) USING BTREE,
  ADD KEY `Cat_Mast_Prod_Mast` (`Cat_Id`),
  ADD KEY `Prod_Mast_Client_Mast` (`Client_Id`);

--
-- Indexes for table `purchase_det`
--
ALTER TABLE `purchase_det`
  ADD PRIMARY KEY (`Inv_No`,`Pr_Id`),
  ADD KEY `Purchase_Det_Prod_Mast` (`Pr_Id`);

--
-- Indexes for table `purchase_det_temp`
--
ALTER TABLE `purchase_det_temp`
  ADD PRIMARY KEY (`Inv_No`,`Pr_Id`);

--
-- Indexes for table `purchase_mast`
--
ALTER TABLE `purchase_mast`
  ADD PRIMARY KEY (`Inv_No`) USING BTREE,
  ADD KEY `Purchase_Mast_Supp_Mast` (`Supp_Id`),
  ADD KEY `Purchase_Mast_Client_Mast` (`Client_Id`);

--
-- Indexes for table `purchase_ret_det`
--
ALTER TABLE `purchase_ret_det`
  ADD PRIMARY KEY (`Inv_No`,`Pr_Id`),
  ADD KEY `Purchase_ret_mast_Prod_mast` (`Pr_Id`);

--
-- Indexes for table `purchase_ret_det_temp`
--
ALTER TABLE `purchase_ret_det_temp`
  ADD PRIMARY KEY (`Inv_No`,`Pr_Id`);

--
-- Indexes for table `purchase_ret_mast`
--
ALTER TABLE `purchase_ret_mast`
  ADD PRIMARY KEY (`Prn_No`) USING BTREE,
  ADD KEY `Purchase_ret_mast_Supp_mast` (`Supp_Id`),
  ADD KEY `Purchase_ret_mast_Client_mast` (`Client_Id`),
  ADD KEY `Purchase_ret_mast_purchase_mast` (`Org_Inv_No`);

--
-- Indexes for table `sales_det`
--
ALTER TABLE `sales_det`
  ADD PRIMARY KEY (`Inv_No`,`Pr_Id`) USING BTREE,
  ADD KEY `Sales_Det_Prod_Mast` (`Pr_Id`);

--
-- Indexes for table `sales_mast`
--
ALTER TABLE `sales_mast`
  ADD PRIMARY KEY (`Inv_No`) USING BTREE,
  ADD KEY `Sales_Mast_Cust_Mast` (`Cust_Id`),
  ADD KEY `Sales_Mast_Client_Mast` (`Client_Id`);

--
-- Indexes for table `sales_ret_det`
--
ALTER TABLE `sales_ret_det`
  ADD PRIMARY KEY (`Srn_No`,`Pr_Id`),
  ADD KEY `Sales_ret_det_Prod_mast` (`Pr_Id`);

--
-- Indexes for table `sales_ret_det_temp`
--
ALTER TABLE `sales_ret_det_temp`
  ADD PRIMARY KEY (`Srn_No`,`Pr_Id`);

--
-- Indexes for table `sales_ret_mast`
--
ALTER TABLE `sales_ret_mast`
  ADD PRIMARY KEY (`Srn_No`) USING BTREE,
  ADD KEY `Sales_ret_mast_Client_Mast` (`Client_Id`),
  ADD KEY `Sales_ret_mast_Cust_Mast` (`Cust_Id`),
  ADD KEY `Sales_ret_mast_sales_mast` (`Org_Inv_No`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`Sup_Id`);

--
-- Indexes for table `supp_mast`
--
ALTER TABLE `supp_mast`
  ADD PRIMARY KEY (`Supp_Id`) USING BTREE,
  ADD UNIQUE KEY `Gstn_No` (`Gstn_No`),
  ADD KEY `Supp_mast_Client_Mast` (`Client_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_series`
--
ALTER TABLE `bill_series`
  ADD CONSTRAINT `Bill_Series_Client_Mast` FOREIGN KEY (`Client_id`) REFERENCES `client_mast` (`Client_Id`);

--
-- Constraints for table `cat_mast`
--
ALTER TABLE `cat_mast`
  ADD CONSTRAINT `Cat_Mast_Client_Mast` FOREIGN KEY (`Client_Id`) REFERENCES `client_mast` (`Client_Id`);

--
-- Constraints for table `cust_mast`
--
ALTER TABLE `cust_mast`
  ADD CONSTRAINT `Cust_Mast_Client_Mast` FOREIGN KEY (`Client_Id`) REFERENCES `client_mast` (`Client_Id`);

--
-- Constraints for table `prod_mast`
--
ALTER TABLE `prod_mast`
  ADD CONSTRAINT `Cat_Mast_Prod_Mast` FOREIGN KEY (`Cat_Id`) REFERENCES `cat_mast` (`Cat_Id`),
  ADD CONSTRAINT `Prod_Mast_Client_Mast` FOREIGN KEY (`Client_Id`) REFERENCES `client_mast` (`Client_Id`);

--
-- Constraints for table `purchase_det`
--
ALTER TABLE `purchase_det`
  ADD CONSTRAINT `Purchase_Det_Mast` FOREIGN KEY (`Inv_No`) REFERENCES `purchase_mast` (`Inv_No`),
  ADD CONSTRAINT `Purchase_Det_Prod_Mast` FOREIGN KEY (`Pr_Id`) REFERENCES `prod_mast` (`Pr_Id`);

--
-- Constraints for table `purchase_mast`
--
ALTER TABLE `purchase_mast`
  ADD CONSTRAINT `Purchase_Mast_Client_Mast` FOREIGN KEY (`Client_Id`) REFERENCES `client_mast` (`Client_Id`),
  ADD CONSTRAINT `Purchase_Mast_Supp_Mast` FOREIGN KEY (`Supp_Id`) REFERENCES `supp_mast` (`Supp_Id`);

--
-- Constraints for table `purchase_ret_det`
--
ALTER TABLE `purchase_ret_det`
  ADD CONSTRAINT `Purchase_ret_det_Purchase_ret_mast` FOREIGN KEY (`Inv_No`) REFERENCES `purchase_ret_mast` (`Prn_No`),
  ADD CONSTRAINT `Purchase_ret_mast_Prod_mast` FOREIGN KEY (`Pr_Id`) REFERENCES `prod_mast` (`Pr_Id`);

--
-- Constraints for table `purchase_ret_mast`
--
ALTER TABLE `purchase_ret_mast`
  ADD CONSTRAINT `Purchase_ret_mast_Client_mast` FOREIGN KEY (`Client_Id`) REFERENCES `client_mast` (`Client_Id`),
  ADD CONSTRAINT `Purchase_ret_mast_Supp_mast` FOREIGN KEY (`Supp_Id`) REFERENCES `supp_mast` (`Supp_Id`),
  ADD CONSTRAINT `Purchase_ret_mast_purchase_mast` FOREIGN KEY (`Org_Inv_No`) REFERENCES `purchase_mast` (`Inv_No`);

--
-- Constraints for table `sales_det`
--
ALTER TABLE `sales_det`
  ADD CONSTRAINT `Sales_Det_Mast` FOREIGN KEY (`Inv_No`) REFERENCES `sales_mast` (`Inv_No`),
  ADD CONSTRAINT `Sales_Det_Prod_Mast` FOREIGN KEY (`Pr_Id`) REFERENCES `prod_mast` (`Pr_Id`);

--
-- Constraints for table `sales_mast`
--
ALTER TABLE `sales_mast`
  ADD CONSTRAINT `Sales_Mast_Client_Mast` FOREIGN KEY (`Client_Id`) REFERENCES `client_mast` (`Client_Id`),
  ADD CONSTRAINT `Sales_Mast_Cust_Mast` FOREIGN KEY (`Cust_Id`) REFERENCES `cust_mast` (`Cust_Id`);

--
-- Constraints for table `sales_ret_det`
--
ALTER TABLE `sales_ret_det`
  ADD CONSTRAINT `Sales_ret_det_Prod_mast` FOREIGN KEY (`Pr_Id`) REFERENCES `prod_mast` (`Pr_Id`),
  ADD CONSTRAINT `Sales_ret_det_sales_ret_mast` FOREIGN KEY (`Srn_No`) REFERENCES `sales_ret_mast` (`Srn_No`);

--
-- Constraints for table `sales_ret_mast`
--
ALTER TABLE `sales_ret_mast`
  ADD CONSTRAINT `Sales_ret_mast_Client_Mast` FOREIGN KEY (`Client_Id`) REFERENCES `client_mast` (`Client_Id`),
  ADD CONSTRAINT `Sales_ret_mast_Cust_Mast` FOREIGN KEY (`Cust_Id`) REFERENCES `cust_mast` (`Cust_Id`),
  ADD CONSTRAINT `Sales_ret_mast_sales_mast` FOREIGN KEY (`Org_Inv_No`) REFERENCES `sales_mast` (`Inv_No`);

--
-- Constraints for table `supp_mast`
--
ALTER TABLE `supp_mast`
  ADD CONSTRAINT `Supp_mast_Client_Mast` FOREIGN KEY (`Client_Id`) REFERENCES `client_mast` (`Client_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
