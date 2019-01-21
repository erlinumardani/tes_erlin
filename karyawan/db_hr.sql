/*
Navicat MySQL Data Transfer

Source Server         : Local MySQL Server 5.7
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : db_hr

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-21 16:43:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bagian
-- ----------------------------
DROP TABLE IF EXISTS `bagian`;
CREATE TABLE `bagian` (
  `kode_bagian` char(5) DEFAULT NULL,
  `nama_bagian` varchar(50) DEFAULT NULL,
  `kepala_bagian` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bagian
-- ----------------------------
INSERT INTO `bagian` VALUES ('1', 'Estate Management', null);
INSERT INTO `bagian` VALUES ('2', 'Finance & Accounting', null);
INSERT INTO `bagian` VALUES ('3', 'Human Resources', null);
INSERT INTO `bagian` VALUES ('4', 'Information Technology', null);

-- ----------------------------
-- Table structure for gaji
-- ----------------------------
DROP TABLE IF EXISTS `gaji`;
CREATE TABLE `gaji` (
  `no_induk` char(9) DEFAULT NULL,
  `tahun` decimal(4,0) DEFAULT NULL,
  `bulan` decimal(2,0) DEFAULT NULL,
  `kode_gaji` char(2) DEFAULT NULL,
  `jumlah` decimal(18,0) DEFAULT NULL,
  KEY `fk_gaji_karyawan_1` (`no_induk`),
  CONSTRAINT `fk_gaji_karyawan_1` FOREIGN KEY (`no_induk`) REFERENCES `karyawan` (`no_induk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gaji
-- ----------------------------
INSERT INTO `gaji` VALUES ('003', '2019', '1', '1', '1500000');
INSERT INTO `gaji` VALUES ('006', '2019', '1', '1', '1250000');
INSERT INTO `gaji` VALUES ('004', '2019', '1', '1', '1050000');
INSERT INTO `gaji` VALUES ('007', '2019', '1', '1', '1200000');
INSERT INTO `gaji` VALUES ('011', '2019', '1', '1', '1400000');
INSERT INTO `gaji` VALUES ('014', '2019', '1', '1', '1300000');
INSERT INTO `gaji` VALUES ('017', '2019', '1', '1', '1700000');
INSERT INTO `gaji` VALUES ('012', '2019', '1', '1', '1400000');
INSERT INTO `gaji` VALUES ('013', '2019', '1', '1', '1300000');
INSERT INTO `gaji` VALUES ('020', '2019', '1', '1', '1550000');
INSERT INTO `gaji` VALUES ('001', '2019', '1', '1', '1000000');
INSERT INTO `gaji` VALUES ('009', '2019', '1', '1', '1200000');
INSERT INTO `gaji` VALUES ('111', '2019', '1', '', '1500000');

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan` (
  `no_induk` char(9) NOT NULL,
  `kode_bagian` char(9) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `tgl_masuk` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `golongan` char(3) DEFAULT NULL,
  PRIMARY KEY (`no_induk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES ('001', '4', 'Riri Yadi', 'Jakarta', '1979-01-21 12:40:50', '2019-01-21 16:42:42', '4');
INSERT INTO `karyawan` VALUES ('003', '2', 'Ellen Oey', 'Jakarta', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '5');
INSERT INTO `karyawan` VALUES ('004', '1', 'Ramli', 'Medan', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '2');
INSERT INTO `karyawan` VALUES ('006', '1', 'Mamat', 'Medan', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '2');
INSERT INTO `karyawan` VALUES ('007', '2', 'Mahyudin', 'Medan', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '7');
INSERT INTO `karyawan` VALUES ('009', '4', 'Rachmat Kartolo', 'Jakarta', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '3');
INSERT INTO `karyawan` VALUES ('011', '1', 'Safrudin B. Suhali', 'Surabaya', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '2');
INSERT INTO `karyawan` VALUES ('012', '3', 'Edi Kusnadi', 'Bandung', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '3');
INSERT INTO `karyawan` VALUES ('013', '3', 'Dulkarim', 'Jakarta', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '3');
INSERT INTO `karyawan` VALUES ('014', '1', 'Karnadi B. Sakrum', 'Jakarta', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '2');
INSERT INTO `karyawan` VALUES ('017', '2', 'Christian', 'Medan', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '6');
INSERT INTO `karyawan` VALUES ('020', '3', 'Midil', 'Jakarta', '1979-01-21 12:40:50', '2019-01-21 16:42:49', '1');
INSERT INTO `karyawan` VALUES ('111', '1', 'Erlin Umar Dani', 'Medan', '1989-01-01 00:00:00', '2019-01-01 00:00:00', '1');
