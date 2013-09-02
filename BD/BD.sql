/*
SQLyog Ultimate v9.02 
MySQL - 5.5.32-0ubuntu0.12.04.1 : Database - yii
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yii` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yii`;

/*Table structure for table `AutorizacionUsuario` */

DROP TABLE IF EXISTS `AutorizacionUsuario`;

CREATE TABLE `AutorizacionUsuario` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`),
  CONSTRAINT `AutorizacionUsuario_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `ElementosAutorizados` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `AutorizacionUsuario` */

/*Table structure for table `ElementosAutorizados` */

DROP TABLE IF EXISTS `ElementosAutorizados`;

CREATE TABLE `ElementosAutorizados` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ElementosAutorizados` */

/*Table structure for table `ItemPadreHijo` */

DROP TABLE IF EXISTS `ItemPadreHijo`;

CREATE TABLE `ItemPadreHijo` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `ItemPadreHijo_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `ElementosAutorizados` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ItemPadreHijo_ibfk_2` FOREIGN KEY (`child`) REFERENCES `ElementosAutorizados` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ItemPadreHijo` */

/*Table structure for table `Usuario` */

DROP TABLE IF EXISTS `Usuario`;

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(128) NOT NULL,
  `pass` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `Usuario` */

insert  into `Usuario`(`id`,`usuario`,`pass`,`email`,`telefono`,`direccion`) values (1,'ivan','ivan','inaian','inania','iniasd'),(2,'prueba','prueba','peub','sifjohsdij','oaisdjj');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
