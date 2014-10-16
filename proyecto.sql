/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.67-community-nt : Database - proyecto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyecto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proyecto`;

/*Table structure for table `alumno_grupo` */

DROP TABLE IF EXISTS `alumno_grupo`;

CREATE TABLE `alumno_grupo` (
  `id` int(5) NOT NULL auto_increment,
  `id_alumno` int(5) NOT NULL,
  `id_grupo` int(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `alumno_grupo` */

insert  into `alumno_grupo`(`id`,`id_alumno`,`id_grupo`) values (3,3,1),(4,4,2),(5,5,2),(9,9,3),(11,8,1),(12,7,1),(13,8,1),(14,7,1),(15,8,1),(16,7,3),(17,8,3);

/*Table structure for table `grupo` */

DROP TABLE IF EXISTS `grupo`;

CREATE TABLE `grupo` (
  `id` int(5) NOT NULL auto_increment,
  `nombre` varchar(250) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  `orden` int(3) NOT NULL,
  `estatus` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `grupo` */

insert  into `grupo`(`id`,`nombre`,`avatar`,`orden`,`estatus`) values (1,'TIC71','0',0,1),(2,'TIC72','0',0,1),(3,'TIC73','0',0,1);

/*Table structure for table `maestro_materia` */

DROP TABLE IF EXISTS `maestro_materia`;

CREATE TABLE `maestro_materia` (
  `id` int(5) NOT NULL auto_increment,
  `id_maestro` int(5) NOT NULL,
  `id_materia` int(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `maestro_materia` */

insert  into `maestro_materia`(`id`,`id_maestro`,`id_materia`) values (1,1,1),(2,2,2),(5,5,2),(6,3,1),(7,4,3),(9,4,1);

/*Table structure for table `materia` */

DROP TABLE IF EXISTS `materia`;

CREATE TABLE `materia` (
  `id` int(5) NOT NULL auto_increment,
  `nombre` varchar(250) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  `orden` int(3) NOT NULL,
  `estatus` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `materia` */

insert  into `materia`(`id`,`nombre`,`avatar`,`orden`,`estatus`) values (1,'Programacion','0',0,1),(2,'Matematicas','0',0,1),(3,'Optativa','0',0,1);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(6) NOT NULL auto_increment,
  `Nombre` varchar(250) NOT NULL,
  `ApellidoPaterno` varchar(250) NOT NULL,
  `ApellidoMaterno` varchar(250) NOT NULL,
  `Telefono` varchar(250) NOT NULL,
  `Calle` varchar(250) NOT NULL,
  `NumeroExterior` int(5) NOT NULL,
  `NumeroInterior` int(5) NOT NULL,
  `Colonia` varchar(250) NOT NULL,
  `Municipio` varchar(250) NOT NULL,
  `Estado` varchar(250) NOT NULL,
  `CP` int(6) NOT NULL,
  `Correo` varchar(250) NOT NULL,
  `Usuario` varchar(250) NOT NULL,
  `Contrasena` varchar(250) NOT NULL,
  `Nivel` varchar(250) NOT NULL,
  `Estatus` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`Nombre`,`ApellidoPaterno`,`ApellidoMaterno`,`Telefono`,`Calle`,`NumeroExterior`,`NumeroInterior`,`Colonia`,`Municipio`,`Estado`,`CP`,`Correo`,`Usuario`,`Contrasena`,`Nivel`,`Estatus`) values (1,'Oswaldo','Ortega','Cordova','7223','flor de mexico',151,0,'guadalupe victoria','otzolotepec','mexico',52080,'oswaldortwga12@gmail.com','oswaldo','123','1','1'),(2,'usuario','desconocido','','7821','sdgf',140,0,'guadalupe','otzolotepec','mexico',52014,'usuario@gmail.com','usuario','123','1','1'),(3,'Joel','Herrera','Cruz','7254','kjabs',254,0,'','','',0,'','joel','123','2','1'),(4,'Iyeliz','reyes','','','',0,0,'','','',0,'','iyeliz','123','2','1'),(5,'Roxana','','','','',0,0,'','','',0,'','roxana','123','2','1'),(6,'Oswaldo','Ortega','Cordova','','',0,0,'','','',0,'','os','123','3','1'),(7,'Ricardo','Reyes','Romero','','',0,0,'','','',0,'','ricardo','123','3','1'),(8,'david','Peña','Flores','','',0,0,'','','',0,'','david','123','3','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
