-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 06:29 PM
-- Server version: 8.0.29
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `BloodGroup`
--

CREATE TABLE `BloodGroup` (
  `BloodGroupKey` int NOT NULL COMMENT 'รหัสหมู่เลือด',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `CheckList`
--

CREATE TABLE `CheckList` (
  `CheckListKey` int NOT NULL COMMENT 'รหัสเช็คลิสต์',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext,
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะการใช้งาน',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ConfigSection`
--

CREATE TABLE `ConfigSection` (
  `ConfigSectionKey` int NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Configuration`
--

CREATE TABLE `Configuration` (
  `ConfigurationKey` int NOT NULL,
  `ConfigSectionKey` int NOT NULL,
  `OrderNo` smallint NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `DataType` tinyint NOT NULL,
  `DefaultValue` longtext,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Contractor`
--

CREATE TABLE `Contractor` (
  `ContractorKey` int NOT NULL COMMENT 'รหัสผู้รับจ้าง',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `CountryKey` int NOT NULL COMMENT 'รหัสประเทศ',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `DepartmentKey` int NOT NULL COMMENT 'รหัสแผนก',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข',
  `DepartmentGroupKey` int NOT NULL COMMENT 'รหัสกลุ่มแผนก',
  `DepartmentTypeKey` int NOT NULL COMMENT 'รหัสประเภทแผนก\\n- หน่วยงานส่วนกลาง(Central)\\n- หน่วยงานส่วนภูมิภาค(Regional)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `DepartmentGroup`
--

CREATE TABLE `DepartmentGroup` (
  `DepartmentGroupKey` int NOT NULL COMMENT 'รหัสกลุ่มแผนก',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `District`
--

CREATE TABLE `District` (
  `DistrictKey` int NOT NULL COMMENT 'รหัสอำเภอ',
  `ProvinceKey` int NOT NULL COMMENT 'รหัสจังหวัด',
  `Code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsSub` tinyint NOT NULL COMMENT 'เป็นกิ่งอำเภอ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `EducationLevel`
--

CREATE TABLE `EducationLevel` (
  `EducationLevelKey` int NOT NULL COMMENT 'รหัสระดับการศึกษา',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `FileAttach`
--

CREATE TABLE `FileAttach` (
  `FileAttachKey` int NOT NULL COMMENT 'รหัสไฟล์แนบ',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อไฟล์',
  `MediaTypeKey` tinyint NOT NULL COMMENT 'รหัสประเภทสื่อ',
  `FolderName` longtext COMMENT 'ชื่อแฟ้มงาน',
  `SubfolderName` longtext COMMENT 'ชื่อแฟ้มงานย่อย',
  `Thumbnail` longtext COMMENT 'ภาพตัวอย่าง',
  `RecordDT` datetime NOT NULL COMMENT 'เวลาการบันทึก',
  `TableName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อตาราง',
  `DataKey` int DEFAULT NULL COMMENT 'รหัสข้อมูล',
  `MimeType` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `FileSize` float NOT NULL COMMENT 'ขนาดไฟล์',
  `FileGuid` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'คู่มือไฟล์'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Machine`
--

CREATE TABLE `Machine` (
  `MachineKey` int NOT NULL COMMENT 'รหัสเครื่องจักร',
  `Code` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisbled` tinyint NOT NULL COMMENT 'สถานะการใช้งาน',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Man`
--

CREATE TABLE `Man` (
  `ManKey` int NOT NULL COMMENT 'รหัสบุคลากร',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะการใช้งาน',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Nationality`
--

CREATE TABLE `Nationality` (
  `NationalityKey` int NOT NULL COMMENT 'รหัสสัญชาติ',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE `News` (
  `NewsKey` int NOT NULL COMMENT 'รหัสข่าว',
  `NewsTypeKey` tinyint NOT NULL COMMENT 'รหัสประเภทข่าว',
  `DocDT` datetime NOT NULL COMMENT 'เวลาของเอกสาร',
  `Topic` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'หัวข้อ',
  `Detail` longtext COMMENT 'รายละเอียด',
  `ImageLocation` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ที่อยู่ภาพประกอบ',
  `FileLocation` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ที่อยู่ไฟล์',
  `RecordDT` datetime NOT NULL COMMENT 'เวลาการบันทึก',
  `RecordUserKey` int NOT NULL COMMENT 'รหัสผู้บันทึก',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `FileName` longtext COMMENT 'ชื่อไฟล์',
  `MimeType` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `FileGuid` longtext COMMENT 'คู่มือไฟล์'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Organization`
--

CREATE TABLE `Organization` (
  `OrganizationKey` int NOT NULL COMMENT 'รหัสหน่วยงาน',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Position`
--

CREATE TABLE `Position` (
  `PositionKey` int NOT NULL COMMENT 'รหัสตำแหน่ง',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข',
  `ProvinceKey` int DEFAULT NULL COMMENT 'รหัสจังหวัด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProblemCat`
--

CREATE TABLE `ProblemCat` (
  `ProblemCatKey` int NOT NULL COMMENT 'รหัสประเภทปัญหา',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjCheckDetail`
--

CREATE TABLE `ProjCheckDetail` (
  `ProjCheckDetailKey` int NOT NULL,
  `ProjCheckTemplateKey` int NOT NULL,
  `OrderNum` smallint NOT NULL,
  `CheckListKey` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `IsDisabled` tinyint DEFAULT NULL COMMENT 'สถานะข้อมูล'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjCheckTemplate`
--

CREATE TABLE `ProjCheckTemplate` (
  `ProjCheckTemplateKey` int NOT NULL COMMENT 'รหัสเอกสารที่เกี่ยวข้องกับโครงการ',
  `ProjectTypeKey` tinyint NOT NULL COMMENT 'รหัสลักษณะงาน',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabledForm` tinyint DEFAULT NULL COMMENT 'สถานะการใช้ฟอร์ม',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `CreateDT` datetime NOT NULL,
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `UpdateDT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `StartDT` datetime DEFAULT NULL COMMENT 'วันเริ่มต้น',
  `EndDT` datetime DEFAULT NULL COMMENT 'วันสิ้นสุด',
  `Note` longtext COMMENT 'หมายเหตุ',
  `ProjectSKey` int NOT NULL COMMENT 'รหัสสถานะโครงการ\\n- \\"Active\\" กำลังดำเนินการ \\n- \\"Pending\\" อยู่ระหว่างแก้ไขสัญญา/ประสบปัญหาอุปสรรค \\n- \\"Canceled\\" ยกเลิกสัญญา \\n- \\"Finished\\" แล้วเสร็จ 100% \\n- \\"Approved\\" คณะกรรมการตรวจรับงวดสุดท้ายแล้ว',
  `ContractCode` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'เลขที่สัญญา',
  `ContractDate` datetime DEFAULT NULL COMMENT 'ลงวันที่สัญญาจ้าง',
  `ContractorKey` int DEFAULT NULL COMMENT 'รหัสผู้รับจ้าง',
  `ContractorName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อผู้รับจ้าง',
  `IsExternalProject` tinyint NOT NULL COMMENT 'เป็นโครงการภายนอก',
  `DepartmentKey` int DEFAULT NULL COMMENT 'รหัสแผนก',
  `OwnerKey` int DEFAULT NULL COMMENT 'รหัสผู้ว่าจ้าง',
  `OwnerName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อผู้ว่าจ้าง',
  `DesignerNote` longtext COMMENT 'หมายเหตุผู้ออกแบบ',
  `TotalBudget` decimal(19,2) DEFAULT NULL COMMENT 'เงินงบประมาณ',
  `FineAmount` decimal(19,2) DEFAULT NULL COMMENT 'ค่าปรับ',
  `ProgressNote` longtext COMMENT 'หมายเหตุความคืบหน้า',
  `RecorderKey` int NOT NULL COMMENT 'รหัสผู้บันทึก',
  `RecordDT` datetime NOT NULL COMMENT 'วันที่บันทึก',
  `CompleteEmpKey` int DEFAULT NULL,
  `CompleteDT` datetime DEFAULT NULL COMMENT 'วันที่เสร็จสิ้น',
  `CompleteNote` longtext COMMENT 'หมายเหตุการเสร็จสิ้น',
  `CancelEmpKey` int DEFAULT NULL,
  `CancelDT` datetime DEFAULT NULL COMMENT 'วันที่ยกเลิก',
  `CancelNote` longtext COMMENT 'หมายเหตุการยกเลิก',
  `ProjectTypeKey` int NOT NULL COMMENT 'รหัสลักษณะงาน\\n- \\"CBankProtection\\">โครงการเขื่อนป้องกันตลิ่งริมแม่น้ำภายในประเทศ \\n- \\"BBankProtection\\">โครงการเขื่อนป้องกันตลิ่งริมแม่น้ำระหว่างประเทศ \\n- \\"FloodProtection\\">โครงการระบบป้องกันน้ำท่วม \\n- \\"UrbanDevelopment\\">โครงการพัฒนาพื้นที่และพัฒนาเมือง(สสผ.,สก.,สวค.) \\n- \\"ReesProject\\">โครงการซ่อมแซมและปรับปรุง(กบร.) \\n- \\"OtherProject\\">โครงการอื่นๆ \\n- \\"ServiceTechnician\\">งานบริการควบคุมงาน (หน่วยงานอื่น)',
  `AddressNote` longtext COMMENT 'หมายเหตุที่อยู่',
  `SubdistrictKey` int DEFAULT NULL COMMENT 'รหัสตำบล',
  `DistrictKey` int DEFAULT NULL COMMENT 'รหัสอำเภอ',
  `ProvinceKey` int DEFAULT NULL COMMENT 'รหัสจังหวัด',
  `Latitude` float DEFAULT NULL COMMENT 'เส้นรุ้ง',
  `Longtitude` float DEFAULT NULL COMMENT 'เส้นแวง',
  `ContractPdfFileName` longtext COMMENT 'ไฟล์สัญญจ้าง',
  `DrawingPdfFileName` longtext COMMENT 'ไฟล์แบบก่อสร้าง',
  `YearKey` int NOT NULL COMMENT 'ปีงบประมาณ',
  `ExternalProjectNote` longtext COMMENT 'หมายเหตุโครงการภายนอก',
  `PendingName` longtext COMMENT 'ชื่อการหยุดงาน',
  `MainImgFileName` longtext COMMENT 'ชื่อไฟล์ภาพหลักโครงการ',
  `OwnerTypeKey` tinyint NOT NULL,
  `AdvanceAmount` decimal(19,2) DEFAULT NULL,
  `BOQPdfFileName` longtext COMMENT 'ชื่อไฟล์ BOQ',
  `PhasePdfFileName` longtext,
  `ProjectEngineerKey` int DEFAULT NULL COMMENT 'รหัสเลขนุการโครงการ',
  `ProjectEngineerNote` longtext COMMENT 'หมายเหตุเลขานุการโครงการ',
  `ProjectEngineerName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อเลขานุการโครงการ',
  `ProjectPendingTypeKey` int DEFAULT NULL COMMENT 'รหัสประเภทการหยุดงาน\\n- \\"Pending\\">หยุดงานทั้งหมด \\n- \\"PartialPending\\">หยุดงานบางส่วน',
  `PercentAdvReim` decimal(19,2) DEFAULT NULL,
  `AdvanceAmtBalAftReim` decimal(19,2) DEFAULT NULL,
  `PercentDebAdvance` decimal(19,2) DEFAULT NULL,
  `RefProjectKey` int DEFAULT NULL,
  `InstallmentPdfFileName` longtext COMMENT 'ชื่อไฟล์นำเข้างวดงาน',
  `CommitteeRoleTypeKey` int DEFAULT NULL COMMENT 'รหัสประเภทบทบาทกรรมการตรวจรับ\\n- \\"Chairman\\">ประธานกรรมการ \\n- \\"Committee\\">กรรมการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectBlackList`
--

CREATE TABLE `ProjectBlackList` (
  `ProjectBlackList` int NOT NULL COMMENT '\\n- \\n- \\n- RecordDT',
  `ProjectKey` int NOT NULL,
  `ContractorKey` int NOT NULL,
  `IsCondition1` tinyint DEFAULT NULL,
  `BlackListMessage1` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `IsCondition1BL` tinyint DEFAULT NULL,
  `Condition1Note` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `IsCondition2` tinyint DEFAULT NULL,
  `BlackListMessage2` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `IsCondition2BL` tinyint DEFAULT NULL,
  `Condition2Note` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `IsCondition3` tinyint DEFAULT NULL,
  `BlackListMessage3` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `IsCondition3BL` tinyint DEFAULT NULL,
  `Condition3Note` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `IsCondition4` tinyint DEFAULT NULL,
  `BlackListMessage4` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `IsCondition4BL` tinyint DEFAULT NULL,
  `Condition4Note` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `Note` longtext,
  `IsBlackListed` tinyint NOT NULL COMMENT 'สถานะการตัดสิทธิ์',
  `RecorderKey` int NOT NULL COMMENT 'รหัสผู้บันทึก',
  `RecordDT` datetime NOT NULL COMMENT 'วันที่บันทึก',
  `IsCanceled` bit(1) DEFAULT NULL,
  `CancelEmpKey` int DEFAULT NULL,
  `CancelDT` datetime DEFAULT NULL,
  `CancelNote` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectBudget`
--

CREATE TABLE `ProjectBudget` (
  `ProjectBudgetKey` int NOT NULL COMMENT 'รหัสงบประมาณโครงการ',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `FiscalYear` int NOT NULL COMMENT 'ปีงบประมาณ',
  `Budget` decimal(19,2) NOT NULL COMMENT 'งบประมาณ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `RecorderKey` int DEFAULT NULL COMMENT 'รหัสผู้บันทึก',
  `RecordDT` datetime DEFAULT NULL COMMENT 'วันที่บันทึก',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectChecklist`
--

CREATE TABLE `ProjectChecklist` (
  `ProjectChecklistKey` int NOT NULL,
  `ProjectKey` int NOT NULL,
  `ChecklistKey` int NOT NULL,
  `LineNum` int DEFAULT NULL,
  `ProjCheckDetailKey` int DEFAULT NULL,
  `EmployeePdfFilename` longtext,
  `DirectorPdfFileName` longtext,
  `ApprovePdfFileName` longtext,
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectCommittee`
--

CREATE TABLE `ProjectCommittee` (
  `ProjectCommitteeKey` int NOT NULL COMMENT 'รหัสกรรมการตรวจการจ้าง',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `UserKey` int DEFAULT NULL COMMENT 'รหัสผู้ใช้',
  `LineNum` smallint NOT NULL COMMENT 'ลำดับที่',
  `CommitteeName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `CommitteeRoleTypeKey` tinyint NOT NULL COMMENT 'รหัสประเภทบทบาทกรรมการตรวจการจ้าง',
  `Note` longtext COMMENT 'หมายเหตุ',
  `RecorderKey` int DEFAULT NULL COMMENT 'รหัสผู้บันทึก',
  `RecordDT` datetime DEFAULT NULL COMMENT 'วันที่บันทึก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDeliver`
--

CREATE TABLE `ProjectDeliver` (
  `ProjectDeliverKey` int NOT NULL COMMENT 'รหัสการนำส่งโครงการ',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `DeliverDT` datetime NOT NULL COMMENT 'วันที่นำส่ง',
  `RecorderKey` int NOT NULL COMMENT 'รหัสผู้บันทึก',
  `RecordDT` datetime NOT NULL COMMENT 'วันที่บันทึก',
  `Budget` decimal(19,2) NOT NULL COMMENT 'งบประมาณ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `DeliverDocFileName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `MeetingDocFileName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `RtnAdvanceAmount` decimal(19,2) NOT NULL,
  `BudgetAfterRtnAdvance` decimal(19,2) DEFAULT NULL,
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDeliverBudget`
--

CREATE TABLE `ProjectDeliverBudget` (
  `ProjectDeliverBudgetKey` int NOT NULL,
  `ProjectDeliverKey` int NOT NULL,
  `FiscalYear` smallint NOT NULL,
  `Budget` decimal(19,2) NOT NULL,
  `Note` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDeliverPhase`
--

CREATE TABLE `ProjectDeliverPhase` (
  `ProjectDeliverPhaseKey` int NOT NULL,
  `ProjectDeliverKey` int NOT NULL,
  `ProjectPhaseKey` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDProgDetail`
--

CREATE TABLE `ProjectDProgDetail` (
  `ProjectDProgDetailKey` int NOT NULL,
  `ProjectDProgressKey` int NOT NULL,
  `DetailNote` longtext NOT NULL,
  `AreaNote` longtext,
  `ResultNote` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDProgImg`
--

CREATE TABLE `ProjectDProgImg` (
  `ProjectDProgImgKey` int NOT NULL COMMENT 'รหัสรูปภาพการดำเนินงาน',
  `ProjectDProgressKey` int NOT NULL,
  `ProjectImgLocationKey` int NOT NULL COMMENT 'รหัสตำแหน่งถ่ายภาพ',
  `ImageFileName` longtext COMMENT 'ชื่อไฟล์รูปภาพ',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDProgMach`
--

CREATE TABLE `ProjectDProgMach` (
  `ProjectDProgMachKey` int NOT NULL COMMENT 'รหัสความคืบหน้าโครงการ (เครื่องจักร)',
  `ProjectDProgressKey` int NOT NULL COMMENT 'รหัสบันทึกประจำวัน',
  `MachineKey` int NOT NULL COMMENT 'รหัสเครื่องจักร',
  `QtyNote` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'หมายเหตุจำนวน',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDProgMan`
--

CREATE TABLE `ProjectDProgMan` (
  `ProjectDProgManKey` int NOT NULL COMMENT 'รหัสความคืบหน้าโครงการ (บุคลากร)',
  `ProjectDProgressKey` int NOT NULL COMMENT 'รหัสบันทึกประจำวัน',
  `ManKey` int NOT NULL COMMENT 'รหัสบุคลากร',
  `QtyNote` longtext NOT NULL COMMENT 'หมายเหตุจำนวน',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDProgress`
--

CREATE TABLE `ProjectDProgress` (
  `ProjectDProgressKey` int NOT NULL COMMENT 'รหัสบันทึกประจำวัน',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `RecorderKey` int NOT NULL,
  `RecordDT` datetime NOT NULL COMMENT 'วันที่บันทึก',
  `PlanPct` float DEFAULT NULL COMMENT 'เปอร์เซ็นแผน',
  `ResultPct` float DEFAULT NULL COMMENT 'เปอร์เซ็นผลงาน',
  `ResultStatus` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'สถานะผลงาน',
  `MorningWeather` tinyint DEFAULT NULL COMMENT 'สภาพอากาศเวลาเช้า',
  `MorningWaterNote` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'หมายเหตุระดับน้ำเวลาเช้า',
  `EveningWeather` tinyint DEFAULT NULL COMMENT 'สภาพอากาศเวลาบ่าย',
  `EveningWaterNote` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'หมายเหตุระดับน้ำเวลาบ่าย',
  `NightWeather` tinyint DEFAULT NULL COMMENT 'สภาพอากาศเวลาค่ำ',
  `NightWaterNote` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'หมายเหตุระดับน้ำเวลาค่ำ',
  `ProblemCatKey` int DEFAULT NULL COMMENT 'รหัสประเภทปัญหา',
  `ProblemNote` longtext COMMENT 'หมายเหตุปัญหา',
  `OperationDetails` longtext COMMENT 'รายละเอียดการดำเนินงาน',
  `PdfAttachFileName` longtext COMMENT 'ชื่อไฟล์แนบ',
  `PdfAttachUserKey` int DEFAULT NULL COMMENT 'รหัสผู้ใช้แนบไฟล์',
  `PdfAttachDT` datetime DEFAULT NULL COMMENT 'วันที่แนบไฟล์',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectDProgTask`
--

CREATE TABLE `ProjectDProgTask` (
  `ProjectDProgTaskKey` int NOT NULL COMMENT 'รหัสบันทึกข้อมูลผลการดำเนินการ',
  `ProjectTaskKey` int NOT NULL COMMENT 'รหัสแผนงานโครงการ',
  `ProjectDProgressKey` int NOT NULL,
  `FirstAccumulateQty` decimal(9,2) DEFAULT NULL COMMENT 'จำนวนสะสมเริ่มต้น',
  `AccumulateQty` decimal(9,2) NOT NULL COMMENT 'จำนวนสะสม',
  `SUM` float DEFAULT NULL COMMENT 'ผลรวม',
  `Note` longtext COMMENT 'หมายเหตุ',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectExtSupervisor`
--

CREATE TABLE `ProjectExtSupervisor` (
  `ProjectExtSupervisorKey` int NOT NULL,
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `LineNum` int NOT NULL,
  `ExtSupervisorName` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `SupervisorRoleTypeKey` int NOT NULL COMMENT 'รหัสประเภทบทบาทผู้คุมงาน\\n- \\"HeadSupervisor\\">หัวหน้าผู้ควบคุมงาน \\n- \\"Supervisor\\">ผู้ควบคุมงาน',
  `Note` longtext COMMENT 'หมายเหตุ',
  `ProfessionalIDNumber` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectImgLocations`
--

CREATE TABLE `ProjectImgLocations` (
  `ProjectImgLocationsKey` int NOT NULL COMMENT 'รหัสตำแหน่งถ่ายภาพ',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `ProjectImgCode` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสภาพ',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อ',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL,
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectModification`
--

CREATE TABLE `ProjectModification` (
  `ProjectModificationKey` int NOT NULL COMMENT 'รหัสการแก้ไขโครงการ',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `LineNum` smallint NOT NULL COMMENT 'ลำดับที่',
  `ReviseDT` datetime NOT NULL COMMENT 'วันที่แก้ไข',
  `ReviseNote` longtext NOT NULL COMMENT 'หมายเหตุการแก้ไข',
  `Note` longtext COMMENT 'หมายเหตุ',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectMPlan`
--

CREATE TABLE `ProjectMPlan` (
  `ProjectMPlanKey` int NOT NULL COMMENT 'รหัสแผนงานรายเดือน',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `YearKey` int NOT NULL COMMENT 'รหัสปี',
  `MoyKey` tinyint NOT NULL,
  `PlanPct` decimal(9,2) NOT NULL COMMENT 'เปอร์เซ็นแผน',
  `Note` longtext COMMENT 'หมายเหตุ',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectPhase`
--

CREATE TABLE `ProjectPhase` (
  `ProjectPhaseKey` int NOT NULL COMMENT 'รหัสแผนงานโครงการ',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `PhaseNumber` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'จำนวนแผนงาน',
  `IsDelivered` char(10) NOT NULL COMMENT 'แผนงานนำส่งแล้ว',
  `FromeDate` datetime DEFAULT NULL COMMENT 'ตั้งแต่วันที่',
  `ToDate` datetime DEFAULT NULL COMMENT 'ถึงวันที่',
  `Budget` decimal(19,2) DEFAULT NULL COMMENT 'งบประมาณ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `WorkDetail` longtext,
  `RecorderKey` int DEFAULT NULL COMMENT 'รหัสผู้บันทึก',
  `RecordDT` datetime DEFAULT NULL COMMENT 'วันที่บันทึก',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectPhaseDeliver`
--

CREATE TABLE `ProjectPhaseDeliver` (
  `ProjectPhaseDeliverKey` int NOT NULL COMMENT 'รหัสการนำส่งแผนงานโครงการ',
  `ProjectPhaseKey` int NOT NULL COMMENT 'รฟัสแผนงานโครงการ',
  `ProjectDeliverKey` int NOT NULL COMMENT 'รหัสการนำส่งโครงการ',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectRevision`
--

CREATE TABLE `ProjectRevision` (
  `ProjectRevisionKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `ProjectKey` int NOT NULL,
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `StartDT` datetime DEFAULT NULL COMMENT 'วันเริ่มต้น',
  `EndDT` datetime DEFAULT NULL COMMENT 'วันสิ้นสุด',
  `Note` longtext COMMENT 'หมายเหตุ',
  `ProjectSKey` int NOT NULL COMMENT 'รหัสสถานะโครงการ\\n- \\"Active\\" กำลังดำเนินการ \\n- \\"Pending\\" อยู่ระหว่างแก้ไขสัญญา/ประสบปัญหาอุปสรรค \\n- \\"Canceled\\" ยกเลิกสัญญา \\n- \\"Finished\\" แล้วเสร็จ 100% \\n- \\"Approved\\" คณะกรรมการตรวจรับงวดสุดท้ายแล้ว',
  `ContractCode` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'เลขที่สัญญา',
  `ContractDate` datetime DEFAULT NULL COMMENT 'ลงวันที่สัญญาจ้าง',
  `ContractorKey` int DEFAULT NULL COMMENT 'รหัสผู้รับจ้าง',
  `ContractorName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อผู้รับจ้าง',
  `IsExternalProject` tinyint NOT NULL COMMENT 'เป็นโครงการภายนอก',
  `DepartmentKey` int DEFAULT NULL COMMENT 'รหัสแผนก',
  `OwnerKey` int DEFAULT NULL COMMENT 'รหัสผู้ว่าจ้าง',
  `OwnerName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อผู้ว่าจ้าง',
  `DesignerNote` longtext COMMENT 'หมายเหตุผู้ออกแบบ',
  `TotalBudget` decimal(19,2) DEFAULT NULL COMMENT 'เงินงบประมาณ',
  `FineAmount` decimal(19,2) DEFAULT NULL COMMENT 'ค่าปรับ',
  `ProgressNote` longtext COMMENT 'หมายเหตุความคืบหน้า',
  `RecorderKey` int NOT NULL COMMENT 'รหัสผู้บันทึก',
  `RecordDT` datetime NOT NULL COMMENT 'วันที่บันทึก',
  `CompleteEmpKey` int DEFAULT NULL,
  `CompleteDT` datetime DEFAULT NULL COMMENT 'วันที่เสร็จสิ้น',
  `CompleteNote` longtext COMMENT 'หมายเหตุการเสร็จสิ้น',
  `CancelEmpKey` int DEFAULT NULL,
  `CancelDT` datetime DEFAULT NULL COMMENT 'วันที่ยกเลิก',
  `CancelNote` longtext COMMENT 'หมายเหตุการยกเลิก',
  `ProjectTypeKey` int NOT NULL COMMENT 'รหัสลักษณะงาน\\n- \\"CBankProtection\\">โครงการเขื่อนป้องกันตลิ่งริมแม่น้ำภายในประเทศ \\n- \\"BBankProtection\\">โครงการเขื่อนป้องกันตลิ่งริมแม่น้ำระหว่างประเทศ \\n- \\"FloodProtection\\">โครงการระบบป้องกันน้ำท่วม \\n- \\"UrbanDevelopment\\">โครงการพัฒนาพื้นที่และพัฒนาเมือง(สสผ.,สก.,สวค.) \\n- \\"ReesProject\\">โครงการซ่อมแซมและปรับปรุง(กบร.) \\n- \\"OtherProject\\">โครงการอื่นๆ \\n- \\"ServiceTechnician\\">งานบริการควบคุมงาน (หน่วยงานอื่น)',
  `AddressNote` longtext COMMENT 'หมายเหตุที่อยู่',
  `SubdistrictKey` int DEFAULT NULL COMMENT 'รหัสตำบล',
  `DistrictKey` int DEFAULT NULL COMMENT 'รหัสอำเภอ',
  `ProvinceKey` int DEFAULT NULL COMMENT 'รหัสจังหวัด',
  `Latitude` float DEFAULT NULL COMMENT 'เส้นรุ้ง',
  `Longtitude` float DEFAULT NULL COMMENT 'เส้นแวง',
  `ContractPdfFileName` longtext COMMENT 'ไฟล์สัญญจ้าง',
  `DrawingPdfFileName` longtext COMMENT 'ไฟล์แบบก่อสร้าง',
  `YearKey` int NOT NULL COMMENT 'ปีงบประมาณ',
  `ExternalProjectNote` longtext COMMENT 'หมายเหตุโครงการภายนอก',
  `PendingName` longtext COMMENT 'ชื่อการหยุดงาน',
  `MainImgFileName` longtext COMMENT 'ชื่อไฟล์ภาพหลักโครงการ',
  `ProjectEngineerKey` int DEFAULT NULL COMMENT 'รหัสเลขนุการโครงการ',
  `ProjectEngineerNote` longtext COMMENT 'หมายเหตุเลขานุการโครงการ',
  `ProjectEngineerName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อเลขานุการโครงการ',
  `BOQPdfFileName` longtext COMMENT 'ชื่อไฟล์ BOQ',
  `InstallmentPdfFileName` longtext COMMENT 'ชื่อไฟล์นำเข้างวดงาน',
  `ProjectPendingTypeKey` int DEFAULT NULL COMMENT 'รหัสประเภทการหยุดงาน\\n- \\"Pending\\">หยุดงานทั้งหมด \\n- \\"PartialPending\\">หยุดงานบางส่วน',
  `CommitteeRoleTypeKey` int DEFAULT NULL COMMENT 'รหัสประเภทบทบาทกรรมการตรวจรับ\\n- \\"Chairman\\">ประธานกรรมการ \\n- \\"Committee\\">กรรมการ',
  `OwnerTypeKey` tinyint NOT NULL,
  `AdvanceAmount` decimal(19,2) DEFAULT NULL,
  `PhasePdfFileName` longtext,
  `PercentAdvReim` decimal(19,2) DEFAULT NULL,
  `AdvanceAmtBalAftReim` decimal(19,2) DEFAULT NULL,
  `PercentDebAdvance` decimal(19,2) DEFAULT NULL,
  `RefProjectKey` int DEFAULT NULL,
  `RevisionDT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectSupervisor`
--

CREATE TABLE `ProjectSupervisor` (
  `ProjectSupervisorKey` int NOT NULL COMMENT 'รหัสผู้ควบคุมงาน',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `UserKey` int DEFAULT NULL COMMENT 'รหัสผู้ใช้',
  `LineNum` smallint NOT NULL COMMENT 'ลำดับที่',
  `SupervisorName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อผู้ควบคุมงาน',
  `SupervisorRoleTypeKey` int NOT NULL COMMENT 'รหัสประเภทบทบาทผู้ควบคุมงาน\\n- \\"HeadSupervisor\\">หัวหน้าผู้ควบคุมงาน \\n- \\"Supervisor\\">ผู้ควบคุมงาน',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsReporter` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectTask`
--

CREATE TABLE `ProjectTask` (
  `ProjectTaskKey` int NOT NULL COMMENT 'รหัสแผนงานโครงการ',
  `ParentTaskKey` int DEFAULT NULL,
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `TaskCode` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อโครงการ',
  `Budget` decimal(19,2) NOT NULL COMMENT 'งบประมาณ',
  `WeightPct` decimal(9,4) NOT NULL COMMENT 'น้ำหนักเปอร์เซ็น',
  `Qty` decimal(9,2) NOT NULL COMMENT 'จำนวน',
  `UnitName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'หน่วย',
  `FromDate` datetime DEFAULT NULL COMMENT 'ตั้งแต่วันที่',
  `ToDate` datetime DEFAULT NULL COMMENT 'ถึงวันที่',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectUser`
--

CREATE TABLE `ProjectUser` (
  `ProjectUserKey` int NOT NULL COMMENT 'รหัสผู้ใช้ในโครงการ',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `UserKey` int NOT NULL COMMENT 'รหัสผู้ใช้',
  `ProjectRoleTypeKey` int NOT NULL COMMENT 'รหัสประเภทบทบาทโครงการ',
  `Note` longtext COMMENT 'หมายเหตุ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectWProgress`
--

CREATE TABLE `ProjectWProgress` (
  `ProjectWProgressKey` int NOT NULL COMMENT 'รหัสบันทึกประจำสัปดาห์',
  `ProjectKey` int NOT NULL COMMENT 'รหัสโครงการ',
  `RecorderKey` int NOT NULL COMMENT 'รหัสผู้บันทึก',
  `RecordDT` datetime NOT NULL COMMENT 'วันที่บันทึก',
  `YearKey` int NOT NULL COMMENT 'รหัสปี',
  `MoyKey` int NOT NULL,
  `WIntervalKey` int NOT NULL,
  `PlanPct` decimal(9,2) NOT NULL COMMENT 'เปอร์เซ็นแผนงาน',
  `ResultPct` decimal(9,2) NOT NULL COMMENT 'เปอร์เซ็นผลงาน',
  `ProblemNote` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `ProblemCatKey` int DEFAULT NULL COMMENT 'รหัสประเภทปัญหา',
  `PdfAttachFileName` longtext COMMENT 'ชื่อไฟล์แนบ',
  `PdfAttachUserKey` int DEFAULT NULL COMMENT 'รหัสผู้ใช้แนบไฟล์',
  `PdfAttachDT` datetime DEFAULT NULL COMMENT 'วันที่แนบไฟล์',
  `ProjectRevisionKey` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Province`
--

CREATE TABLE `Province` (
  `ProvinceKey` int NOT NULL COMMENT 'รหัสจังหวัด',
  `Code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข',
  `ProvinceGroupKey` int DEFAULT NULL COMMENT 'รหัสกลุ่มจังหวัด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ProvinceGroup`
--

CREATE TABLE `ProvinceGroup` (
  `ProvinceGroupKey` int NOT NULL,
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `Note` longtext,
  `IsDisabled` tinyint NOT NULL,
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `CreateDT` datetime NOT NULL,
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `UpdateDT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 KEY_BLOCK_SIZE=2;

-- --------------------------------------------------------

--
-- Table structure for table `Race`
--

CREATE TABLE `Race` (
  `RaceKey` int NOT NULL COMMENT 'รหัสเชื้อชาติ',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'เวลาที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ReferenceX`
--

CREATE TABLE `ReferenceX` (
  `ReferenceKey` tinyint NOT NULL,
  `EnumClassName` varchar(25) NOT NULL,
  `EnumItemName` varchar(25) NOT NULL,
  `LineNum` int NOT NULL,
  `ENUSText` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `THTHText` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Religion`
--

CREATE TABLE `Religion` (
  `ReligionKey` int NOT NULL COMMENT 'รหัสศาสนา',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `RoleKey` int NOT NULL COMMENT 'รหัสบทบาท',
  `OrderNo` int NOT NULL COMMENT 'ลำดับที่',
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsActive` tinyint NOT NULL COMMENT 'สถานะการใช้งาน',
  `IsSystem` tinyint NOT NULL COMMENT 'สถานะระบบ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `RoleMember`
--

CREATE TABLE `RoleMember` (
  `RoleKey` int NOT NULL COMMENT 'รหัสบทบาท',
  `UserKey` int NOT NULL COMMENT 'รหัสผู้ใช้',
  `IsSystem` tinyint NOT NULL COMMENT 'สถานะระบบ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `RolePermission`
--

CREATE TABLE `RolePermission` (
  `RoleKey` int NOT NULL COMMENT 'รหัสบทบาท',
  `SecurableKey` int NOT NULL,
  `IsSystem` tinyint NOT NULL COMMENT 'สถานะระบบ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `School`
--

CREATE TABLE `School` (
  `SchoolKey` int NOT NULL COMMENT 'รหัสสถานศึกษา',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Securable`
--

CREATE TABLE `Securable` (
  `SecurableKey` int NOT NULL,
  `SecurableType` int NOT NULL,
  `OrderNo` int NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อ',
  `Signature` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ลายเซ็น',
  `Data` longtext COMMENT 'ข้อมูล',
  `IsExcluded` tinyint NOT NULL,
  `IsActive` tinyint NOT NULL,
  `ParentKey` int DEFAULT NULL,
  `RootKey` int DEFAULT NULL,
  `ImageFileName` longtext COMMENT 'ชื่อไฟล์รูปภาพ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Sequence`
--

CREATE TABLE `Sequence` (
  `SequenceKey` int NOT NULL,
  `TableName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `ColumnName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `PeriodPattern` int NOT NULL,
  `Len` int NOT NULL,
  `PrefixPattern` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `SuffixPattern` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `Note` longtext COMMENT 'หมายเหตุ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `SequencePeriod`
--

CREATE TABLE `SequencePeriod` (
  `SequencePeriodKey` int NOT NULL,
  `SequenceKey` int NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `NextNumber` int NOT NULL,
  `Len` int NOT NULL,
  `Prefix` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `Suffix` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `FromDate` datetime NOT NULL,
  `ToDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Subdistrict`
--

CREATE TABLE `Subdistrict` (
  `SubdistrictKey` int NOT NULL COMMENT 'รหัสตำบล',
  `DistrictKey` int NOT NULL COMMENT 'รหัสอำเภอ',
  `Code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `ZipCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'รหัสไปรษณีย์',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `SupervisorGroup`
--

CREATE TABLE `SupervisorGroup` (
  `SupervisorGroupKey` int NOT NULL,
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `Note` longtext,
  `IsDisabled` tinyint NOT NULL,
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `CreateDT` datetime NOT NULL,
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `UpdateDT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `TaskScheduler`
--

CREATE TABLE `TaskScheduler` (
  `TaskSchedulerKey` int NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `LastRunTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Title`
--

CREATE TABLE `Title` (
  `TitleKey` int NOT NULL COMMENT 'รหัสคำนำหน้าชื่อ',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `UserEducation`
--

CREATE TABLE `UserEducation` (
  `UserEducationKey` int NOT NULL COMMENT 'รหัสการศึกษาผู้ใช้',
  `UserKey` int NOT NULL COMMENT 'รหัสผู้ใช้',
  `EducationLevelKey` int NOT NULL COMMENT 'รหัสระดับการศึกษา',
  `SchoolKey` int DEFAULT NULL COMMENT 'รหัสสถานศึกษา',
  `MajorNote` longtext COMMENT 'หมายเหตุ',
  `GraduateYear` int DEFAULT NULL COMMENT 'ปีที่สำเร็จการศึกษา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `WInterval`
--

CREATE TABLE `WInterval` (
  `WIntervalKey` int NOT NULL COMMENT 'รหัสวันในระหว่างสัปดาห์',
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัส',
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาไทย',
  `ENName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อภาษาอังกฤษ',
  `FromDateNumber` date NOT NULL COMMENT 'ตั้งแต่วันที่',
  `ToDateNumber` date NOT NULL COMMENT 'ถึงวันที่',
  `Note` longtext COMMENT 'หมายเหตุ',
  `IsDisabled` tinyint NOT NULL COMMENT 'สถานะข้อมูล',
  `CreatorKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้สร้าง',
  `CreateDT` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `UpdaterKey` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผู้แก้ไข',
  `UpdateDT` datetime NOT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `XReqMessage`
--

CREATE TABLE `XReqMessage` (
  `XReqMessageKey` int NOT NULL,
  `ProjectKey` int NOT NULL,
  `MessageDT` datetime NOT NULL,
  `IsRead` tinyint NOT NULL,
  `RecorderKey` int NOT NULL,
  `RecordDT` datetime NOT NULL,
  `MessageNote` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `Year`
--

CREATE TABLE `Year` (
  `YearKey` int NOT NULL COMMENT 'รหัสปี',
  `YearName` char(4) NOT NULL COMMENT 'ชื่อปี',
  `YearValue` int NOT NULL COMMENT 'ค่าปี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BloodGroup`
--
ALTER TABLE `BloodGroup`
  ADD PRIMARY KEY (`BloodGroupKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `CheckList`
--
ALTER TABLE `CheckList`
  ADD PRIMARY KEY (`CheckListKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `ConfigSection`
--
ALTER TABLE `ConfigSection`
  ADD PRIMARY KEY (`ConfigSectionKey`),
  ADD UNIQUE KEY `Name_UNIQUE` (`Name`);

--
-- Indexes for table `Configuration`
--
ALTER TABLE `Configuration`
  ADD PRIMARY KEY (`ConfigurationKey`),
  ADD UNIQUE KEY `ConfigSectionKey_UNIQUE` (`ConfigSectionKey`);

--
-- Indexes for table `Contractor`
--
ALTER TABLE `Contractor`
  ADD PRIMARY KEY (`ContractorKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`CountryKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`DepartmentKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`),
  ADD KEY `DepartmentGroupKey` (`DepartmentGroupKey`);

--
-- Indexes for table `DepartmentGroup`
--
ALTER TABLE `DepartmentGroup`
  ADD PRIMARY KEY (`DepartmentGroupKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `District`
--
ALTER TABLE `District`
  ADD PRIMARY KEY (`DistrictKey`);

--
-- Indexes for table `EducationLevel`
--
ALTER TABLE `EducationLevel`
  ADD PRIMARY KEY (`EducationLevelKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `FileAttach`
--
ALTER TABLE `FileAttach`
  ADD PRIMARY KEY (`FileAttachKey`);

--
-- Indexes for table `Machine`
--
ALTER TABLE `Machine`
  ADD PRIMARY KEY (`MachineKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `Man`
--
ALTER TABLE `Man`
  ADD PRIMARY KEY (`ManKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `Nationality`
--
ALTER TABLE `Nationality`
  ADD PRIMARY KEY (`NationalityKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`NewsKey`);

--
-- Indexes for table `Organization`
--
ALTER TABLE `Organization`
  ADD PRIMARY KEY (`OrganizationKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `Position`
--
ALTER TABLE `Position`
  ADD PRIMARY KEY (`PositionKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`),
  ADD KEY `PositionProvinceKey` (`ProvinceKey`);

--
-- Indexes for table `ProblemCat`
--
ALTER TABLE `ProblemCat`
  ADD PRIMARY KEY (`ProblemCatKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `ProjCheckDetail`
--
ALTER TABLE `ProjCheckDetail`
  ADD PRIMARY KEY (`ProjCheckDetailKey`),
  ADD KEY `ProjCheckDetailProjectCheckTemplateKey` (`ProjCheckTemplateKey`),
  ADD KEY `ProjCheckDetailCheckListKey` (`CheckListKey`);

--
-- Indexes for table `ProjCheckTemplate`
--
ALTER TABLE `ProjCheckTemplate`
  ADD PRIMARY KEY (`ProjCheckTemplateKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`),
  ADD UNIQUE KEY `ProjectTypeKey_UNIQUE` (`ProjectTypeKey`);

--
-- Indexes for table `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`ProjectKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`),
  ADD KEY `ProjectDepartmentKey` (`DepartmentKey`),
  ADD KEY `ProjectSubdistrictKey` (`SubdistrictKey`),
  ADD KEY `ProjectDistrictKey` (`DistrictKey`),
  ADD KEY `ProjectYearKey` (`YearKey`);

--
-- Indexes for table `ProjectBlackList`
--
ALTER TABLE `ProjectBlackList`
  ADD PRIMARY KEY (`ProjectBlackList`),
  ADD KEY `ProjectBlackListProjectKey` (`ProjectKey`);

--
-- Indexes for table `ProjectBudget`
--
ALTER TABLE `ProjectBudget`
  ADD PRIMARY KEY (`ProjectBudgetKey`),
  ADD KEY `ProjectBudgetProjectKey` (`ProjectKey`),
  ADD KEY `ProjectBudgetProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectChecklist`
--
ALTER TABLE `ProjectChecklist`
  ADD PRIMARY KEY (`ProjectChecklistKey`),
  ADD KEY `ProjectChecklistProjCheckDetailKey` (`ProjCheckDetailKey`),
  ADD KEY `ProjectChecklistProjectKey` (`ProjectKey`),
  ADD KEY `ProjectChecklistChecklistKey` (`ChecklistKey`),
  ADD KEY `ProjectChecklistProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectCommittee`
--
ALTER TABLE `ProjectCommittee`
  ADD PRIMARY KEY (`ProjectCommitteeKey`),
  ADD KEY `ProjectCommitteeProjectKey` (`ProjectKey`);

--
-- Indexes for table `ProjectDeliver`
--
ALTER TABLE `ProjectDeliver`
  ADD PRIMARY KEY (`ProjectDeliverKey`),
  ADD KEY `ProjectDeliverProjectKey` (`ProjectKey`),
  ADD KEY `ProjectDeliverProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectDeliverBudget`
--
ALTER TABLE `ProjectDeliverBudget`
  ADD PRIMARY KEY (`ProjectDeliverBudgetKey`),
  ADD UNIQUE KEY `ProjectDeliverKey_UNIQUE` (`ProjectDeliverKey`),
  ADD UNIQUE KEY `FiscalYear_UNIQUE` (`FiscalYear`);

--
-- Indexes for table `ProjectDeliverPhase`
--
ALTER TABLE `ProjectDeliverPhase`
  ADD PRIMARY KEY (`ProjectDeliverPhaseKey`),
  ADD UNIQUE KEY `ProjectDeliverKey_UNIQUE` (`ProjectDeliverKey`),
  ADD UNIQUE KEY `ProjectPhaseKey_UNIQUE` (`ProjectPhaseKey`);

--
-- Indexes for table `ProjectDProgDetail`
--
ALTER TABLE `ProjectDProgDetail`
  ADD PRIMARY KEY (`ProjectDProgDetailKey`),
  ADD KEY `ProjectDProgDetailProjectDProgressKey` (`ProjectDProgressKey`);

--
-- Indexes for table `ProjectDProgImg`
--
ALTER TABLE `ProjectDProgImg`
  ADD PRIMARY KEY (`ProjectDProgImgKey`),
  ADD KEY `ProjectDProgImgProjectImgLocationKey` (`ProjectImgLocationKey`),
  ADD KEY `ProjectDProgImgProjectDProgressKey` (`ProjectDProgressKey`),
  ADD KEY `ProjectDProgImgProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectDProgMach`
--
ALTER TABLE `ProjectDProgMach`
  ADD PRIMARY KEY (`ProjectDProgMachKey`),
  ADD KEY `ProjectDProgMachProjectDProgressKey` (`ProjectDProgressKey`),
  ADD KEY `ProjectDProgMachMachineKey` (`MachineKey`),
  ADD KEY `ProjectDProgMachProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectDProgMan`
--
ALTER TABLE `ProjectDProgMan`
  ADD PRIMARY KEY (`ProjectDProgManKey`),
  ADD KEY `ProjectDProgManProjectDProgressKey` (`ProjectDProgressKey`),
  ADD KEY `ProjectDProgManManKey` (`ManKey`),
  ADD KEY `ProjectDProgManProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectDProgress`
--
ALTER TABLE `ProjectDProgress`
  ADD PRIMARY KEY (`ProjectDProgressKey`),
  ADD KEY `ProjectDProgressProjectKey` (`ProjectKey`),
  ADD KEY `ProjectDProgressProblemCatKey` (`ProblemCatKey`),
  ADD KEY `ProjectDProgressProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectDProgTask`
--
ALTER TABLE `ProjectDProgTask`
  ADD PRIMARY KEY (`ProjectDProgTaskKey`),
  ADD KEY `ProjectDProgTaskProjectTaskKey` (`ProjectTaskKey`),
  ADD KEY `ProjectDProgTaskProjectDProgressKey` (`ProjectDProgressKey`),
  ADD KEY `ProjectDProgTaskProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectExtSupervisor`
--
ALTER TABLE `ProjectExtSupervisor`
  ADD PRIMARY KEY (`ProjectExtSupervisorKey`),
  ADD KEY `ProjectExtSupervisorProjectKey` (`ProjectKey`),
  ADD KEY `ProjectExtSupervisorProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectImgLocations`
--
ALTER TABLE `ProjectImgLocations`
  ADD PRIMARY KEY (`ProjectImgLocationsKey`),
  ADD KEY `ProjectImgLocationsProjectKey` (`ProjectKey`),
  ADD KEY `ProjectImgLocationsProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectModification`
--
ALTER TABLE `ProjectModification`
  ADD PRIMARY KEY (`ProjectModificationKey`),
  ADD UNIQUE KEY `LineNum_UNIQUE` (`LineNum`),
  ADD KEY `ProjectModificationProjectKey` (`ProjectKey`),
  ADD KEY `ProjectModificationProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectMPlan`
--
ALTER TABLE `ProjectMPlan`
  ADD PRIMARY KEY (`ProjectMPlanKey`),
  ADD KEY `ProjectMPlanProjectKey` (`ProjectKey`),
  ADD KEY `ProjectMPlanYearKey` (`YearKey`),
  ADD KEY `ProjectMPlanProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectPhase`
--
ALTER TABLE `ProjectPhase`
  ADD PRIMARY KEY (`ProjectPhaseKey`),
  ADD KEY `ProjectPhaseProjectKey` (`ProjectKey`),
  ADD KEY `ProjectPhaseProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectPhaseDeliver`
--
ALTER TABLE `ProjectPhaseDeliver`
  ADD PRIMARY KEY (`ProjectPhaseDeliverKey`),
  ADD KEY `ProjectPhaseDeliverProjectPhaseKey` (`ProjectPhaseKey`),
  ADD KEY `ProjectPhaseDeliverProjectDeliverKey` (`ProjectDeliverKey`),
  ADD KEY `ProjectPhaseDeliverProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectRevision`
--
ALTER TABLE `ProjectRevision`
  ADD PRIMARY KEY (`ProjectRevisionKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`),
  ADD KEY `ProjectRevisionDepartmentKey` (`DepartmentKey`),
  ADD KEY `ProjectRevisionSubdistrictKey` (`SubdistrictKey`),
  ADD KEY `ProjectRevisionDistrictKey` (`DistrictKey`),
  ADD KEY `ProjectRevisionYearKey` (`YearKey`);

--
-- Indexes for table `ProjectSupervisor`
--
ALTER TABLE `ProjectSupervisor`
  ADD PRIMARY KEY (`ProjectSupervisorKey`),
  ADD KEY `ProjectSupervisorProjectKey` (`ProjectKey`);

--
-- Indexes for table `ProjectTask`
--
ALTER TABLE `ProjectTask`
  ADD PRIMARY KEY (`ProjectTaskKey`),
  ADD KEY `ProjectTaskProjectKey` (`ProjectKey`),
  ADD KEY `ProjectTaskProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `ProjectUser`
--
ALTER TABLE `ProjectUser`
  ADD PRIMARY KEY (`ProjectUserKey`),
  ADD UNIQUE KEY `ProjectKey_UNIQUE` (`ProjectKey`),
  ADD UNIQUE KEY `UserKey_UNIQUE` (`UserKey`);

--
-- Indexes for table `ProjectWProgress`
--
ALTER TABLE `ProjectWProgress`
  ADD PRIMARY KEY (`ProjectWProgressKey`),
  ADD KEY `ProjectWProgressProjectKey` (`ProjectKey`),
  ADD KEY `ProjectWProgressYearKey` (`YearKey`),
  ADD KEY `ProjectWProgressWIntervalKey` (`WIntervalKey`),
  ADD KEY `ProjectWProgressProjectRevisionKey` (`ProjectRevisionKey`);

--
-- Indexes for table `Province`
--
ALTER TABLE `Province`
  ADD PRIMARY KEY (`ProvinceKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`),
  ADD KEY `ProvinceGroupKey` (`ProvinceGroupKey`);

--
-- Indexes for table `ProvinceGroup`
--
ALTER TABLE `ProvinceGroup`
  ADD PRIMARY KEY (`ProvinceGroupKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `Race`
--
ALTER TABLE `Race`
  ADD PRIMARY KEY (`RaceKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `ReferenceX`
--
ALTER TABLE `ReferenceX`
  ADD PRIMARY KEY (`ReferenceKey`,`EnumClassName`);

--
-- Indexes for table `Religion`
--
ALTER TABLE `Religion`
  ADD PRIMARY KEY (`ReligionKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`RoleKey`),
  ADD UNIQUE KEY `Name_UNIQUE` (`Name`);

--
-- Indexes for table `RoleMember`
--
ALTER TABLE `RoleMember`
  ADD PRIMARY KEY (`RoleKey`,`UserKey`);

--
-- Indexes for table `RolePermission`
--
ALTER TABLE `RolePermission`
  ADD PRIMARY KEY (`RoleKey`,`SecurableKey`),
  ADD KEY `RolePermissionSecurableKey` (`SecurableKey`);

--
-- Indexes for table `School`
--
ALTER TABLE `School`
  ADD PRIMARY KEY (`SchoolKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `Securable`
--
ALTER TABLE `Securable`
  ADD PRIMARY KEY (`SecurableKey`),
  ADD UNIQUE KEY `Signature_UNIQUE` (`Signature`);

--
-- Indexes for table `Sequence`
--
ALTER TABLE `Sequence`
  ADD PRIMARY KEY (`SequenceKey`),
  ADD UNIQUE KEY `TableName_UNIQUE` (`TableName`),
  ADD UNIQUE KEY `ColumnName_UNIQUE` (`ColumnName`);

--
-- Indexes for table `SequencePeriod`
--
ALTER TABLE `SequencePeriod`
  ADD PRIMARY KEY (`SequencePeriodKey`),
  ADD KEY `SequencePeriodSequenceKey` (`SequenceKey`);

--
-- Indexes for table `Subdistrict`
--
ALTER TABLE `Subdistrict`
  ADD PRIMARY KEY (`SubdistrictKey`),
  ADD KEY `DistrictKey` (`DistrictKey`);

--
-- Indexes for table `SupervisorGroup`
--
ALTER TABLE `SupervisorGroup`
  ADD PRIMARY KEY (`SupervisorGroupKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `TaskScheduler`
--
ALTER TABLE `TaskScheduler`
  ADD PRIMARY KEY (`TaskSchedulerKey`);

--
-- Indexes for table `Title`
--
ALTER TABLE `Title`
  ADD PRIMARY KEY (`TitleKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `UserEducation`
--
ALTER TABLE `UserEducation`
  ADD PRIMARY KEY (`UserEducationKey`),
  ADD KEY `UserEducationEducationLevelKey` (`EducationLevelKey`),
  ADD KEY `UserEducationSchoolKey` (`SchoolKey`);

--
-- Indexes for table `WInterval`
--
ALTER TABLE `WInterval`
  ADD PRIMARY KEY (`WIntervalKey`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`);

--
-- Indexes for table `XReqMessage`
--
ALTER TABLE `XReqMessage`
  ADD PRIMARY KEY (`XReqMessageKey`),
  ADD KEY `XReqMessageProjectKey` (`ProjectKey`);

--
-- Indexes for table `Year`
--
ALTER TABLE `Year`
  ADD PRIMARY KEY (`YearKey`),
  ADD UNIQUE KEY `YearName_UNIQUE` (`YearName`),
  ADD UNIQUE KEY `YearValue_UNIQUE` (`YearValue`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BloodGroup`
--
ALTER TABLE `BloodGroup`
  MODIFY `BloodGroupKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสหมู่เลือด';

--
-- AUTO_INCREMENT for table `Contractor`
--
ALTER TABLE `Contractor`
  MODIFY `ContractorKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้รับจ้าง';

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `CountryKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเทศ';

--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `DepartmentKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสแผนก';

--
-- AUTO_INCREMENT for table `DepartmentGroup`
--
ALTER TABLE `DepartmentGroup`
  MODIFY `DepartmentGroupKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสกลุ่มแผนก';

--
-- AUTO_INCREMENT for table `District`
--
ALTER TABLE `District`
  MODIFY `DistrictKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสอำเภอ';

--
-- AUTO_INCREMENT for table `EducationLevel`
--
ALTER TABLE `EducationLevel`
  MODIFY `EducationLevelKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสระดับการศึกษา';

--
-- AUTO_INCREMENT for table `FileAttach`
--
ALTER TABLE `FileAttach`
  MODIFY `FileAttachKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสไฟล์แนบ';

--
-- AUTO_INCREMENT for table `Machine`
--
ALTER TABLE `Machine`
  MODIFY `MachineKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสเครื่องจักร';

--
-- AUTO_INCREMENT for table `Man`
--
ALTER TABLE `Man`
  MODIFY `ManKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสบุคลากร';

--
-- AUTO_INCREMENT for table `Nationality`
--
ALTER TABLE `Nationality`
  MODIFY `NationalityKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสสัญชาติ';

--
-- AUTO_INCREMENT for table `News`
--
ALTER TABLE `News`
  MODIFY `NewsKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสข่าว';

--
-- AUTO_INCREMENT for table `Organization`
--
ALTER TABLE `Organization`
  MODIFY `OrganizationKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสหน่วยงาน';

--
-- AUTO_INCREMENT for table `Position`
--
ALTER TABLE `Position`
  MODIFY `PositionKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสตำแหน่ง';

--
-- AUTO_INCREMENT for table `ProblemCat`
--
ALTER TABLE `ProblemCat`
  MODIFY `ProblemCatKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทปัญหา';

--
-- AUTO_INCREMENT for table `ProjCheckDetail`
--
ALTER TABLE `ProjCheckDetail`
  MODIFY `ProjCheckDetailKey` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProjCheckTemplate`
--
ALTER TABLE `ProjCheckTemplate`
  MODIFY `ProjCheckTemplateKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสเอกสารที่เกี่ยวข้องกับโครงการ';

--
-- AUTO_INCREMENT for table `Project`
--
ALTER TABLE `Project`
  MODIFY `ProjectKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสโครงการ';

--
-- AUTO_INCREMENT for table `ProjectBlackList`
--
ALTER TABLE `ProjectBlackList`
  MODIFY `ProjectBlackList` int NOT NULL AUTO_INCREMENT COMMENT '\\n- \\n- \\n- RecordDT';

--
-- AUTO_INCREMENT for table `ProjectBudget`
--
ALTER TABLE `ProjectBudget`
  MODIFY `ProjectBudgetKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสงบประมาณโครงการ';

--
-- AUTO_INCREMENT for table `ProjectChecklist`
--
ALTER TABLE `ProjectChecklist`
  MODIFY `ProjectChecklistKey` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProjectCommittee`
--
ALTER TABLE `ProjectCommittee`
  MODIFY `ProjectCommitteeKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสกรรมการตรวจการจ้าง';

--
-- AUTO_INCREMENT for table `ProjectDeliver`
--
ALTER TABLE `ProjectDeliver`
  MODIFY `ProjectDeliverKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสการนำส่งโครงการ';

--
-- AUTO_INCREMENT for table `ProjectDProgImg`
--
ALTER TABLE `ProjectDProgImg`
  MODIFY `ProjectDProgImgKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสรูปภาพการดำเนินงาน';

--
-- AUTO_INCREMENT for table `ProjectDProgMach`
--
ALTER TABLE `ProjectDProgMach`
  MODIFY `ProjectDProgMachKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสความคืบหน้าโครงการ (เครื่องจักร)';

--
-- AUTO_INCREMENT for table `ProjectDProgMan`
--
ALTER TABLE `ProjectDProgMan`
  MODIFY `ProjectDProgManKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสความคืบหน้าโครงการ (บุคลากร)';

--
-- AUTO_INCREMENT for table `ProjectDProgress`
--
ALTER TABLE `ProjectDProgress`
  MODIFY `ProjectDProgressKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสบันทึกประจำวัน';

--
-- AUTO_INCREMENT for table `ProjectDProgTask`
--
ALTER TABLE `ProjectDProgTask`
  MODIFY `ProjectDProgTaskKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสบันทึกข้อมูลผลการดำเนินการ';

--
-- AUTO_INCREMENT for table `ProjectExtSupervisor`
--
ALTER TABLE `ProjectExtSupervisor`
  MODIFY `ProjectExtSupervisorKey` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProjectImgLocations`
--
ALTER TABLE `ProjectImgLocations`
  MODIFY `ProjectImgLocationsKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสตำแหน่งถ่ายภาพ';

--
-- AUTO_INCREMENT for table `ProjectModification`
--
ALTER TABLE `ProjectModification`
  MODIFY `ProjectModificationKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสการแก้ไขโครงการ';

--
-- AUTO_INCREMENT for table `ProjectMPlan`
--
ALTER TABLE `ProjectMPlan`
  MODIFY `ProjectMPlanKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสแผนงานรายเดือน';

--
-- AUTO_INCREMENT for table `ProjectPhase`
--
ALTER TABLE `ProjectPhase`
  MODIFY `ProjectPhaseKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสแผนงานโครงการ';

--
-- AUTO_INCREMENT for table `ProjectPhaseDeliver`
--
ALTER TABLE `ProjectPhaseDeliver`
  MODIFY `ProjectPhaseDeliverKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสการนำส่งแผนงานโครงการ';

--
-- AUTO_INCREMENT for table `ProjectRevision`
--
ALTER TABLE `ProjectRevision`
  MODIFY `ProjectRevisionKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสโครงการ';

--
-- AUTO_INCREMENT for table `ProjectSupervisor`
--
ALTER TABLE `ProjectSupervisor`
  MODIFY `ProjectSupervisorKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ควบคุมงาน';

--
-- AUTO_INCREMENT for table `ProjectTask`
--
ALTER TABLE `ProjectTask`
  MODIFY `ProjectTaskKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสแผนงานโครงการ';

--
-- AUTO_INCREMENT for table `ProjectUser`
--
ALTER TABLE `ProjectUser`
  MODIFY `ProjectUserKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ใช้ในโครงการ';

--
-- AUTO_INCREMENT for table `ProjectWProgress`
--
ALTER TABLE `ProjectWProgress`
  MODIFY `ProjectWProgressKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสบันทึกประจำสัปดาห์';

--
-- AUTO_INCREMENT for table `Province`
--
ALTER TABLE `Province`
  MODIFY `ProvinceKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสจังหวัด';

--
-- AUTO_INCREMENT for table `Race`
--
ALTER TABLE `Race`
  MODIFY `RaceKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสเชื้อชาติ';

--
-- AUTO_INCREMENT for table `Religion`
--
ALTER TABLE `Religion`
  MODIFY `ReligionKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสศาสนา';

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `RoleKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสบทบาท';

--
-- AUTO_INCREMENT for table `RoleMember`
--
ALTER TABLE `RoleMember`
  MODIFY `RoleKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสบทบาท';

--
-- AUTO_INCREMENT for table `School`
--
ALTER TABLE `School`
  MODIFY `SchoolKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสสถานศึกษา';

--
-- AUTO_INCREMENT for table `SequencePeriod`
--
ALTER TABLE `SequencePeriod`
  MODIFY `SequencePeriodKey` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Subdistrict`
--
ALTER TABLE `Subdistrict`
  MODIFY `SubdistrictKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสตำบล';

--
-- AUTO_INCREMENT for table `Title`
--
ALTER TABLE `Title`
  MODIFY `TitleKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสคำนำหน้าชื่อ';

--
-- AUTO_INCREMENT for table `UserEducation`
--
ALTER TABLE `UserEducation`
  MODIFY `UserEducationKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสการศึกษาผู้ใช้';

--
-- AUTO_INCREMENT for table `WInterval`
--
ALTER TABLE `WInterval`
  MODIFY `WIntervalKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสวันในระหว่างสัปดาห์';

--
-- AUTO_INCREMENT for table `Year`
--
ALTER TABLE `Year`
  MODIFY `YearKey` int NOT NULL AUTO_INCREMENT COMMENT 'รหัสปี';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Configuration`
--
ALTER TABLE `Configuration`
  ADD CONSTRAINT `ConfigSectionKey` FOREIGN KEY (`ConfigSectionKey`) REFERENCES `ConfigSection` (`ConfigSectionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Department`
--
ALTER TABLE `Department`
  ADD CONSTRAINT `DepartmentGroupKey` FOREIGN KEY (`DepartmentGroupKey`) REFERENCES `DepartmentGroup` (`DepartmentGroupKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Position`
--
ALTER TABLE `Position`
  ADD CONSTRAINT `PositionProvinceKey` FOREIGN KEY (`ProvinceKey`) REFERENCES `Province` (`ProvinceKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjCheckDetail`
--
ALTER TABLE `ProjCheckDetail`
  ADD CONSTRAINT `ProjCheckDetailCheckListKey` FOREIGN KEY (`CheckListKey`) REFERENCES `CheckList` (`CheckListKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjCheckDetailProjectCheckTemplateKey` FOREIGN KEY (`ProjCheckTemplateKey`) REFERENCES `ProjCheckTemplate` (`ProjCheckTemplateKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Project`
--
ALTER TABLE `Project`
  ADD CONSTRAINT `ProjectDepartmentKey` FOREIGN KEY (`DepartmentKey`) REFERENCES `Department` (`DepartmentKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDistrictKey` FOREIGN KEY (`DistrictKey`) REFERENCES `District` (`DistrictKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectSubdistrictKey` FOREIGN KEY (`SubdistrictKey`) REFERENCES `Subdistrict` (`SubdistrictKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectYearKey` FOREIGN KEY (`YearKey`) REFERENCES `Year` (`YearKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectBlackList`
--
ALTER TABLE `ProjectBlackList`
  ADD CONSTRAINT `ProjectBlackListProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectBudget`
--
ALTER TABLE `ProjectBudget`
  ADD CONSTRAINT `ProjectBudgetProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectBudgetProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectChecklist`
--
ALTER TABLE `ProjectChecklist`
  ADD CONSTRAINT `ProjectChecklistChecklistKey` FOREIGN KEY (`ChecklistKey`) REFERENCES `CheckList` (`CheckListKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectChecklistProjCheckDetailKey` FOREIGN KEY (`ProjCheckDetailKey`) REFERENCES `ProjCheckDetail` (`ProjCheckDetailKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectChecklistProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectChecklistProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectCommittee`
--
ALTER TABLE `ProjectCommittee`
  ADD CONSTRAINT `ProjectCommitteeProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDeliver`
--
ALTER TABLE `ProjectDeliver`
  ADD CONSTRAINT `ProjectDeliverProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDeliverProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDeliverBudget`
--
ALTER TABLE `ProjectDeliverBudget`
  ADD CONSTRAINT `ProjectDeliverBudgetProjectDeliverKey` FOREIGN KEY (`ProjectDeliverKey`) REFERENCES `ProjectDeliver` (`ProjectDeliverKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDeliverPhase`
--
ALTER TABLE `ProjectDeliverPhase`
  ADD CONSTRAINT `ProjectDeliverPhaseProjectDeliverKey` FOREIGN KEY (`ProjectDeliverKey`) REFERENCES `ProjectDeliver` (`ProjectDeliverKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDeliverPhaseProjectPhaseKey` FOREIGN KEY (`ProjectPhaseKey`) REFERENCES `ProjectPhase` (`ProjectPhaseKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDProgDetail`
--
ALTER TABLE `ProjectDProgDetail`
  ADD CONSTRAINT `ProjectDProgDetailProjectDProgressKey` FOREIGN KEY (`ProjectDProgressKey`) REFERENCES `ProjectDProgress` (`ProjectDProgressKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDProgImg`
--
ALTER TABLE `ProjectDProgImg`
  ADD CONSTRAINT `ProjectDProgImgProjectDProgressKey` FOREIGN KEY (`ProjectDProgressKey`) REFERENCES `ProjectDProgress` (`ProjectDProgressKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgImgProjectImgLocationKey` FOREIGN KEY (`ProjectImgLocationKey`) REFERENCES `ProjectImgLocations` (`ProjectImgLocationsKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgImgProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDProgMach`
--
ALTER TABLE `ProjectDProgMach`
  ADD CONSTRAINT `ProjectDProgMachMachineKey` FOREIGN KEY (`MachineKey`) REFERENCES `Machine` (`MachineKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgMachProjectDProgressKey` FOREIGN KEY (`ProjectDProgressKey`) REFERENCES `ProjectDProgress` (`ProjectDProgressKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgMachProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDProgMan`
--
ALTER TABLE `ProjectDProgMan`
  ADD CONSTRAINT `ProjectDProgManManKey` FOREIGN KEY (`ManKey`) REFERENCES `Man` (`ManKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgManProjectDProgressKey` FOREIGN KEY (`ProjectDProgressKey`) REFERENCES `ProjectDProgress` (`ProjectDProgressKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgManProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDProgress`
--
ALTER TABLE `ProjectDProgress`
  ADD CONSTRAINT `ProjectDProgressProblemCatKey` FOREIGN KEY (`ProblemCatKey`) REFERENCES `ProblemCat` (`ProblemCatKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgressProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgressProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectDProgTask`
--
ALTER TABLE `ProjectDProgTask`
  ADD CONSTRAINT `ProjectDProgTaskProjectDProgressKey` FOREIGN KEY (`ProjectDProgressKey`) REFERENCES `ProjectDProgress` (`ProjectDProgressKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgTaskProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectDProgTaskProjectTaskKey` FOREIGN KEY (`ProjectTaskKey`) REFERENCES `ProjectTask` (`ProjectTaskKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectExtSupervisor`
--
ALTER TABLE `ProjectExtSupervisor`
  ADD CONSTRAINT `ProjectExtSupervisorProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectExtSupervisorProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectImgLocations`
--
ALTER TABLE `ProjectImgLocations`
  ADD CONSTRAINT `ProjectImgLocationsProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectImgLocationsProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectModification`
--
ALTER TABLE `ProjectModification`
  ADD CONSTRAINT `ProjectModificationProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectModificationProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectMPlan`
--
ALTER TABLE `ProjectMPlan`
  ADD CONSTRAINT `ProjectMPlanProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectMPlanProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectMPlanYearKey` FOREIGN KEY (`YearKey`) REFERENCES `Year` (`YearKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectPhase`
--
ALTER TABLE `ProjectPhase`
  ADD CONSTRAINT `ProjectPhaseProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectPhaseProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectPhaseDeliver`
--
ALTER TABLE `ProjectPhaseDeliver`
  ADD CONSTRAINT `ProjectPhaseDeliverProjectDeliverKey` FOREIGN KEY (`ProjectDeliverKey`) REFERENCES `ProjectDeliver` (`ProjectDeliverKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectPhaseDeliverProjectPhaseKey` FOREIGN KEY (`ProjectPhaseKey`) REFERENCES `ProjectPhase` (`ProjectPhaseKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectPhaseDeliverProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectRevision`
--
ALTER TABLE `ProjectRevision`
  ADD CONSTRAINT `ProjectRevisionDepartmentKey` FOREIGN KEY (`DepartmentKey`) REFERENCES `Department` (`DepartmentKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectRevisionDistrictKey` FOREIGN KEY (`DistrictKey`) REFERENCES `District` (`DistrictKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectRevisionSubdistrictKey` FOREIGN KEY (`SubdistrictKey`) REFERENCES `Subdistrict` (`SubdistrictKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectRevisionYearKey` FOREIGN KEY (`YearKey`) REFERENCES `Year` (`YearKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectSupervisor`
--
ALTER TABLE `ProjectSupervisor`
  ADD CONSTRAINT `ProjectSupervisorProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectTask`
--
ALTER TABLE `ProjectTask`
  ADD CONSTRAINT `ProjectTaskProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectTaskProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectUser`
--
ALTER TABLE `ProjectUser`
  ADD CONSTRAINT `ProjectUserProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `ProjectWProgress`
--
ALTER TABLE `ProjectWProgress`
  ADD CONSTRAINT `ProjectWProgressProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectWProgressProjectRevisionKey` FOREIGN KEY (`ProjectRevisionKey`) REFERENCES `ProjectRevision` (`ProjectRevisionKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectWProgressWIntervalKey` FOREIGN KEY (`WIntervalKey`) REFERENCES `WInterval` (`WIntervalKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ProjectWProgressYearKey` FOREIGN KEY (`YearKey`) REFERENCES `Year` (`YearKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Province`
--
ALTER TABLE `Province`
  ADD CONSTRAINT `ProvinceGroupKey` FOREIGN KEY (`ProvinceGroupKey`) REFERENCES `ProvinceGroup` (`ProvinceGroupKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Role`
--
ALTER TABLE `Role`
  ADD CONSTRAINT `RoleKey` FOREIGN KEY (`RoleKey`) REFERENCES `RoleMember` (`RoleKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `RoleMember`
--
ALTER TABLE `RoleMember`
  ADD CONSTRAINT `RoleMemberRoleKey` FOREIGN KEY (`RoleKey`) REFERENCES `Role` (`RoleKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `RolePermission`
--
ALTER TABLE `RolePermission`
  ADD CONSTRAINT `RolePermissionRoleKey` FOREIGN KEY (`RoleKey`) REFERENCES `Role` (`RoleKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `RolePermissionSecurableKey` FOREIGN KEY (`SecurableKey`) REFERENCES `Securable` (`SecurableKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `SequencePeriod`
--
ALTER TABLE `SequencePeriod`
  ADD CONSTRAINT `SequencePeriodSequenceKey` FOREIGN KEY (`SequenceKey`) REFERENCES `Sequence` (`SequenceKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Subdistrict`
--
ALTER TABLE `Subdistrict`
  ADD CONSTRAINT `DistrictKey` FOREIGN KEY (`DistrictKey`) REFERENCES `District` (`DistrictKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `UserEducation`
--
ALTER TABLE `UserEducation`
  ADD CONSTRAINT `UserEducationEducationLevelKey` FOREIGN KEY (`EducationLevelKey`) REFERENCES `EducationLevel` (`EducationLevelKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `UserEducationSchoolKey` FOREIGN KEY (`SchoolKey`) REFERENCES `School` (`SchoolKey`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `XReqMessage`
--
ALTER TABLE `XReqMessage`
  ADD CONSTRAINT `XReqMessageProjectKey` FOREIGN KEY (`ProjectKey`) REFERENCES `Project` (`ProjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
