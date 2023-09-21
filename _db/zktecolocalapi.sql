/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.28-MariaDB : Database - zktecolocalapi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zktecolocalapi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `zktecolocalapi`;

/*Table structure for table `checkinout` */

DROP TABLE IF EXISTS `checkinout`;

CREATE TABLE `checkinout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `USERID` int(11) DEFAULT NULL COMMENT 'Device User ID',
  `CHECKTIME` timestamp NULL DEFAULT NULL COMMENT 'Date',
  `CHECKTYPE` varchar(250) DEFAULT NULL COMMENT 'CHECKTYPE',
  `VERIFYCODE` int(11) DEFAULT NULL COMMENT 'VERIFYCODE',
  `SENSORID` varchar(250) DEFAULT NULL COMMENT 'Device ID',
  `Memoinfo` varchar(250) DEFAULT NULL COMMENT 'Memoinfo',
  `WorkCode` varchar(250) DEFAULT NULL COMMENT 'WorkCode',
  `sn` varchar(250) DEFAULT NULL COMMENT 'SN',
  `UserExtFmt` int(11) DEFAULT NULL COMMENT 'UserExtFmt',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `checkinout` */

insert  into `checkinout`(`id`,`USERID`,`CHECKTIME`,`CHECKTYPE`,`VERIFYCODE`,`SENSORID`,`Memoinfo`,`WorkCode`,`sn`,`UserExtFmt`) values 
(1,907,'2023-09-20 10:09:00','I',15,'105','','0','AF0D173260418',1),
(2,882,'2023-09-20 10:09:00','I',15,'105','','0','AF0D173260418',1),
(3,892,'2023-09-20 10:09:00','I',15,'105','','0','AF0D173260418',1),
(4,774,'2023-09-20 10:09:00','I',15,'105','','0','AF0D173260418',1),
(5,898,'2023-09-20 10:09:00','I',15,'105','','0','AF0D173260418',1),
(6,823,'2023-09-20 10:09:00','I',15,'105','','0','AF0D173260418',1),
(7,899,'2023-09-20 10:09:00','I',15,'105','','0','AF0D173260418',1),
(8,828,'2023-09-20 10:09:00','I',15,'105','','0','AF0D173260418',1),
(9,908,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(10,883,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(11,739,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(12,884,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(13,740,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(14,904,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(15,886,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(16,908,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(17,845,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(18,905,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(19,896,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(20,738,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(21,906,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(22,887,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(23,700,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(24,902,'2023-09-20 11:09:00','I',15,'105','','0','AF0D173260418',1),
(25,817,'2023-09-20 11:09:00','I',16,'101','','0','AF6P200960033',0),
(26,832,'2023-09-20 11:09:00','I',16,'101','','0','AF6P200960033',0),
(27,750,'2023-09-20 11:09:00','I',16,'101','','0','AF6P200960033',0),
(28,726,'2023-09-20 11:09:00','I',16,'101','','0','AF6P200960033',0),
(29,821,'2023-09-20 11:09:00','I',16,'101','','0','AF6P200960033',0),
(30,831,'2023-09-20 11:09:00','I',16,'101','','0','AF6P200960033',0),
(31,829,'2023-09-20 11:09:00','I',16,'101','','0','AF6P200960033',0),
(32,842,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(33,758,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(34,833,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(35,802,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(36,827,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(37,820,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(38,830,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(39,801,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(40,706,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(41,841,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(42,784,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(43,759,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(44,874,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(45,806,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(46,697,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(47,808,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(48,790,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(49,809,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(50,800,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(51,839,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(52,836,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(53,816,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(54,822,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(55,802,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(56,786,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(57,854,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(58,798,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(59,824,'2023-09-20 12:09:00','I',16,'101','','0','AF6P200960033',0),
(60,751,'2023-09-20 13:09:00','I',16,'101','','0','AF6P200960033',0),
(61,870,'2023-09-20 13:09:00','I',16,'101','','0','AF6P200960033',0),
(62,810,'2023-09-20 13:09:00','I',16,'101','','0','AF6P200960033',0),
(63,796,'2023-09-20 13:09:00','I',16,'101','','0','AF6P200960033',0),
(64,826,'2023-09-20 13:09:00','I',16,'101','','0','AF6P200960033',0),
(65,887,'2023-09-20 13:09:00','I',15,'105','','0','AF0D173260418',1),
(66,709,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(67,708,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(68,707,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(69,706,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(70,736,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(71,710,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(72,735,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(73,734,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(74,737,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(75,733,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(76,879,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(77,880,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(78,863,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(79,858,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(80,859,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(81,860,'2023-09-20 13:09:00','I',16,'103','','0','AF6P200960100',0),
(82,865,'2023-09-20 14:09:00','I',16,'103','','0','AF6P200960100',0),
(83,868,'2023-09-20 14:09:00','I',16,'103','','0','AF6P200960100',0),
(84,877,'2023-09-20 14:09:00','I',16,'103','','0','AF6P200960100',0),
(85,869,'2023-09-20 14:09:00','I',16,'103','','0','AF6P200960100',0),
(86,699,'2023-09-20 14:09:00','I',16,'101','','0','AF6P200960033',0),
(87,883,'2023-09-20 14:09:00','I',15,'105','','0','AF0D173260418',1),
(88,732,'2023-09-20 14:09:00','I',16,'101','','0','AF6P200960033',0),
(89,731,'2023-09-20 14:09:00','I',16,'101','','0','AF6P200960033',0),
(90,795,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(91,804,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(92,763,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(93,722,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(94,793,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(95,773,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(96,771,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(97,787,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(98,782,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(99,765,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(100,777,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(101,788,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(102,789,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(103,783,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(104,769,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(105,775,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(106,770,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(107,805,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(108,815,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(109,723,'2023-09-20 14:09:00','I',16,'102','','0','AF6P200960020',0),
(110,721,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(111,767,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(112,764,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(113,762,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(114,766,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(115,772,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(116,814,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(117,813,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(118,754,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(119,790,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(120,780,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(121,755,'2023-09-20 15:09:00','I',16,'102','','0','AF6P200960020',0),
(122,907,'2023-09-20 15:09:00','I',15,'105','','0','AF0D173260418',1),
(123,757,'2023-09-20 15:09:00','I',15,'105','','0','AF0D173260418',1),
(124,903,'2023-09-20 15:09:00','I',15,'105','','0','AF0D173260418',1),
(125,888,'2023-09-20 15:09:00','I',15,'105','','0','AF0D173260418',1),
(126,866,'2023-09-20 15:09:00','I',15,'105','','0','AF0D173260418',1),
(127,875,'2023-09-20 15:09:00','I',15,'105','','0','AF0D173260418',1),
(128,851,'2023-09-20 15:09:00','I',15,'105','','0','AF0D173260418',1),
(129,873,'2023-09-20 15:09:00','I',16,'103','','0','AF6P200960100',0),
(130,872,'2023-09-20 15:09:00','I',16,'103','','0','AF6P200960100',0),
(131,862,'2023-09-20 15:09:00','I',16,'103','','0','AF6P200960100',0),
(132,876,'2023-09-20 15:09:00','I',16,'103','','0','AF6P200960100',0),
(133,753,'2023-09-20 15:09:00','I',16,'103','','0','AF6P200960100',0),
(134,720,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(135,864,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(136,857,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(137,881,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(138,770,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(139,715,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(140,714,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(141,867,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(142,815,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(143,775,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(144,702,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(145,814,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(146,769,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(147,767,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(148,721,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(149,771,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(150,762,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(151,847,'2023-09-20 16:09:00','I',16,'104','','0','AF6P200960054',0),
(152,804,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(153,764,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(154,765,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(155,763,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(156,795,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(157,789,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(158,788,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(159,793,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(160,782,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(161,700,'2023-09-20 16:09:00','I',15,'105','','0','AF0D173260418',1),
(162,766,'2023-09-20 16:09:00','I',16,'102','','0','AF6P200960020',0),
(163,718,'2023-09-20 16:09:00','I',16,'104','','0','AF6P200960054',0),
(164,841,'2023-09-20 16:09:00','I',16,'104','','0','AF6P200960054',0),
(165,710,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(166,856,'2023-09-20 16:09:00','I',16,'104','','0','AF6P200960054',0),
(167,860,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(168,849,'2023-09-20 16:09:00','I',16,'104','','0','AF6P200960054',0),
(169,843,'2023-09-20 16:09:00','I',16,'104','','0','AF6P200960054',0),
(170,873,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(171,890,'2023-09-20 16:09:00','I',15,'105','','0','AF0D173260418',1),
(172,897,'2023-09-20 16:09:00','I',15,'105','','0','AF0D173260418',1),
(173,736,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(174,708,'2023-09-20 16:09:00','I',16,'103','','0','AF6P200960100',0),
(175,902,'2023-09-20 16:09:00','I',15,'105','','0','AF0D173260418',1),
(176,903,'2023-09-20 17:09:00','I',15,'105','','0','AF0D173260418',1),
(177,899,'2023-09-20 17:09:00','I',15,'105','','0','AF0D173260418',1),
(178,906,'2023-09-20 17:09:00','I',15,'105','','0','AF0D173260418',1),
(179,896,'2023-09-20 17:09:00','I',15,'105','','0','AF0D173260418',1),
(180,849,'2023-09-20 17:09:00','I',16,'104','','0','AF6P200960054',0),
(181,829,'2023-09-20 17:09:00','I',16,'101','','0','AF6P200960033',0),
(182,806,'2023-09-20 17:09:00','I',16,'101','','0','AF6P200960033',0),
(183,895,'2023-09-20 17:09:00','I',15,'105','','0','AF0D173260418',1),
(184,900,'2023-09-20 17:09:00','I',15,'105','','0','AF0D173260418',1),
(185,720,'2023-09-20 17:09:00','I',16,'103','','0','AF6P200960100',0),
(186,821,'2023-09-20 18:09:00','I',16,'101','','0','AF6P200960033',0),
(187,784,'2023-09-20 18:09:00','I',16,'101','','0','AF6P200960033',0),
(188,818,'2023-09-20 18:09:00','I',16,'101','','0','AF6P200960033',0),
(189,888,'2023-09-20 18:09:00','I',15,'105','','0','AF0D173260418',1),
(190,706,'2023-09-20 18:09:00','I',16,'101','','0','AF6P200960033',0),
(191,759,'2023-09-20 18:09:00','I',16,'101','','0','AF6P200960033',0),
(192,862,'2023-09-20 18:09:00','I',16,'103','','0','AF6P200960100',0),
(193,867,'2023-09-20 18:09:00','I',16,'103','','0','AF6P200960100',0),
(194,857,'2023-09-20 19:09:00','I',16,'103','','0','AF6P200960100',0),
(195,733,'2023-09-20 20:09:00','I',16,'103','','0','AF6P200960100',0),
(196,734,'2023-09-20 21:09:00','I',16,'103','','0','AF6P200960100',0),
(197,735,'2023-09-20 21:09:00','I',16,'103','','0','AF6P200960100',0);

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Device User ID',
  `Badgenumber` varchar(250) DEFAULT NULL COMMENT 'User ID',
  `SSN` varchar(250) DEFAULT NULL COMMENT 'Staff ID',
  `Name` varchar(250) DEFAULT NULL COMMENT 'Employee Name',
  `Gender` varchar(250) DEFAULT NULL COMMENT 'Gender',
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=925 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `userinfo` */

insert  into `userinfo`(`USERID`,`Badgenumber`,`SSN`,`Name`,`Gender`) values 
(697,'289','1124','Shikha Baroi',''),
(698,'288','414','Anjana Da',''),
(699,'287','798','Prosanto Kumar Chandro',''),
(700,'286','797','Fahima Aktar',''),
(701,'285','777','Al Amin Gazi',''),
(702,'284','787','Razu Gagi',''),
(703,'283','786','Sumon Hossen',''),
(704,'282','782','Serazul Islam',''),
(705,'281','780','Hossein Ahmad Hossen',''),
(706,'280','784','Sherajul Shalikin',''),
(707,'279','783','Deloar Hossoin Kojol',''),
(708,'278','779','Abdul Hamid',''),
(709,'277','778','Arif Hossain',''),
(710,'276','775','Farida Begum',''),
(711,'275','771','Abul Kashem',''),
(712,'274','768','Rinku Kenedy Das',''),
(713,'273','765','Joynal Hossen',''),
(714,'272','1167','Subroto Mojumder',''),
(715,'271','1166','Mone mohan Sarkar',''),
(716,'270','1171','Shanto Sarder',''),
(717,'269','1170','Joy Sarkar',''),
(718,'268','1169','Meghnath Das',''),
(719,'267','1168','Asharat Hossen',''),
(720,'266','917','Bipul Kumar Das',''),
(721,'265','154','Anjoli Chowdhury',''),
(722,'264','382','Abdul Mannan',''),
(723,'263','1005','Protima Rani',''),
(724,'262','1051','Abdul Sardar',''),
(725,'261','361','Sushil Kumar Bar',''),
(726,'260','461','Sharothi Rani Biswas',''),
(727,'259','529','Nasima Khatun',''),
(728,'258','1079','Josna Khatun',''),
(729,'257','1115','Nazma Khatun',''),
(730,'256','1149','Moyna Biswas',''),
(731,'255','1114','Shiful Islam',''),
(732,'254','981','Raju Biswas',''),
(733,'253','1162','Abdus Sobahan',''),
(734,'252','1161','Shahjada Hossain',''),
(735,'251','1116','Mir Mahmudur Rahman',''),
(736,'250','1102','Yasin Dhali',''),
(737,'249','284','Parimal Munda',''),
(738,'248','1129','Shabbia Rani Sardar',''),
(739,'247','915','Kartik Chandra Biswas',''),
(740,'246','890','Mukul Hossain',''),
(741,'245','112','Nicolas Baray',''),
(742,'243','353','Suryia Khatun',''),
(743,'242','487','Shamima Khatun',''),
(744,'241','875','Maloti Biswas',''),
(745,'240','905','Eliash Howlader',''),
(746,'239','1109','John Biswas',''),
(747,'238','1145','Daly Biswas',''),
(748,'237','1164','Farju Ahamed',''),
(749,'236','1159','Abu Yousuf',''),
(750,'235','1154','Maya Mandol',''),
(751,'234','1151','Abdullah Al Mamun',''),
(752,'233','1146','Soumik Biswas',''),
(753,'232','948','Sarothi Munda',''),
(754,'231','1002','Rita Rani Sarker',''),
(755,'230','1001','Laboni Rani Mittra',''),
(756,'229','1099','Sagor Hossen',''),
(757,'228','760','Swapan Kumar Das',''),
(758,'225','1139','Md. Mahemanul Islam',''),
(759,'224','1110','Mr. Radhapada Sarkar',''),
(760,'222','903','Pobitro Mondol',''),
(761,'221','30','Monjuara Begum',''),
(762,'220','147','Kalpana Rani Sarkar',''),
(763,'219','1165','Md Rasheduzzaman',''),
(764,'218','1156','Marry Mistika Gaine',''),
(765,'217','1155','Prosenjeet Mondal',''),
(766,'216','1152','Sanjay Sarkar',''),
(767,'215','1127','Fatema Khatun',''),
(768,'214','1119','Abul Kalam',''),
(769,'213','1111','Sonda Das',''),
(770,'212','1087','Shariful Islam',''),
(771,'211','1084','Iqbal Amin',''),
(772,'210','1074','Esmatara Khanam',''),
(773,'209','989','Bharati Rani Nag',''),
(774,'208','984','Chanchal Munda',''),
(775,'207','955','Sotima Sarkar',''),
(776,'206','930','Zinnatunnesa Begum',''),
(777,'205','904','Shamim  Iqbal Hossen',''),
(778,'203','878','Rokaya Begum',''),
(779,'202','877','Jahanara Khatun',''),
(780,'201','855','Josepina Biswas',''),
(781,'200','734','Kumar Krishna Biswas',''),
(782,'199','709','Shyamoli Mardi',''),
(783,'198','692','Tapas Kumar Dhali',''),
(784,'197','1106','Ms. Rounok Jahan',''),
(785,'196','481','Sreemoti Anjoli Roy',''),
(786,'195','1103','Ms. Tazma Khatun',''),
(787,'194','438','Rina Begum',''),
(788,'193','425','Golam Mostafa Shakh',''),
(789,'192','410','Mostafizur Rahman',''),
(790,'190','362','Sotodol Das',''),
(791,'189','355','Rozina Begum',''),
(792,'187','346','Shefali Rani Sarkar',''),
(793,'186','287','Prodip Kumar Gain',''),
(794,'185','1078','Mr. Proshanto Chakrabort',''),
(795,'184','285','Saiful Alam',''),
(796,'182','1077','Mr. Md  Sadik Sardar',''),
(797,'178','1068','Ms. Parvina Khatun',''),
(798,'177','1062','Ms. Josna Rani Das',''),
(799,'176','1059','Mr. Biswajit Mondol',''),
(800,'175','1003','Mst. Morzina Khatun',''),
(801,'174','998','Mst.Shiuli Khatun',''),
(802,'173','997','Shampa Rani Sana',''),
(803,'172','996','Shaikh Mahmudur Rahman',''),
(804,'171','250','Sadananda Mullick',''),
(805,'170','249','Milon Ali',''),
(806,'169','995','Banani Roy',''),
(807,'166','994','Anamika Mondal',''),
(808,'165','975','Nazma Begum',''),
(809,'164','959','Ms. Parbati Rani Munda',''),
(810,'163','957','Nilema Das',''),
(811,'159','42','Parul Mistri',''),
(812,'158','41','Saidur Rahman',''),
(813,'157','37','Ranu Mondol',''),
(814,'156','35','Alo Palma',''),
(815,'155','33','Monika Mondal',''),
(816,'154','910','Rajkumary Mondol',''),
(817,'151','638','Ms. Alina Halder',''),
(818,'150','633','Ms. Kamrunnahar ss',''),
(819,'149','537','Bherabi Biswas',''),
(820,'148','497','Ms. Monira Aktar',''),
(821,'146','486','Nasrin Sultana',''),
(822,'145','485','Md Anisur Rahman',''),
(823,'144','420','Md Aktar Faruk',''),
(824,'142','322','Md Barkat Ali',''),
(825,'140','716','Sibu Hembron',''),
(826,'139','308','Samson Biswas',''),
(827,'138','272','Shankar  Kumar Dhali',''),
(828,'137','236','Thakaur Dash Sarkar',''),
(829,'136','233','Mst. Rebeka Khatun',''),
(830,'135','225','Ms. Salma Parvin',''),
(831,'134','223','Bhabarongon Kumar Mondol',''),
(832,'133','218','Purnima  Rani Roy',''),
(833,'132','146','Din Islam',''),
(834,'131','142','Ms. Laxmi Joy Dhar',''),
(835,'130','137','Md Abdul Bari Sardar',''),
(836,'129','118','Ms. Ferdousi Khatun',''),
(837,'128','1126','Abu Raihan',''),
(838,'127','1121','Amirul Islam',''),
(839,'126','100','Mst. Firoza Begum',''),
(840,'124','1098','Sohel Rana',''),
(841,'123','1097','Halima Khatun',''),
(842,'122','64','Moyna Sarkar',''),
(843,'121','1089','Sapna Parvin',''),
(844,'120','1064','Hazrat Ali',''),
(845,'119','1058','Kandil Al-Aksa',''),
(846,'118','1057','Altaf Hossain',''),
(847,'117','1000','Milton Pandey',''),
(848,'116','992','Maria Mondol',''),
(849,'115','990','Shahinur Rahman',''),
(850,'114','988','Ibrahim Hossain',''),
(851,'113','986','Uzzal Mondol',''),
(852,'112','949','Monjuara Khatun',''),
(853,'111','945','Philip Sardar',''),
(854,'110','931','Ohidul Islam',''),
(855,'109','733','Mahmudur Rahman',''),
(856,'108','630','Abul Hasan',''),
(857,'107','1157','Suranjan Kumar Sana',''),
(858,'105','1123','Rupali Sarkar',''),
(859,'103','1096','Nur Nahar',''),
(860,'102','1086','Josna Ara',''),
(861,'101','1067','Rinkey Dafader',''),
(862,'100','982','Bilash Anthony Gain',''),
(863,'99','958','Elizabet D-Barrous',''),
(864,'98','899','Shankar Kumar Ray',''),
(865,'97','898','Dablu Sarkar',''),
(866,'96','762','Bimal Kumar Sarkar',''),
(867,'95','742','Soroshoti Roy',''),
(868,'94','725','Sudhir Joydhar',''),
(869,'93','563','Goutom Kumar Sarkar',''),
(870,'92','58','Mst. Isharata  Ara Chowd',''),
(871,'91','57','Taru Rita Mondol',''),
(872,'90','507','Dukhiram Mondol',''),
(873,'89','453','Md Monirujjaman',''),
(874,'88','56','Dipali Mondol',''),
(875,'87','391','Amzad Hossain',''),
(876,'85','383','Aminul Islam',''),
(877,'84','195','Atarul Islam',''),
(878,'83','5','Ms. Taslima Khatun',''),
(879,'82','184','Kamona Boiragi',''),
(880,'81','166','Shanoj Kumar Bosu',''),
(881,'80','4','Nemai Biswas',''),
(882,'79','1073','Lina Mitra',''),
(883,'78','1053','Billal Hossain Ansary',''),
(884,'77','1052','Tayub Ali',''),
(885,'76','478','Bidhan Kumar Roy',''),
(886,'75','2','Sharipha Begum',''),
(887,'74','1163','Mina Akter Khuku',''),
(888,'73','1050','Mozammel Haque',''),
(889,'72','987','Syed Mohammed Khaled',''),
(890,'71','944','Masud Rana',''),
(891,'70','883','Joseph Khakha',''),
(892,'69','822','Sadhana Rani Paul',''),
(893,'68','707','Selimul Islam',''),
(894,'67','516','Shamol Sardar',''),
(895,'66','498','Jibon Kumar Dutta',''),
(896,'65','492','Bijoy Sorder',''),
(897,'64','488','Ananda Kumar Sarkar',''),
(898,'63','390','Basudeb Das',''),
(899,'62','388','Arifa Khatun',''),
(900,'61','384','Debashis Roy',''),
(901,'60','315','Abdul Wodud',''),
(902,'59','156','Mario Panday',''),
(903,'58','122','Ruhul Amin',''),
(904,'57','116','Rasida Begum',''),
(905,'56','25','Abdus Sabur',''),
(906,'55','477','Montu Kumar Pal',''),
(907,'54','214','Pankaj Biswas',''),
(908,'53','3','Nirmal Sardar',''),
(917,'391','','391',''),
(918,'1053','','1053',''),
(919,'1052','','1052',''),
(920,'984','','984',''),
(921,'1051','','1051',''),
(922,'760','','760',''),
(923,'322','','322',''),
(924,'1163','','1163','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
