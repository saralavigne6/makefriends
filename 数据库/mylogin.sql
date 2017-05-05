/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.41-community-nt : Database - mylogin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mylogin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mylogin`;

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `logname` char(30) NOT NULL,
  `password` char(15) NOT NULL,
  `email` char(40) NOT NULL,
  `phone` char(15) NOT NULL,
  `message` char(200) NOT NULL,
  `pic` char(250) default NULL,
  PRIMARY KEY  (`logname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `register` */

insert  into `register`(`logname`,`password`,`email`,`phone`,`message`,`pic`) values ('1','2','232','13','12312','1.jpg'),('charming','1234','ihateyou1692783558@hotmail.com','15730280932','希望能交到知心朋友！','1.jpg'),('sara3','1234','12312412412','12412','你们他们','1.jpg'),('ZhangQin','123456','1692783558@qq.com','15730280932','hello,你好，阿西吧','ZhangQin2.png'),('zq','1234','13123','1231','你好护卫队风雅颂围绕反倒是广东省','1.jpg'),('zq1','1234','1692783558@qq.com','1','从哪三个月份','1.jpg'),('zq2','1234','13123124','12345678900','梵蒂冈的','1.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
