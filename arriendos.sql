/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.6.4-MariaDB : Database - challengedb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`challengedb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;

USE `challengedb`;

/*Table structure for table `arrendatario` */

DROP TABLE IF EXISTS `arrendatario`;

CREATE TABLE `arrendatario` (
  `idArrendatario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rutArrendatario` varchar(45) CHARACTER SET utf8mb3 NOT NULL,
  `nombre` varchar(45) CHARACTER SET utf8mb3 NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  PRIMARY KEY (`idArrendatario`),
  KEY `idArrendatario` (`idArrendatario`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Data for the table `arrendatario` */

insert  into `arrendatario`(`idArrendatario`,`rutArrendatario`,`nombre`,`fechaNacimiento`) values (14,'8760213-3','Carlos','1961-03-20 13:03:36'),(15,'9652585-0','Juana de Arcos','1963-06-27 13:12:27'),(16,'17485693-K','Silvia Godoy Rojo','1951-03-10 15:19:29');

/*Table structure for table `arriendos` */

DROP TABLE IF EXISTS `arriendos`;

CREATE TABLE `arriendos` (
  `idArriendos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idArrendatario` int(10) unsigned NOT NULL,
  `idPropietario` int(10) unsigned NOT NULL,
  `idPropiedad` int(10) unsigned NOT NULL,
  `monto` int(11) NOT NULL,
  `fechaIni` datetime NOT NULL,
  `fechaFin` datetime NOT NULL,
  PRIMARY KEY (`idArriendos`),
  KEY `idArrendatario` (`idArrendatario`),
  KEY `idPropietario` (`idPropietario`),
  KEY `idPropiedad` (`idPropiedad`),
  CONSTRAINT `arriendos_ibfk_1` FOREIGN KEY (`idPropiedad`) REFERENCES `propiedad` (`idPropiedad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `arriendos_ibfk_2` FOREIGN KEY (`idPropietario`) REFERENCES `propietarios` (`idPropietario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `arriendos` */

insert  into `arriendos`(`idArriendos`,`idArrendatario`,`idPropietario`,`idPropiedad`,`monto`,`fechaIni`,`fechaFin`) values (2,14,2,3,150000,'2022-01-01 18:01:33','2022-02-28 18:01:38');

/*Table structure for table `propiedad` */

DROP TABLE IF EXISTS `propiedad`;

CREATE TABLE `propiedad` (
  `idPropiedad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idPropietario` int(10) unsigned NOT NULL,
  `calle` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `comuna` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  PRIMARY KEY (`idPropiedad`),
  KEY `idPropietario` (`idPropietario`),
  CONSTRAINT `propiedad_ibfk_1` FOREIGN KEY (`idPropietario`) REFERENCES `propietarios` (`idPropietario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `propiedad` */

insert  into `propiedad`(`idPropiedad`,`idPropietario`,`calle`,`numero`,`comuna`,`region`,`pais`) values (3,1,'Nudo Curauma','630','Valparaiso','Valparaiso','Chile'),(4,2,'Errazuriz','950','Valparaiso','Valparaiso','Chile'),(5,3,'Blanco','750','Valparaiso','Valparaiso','Chile'),(6,2,'Av Valparaiso','210','Valparaiso','Valparaiso','Peru'),(7,2,'1 Norte','1150','Viña del Mar','Viña del Mar','Italia'),(8,2,'15 Norte','2230','Viña del Mar','Viña del mar','Chile');

/*Table structure for table `propietarios` */

DROP TABLE IF EXISTS `propietarios`;

CREATE TABLE `propietarios` (
  `idPropietario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rutPropietario` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  PRIMARY KEY (`idPropietario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `propietarios` */

insert  into `propietarios`(`idPropietario`,`rutPropietario`,`nombre`,`fechaNacimiento`) values (1,'8760213-3','Carlos Armijo','1961-01-20 17:59:32'),(2,'22585996-4','Juan Galdames','1950-01-10 09:13:33'),(3,'11875989-6','Sonia Gonzalez','1955-01-13 09:14:41');

/* Procedure structure for procedure `sp_ArrendatariosArriendoFueraChile` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ArrendatariosArriendoFueraChile` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_ArrendatariosArriendoFueraChile`()
BEGIN
		/*
			Se Pide: Los Arrendatarios que arriendan fuera de Chile
		*/
		
		SELECT 	a.idArriendos		,
			a.monto			,
			a.fechaFin		,
			p.calle			,
			p.numero		,
			p.comuna		,
			p.region		, 
			p.pais			, 
			b.rutArrendatario	,
			b.nombre		,
			b.fechaNacimiento
		FROM 	arriendos a
		INNER 	JOIN propiedad    p ON a.idPropiedad     = 	p.idPropiedad
		INNER	JOIN arrendatario b ON a.idArrendatario  = 	b.idArrendatario
		WHERE   UPPER( p.pais ) != 'CHILE' ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ArriendoVendeProximoMes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ArriendoVendeProximoMes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_ArriendoVendeProximoMes`()
BEGIN
		/*
		   Se Pide: Indicar cuales arrendatarios sus arriendos vencen el proximo mes
		*/
		
		# DATE_ADD( LAST_DAY( NOW() ), INTERVAL 1 DAY) 		  // Obtiene el primer dia del siguiente mes
		# LAST_DAY(  DATE_SUB( CURDATE(),INTERVAL -1 MONTH )  )  // Obtiene el ultimo día del mes
		
		SELECT 	a.idArriendos		,
			a.monto			,
			a.fechaFin		,
			p.calle			,
			p.numero		,
			p.comuna		,
			p.region		, 
			p.pais			, 
			b.rutArrendatario	,
			b.nombre		,
			b.fechaNacimiento
		FROM 	arriendos a
		LEFT 	JOIN propiedad    p ON a.idPropiedad     = 	p.idPropiedad
		LEFT	JOIN arrendatario b ON a.idArrendatario  = 	b.idArrendatario
		WHERE   a.fechaFin BETWEEN DATE_ADD( LAST_DAY( CURDATE() ), INTERVAL 1 DAY ) AND LAST_DAY(  DATE_SUB( CURDATE(),INTERVAL -1 MONTH )  ) + 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_PropiedadesPorPropietarioPais` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_PropiedadesPorPropietarioPais` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_PropiedadesPorPropietarioPais`()
BEGIN
		/*
			Se pide: Indicar cuantas propiedades tiene cada propietario por cada pais
		*/
		
		SELECT  p.idPropietario		,
			p.rutPropietario	,
			p.nombre		,
			r.pais			,
			COUNT(*) AS numeroPropiedades
		FROM propietarios p
		INNER JOIN propiedad r ON p.idPropietario = r.idPropietario
		GROUP BY p.idPropietario, r.pais 
		ORDER BY p.nombre ;
		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_PropiedadesSinArrendar` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_PropiedadesSinArrendar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_PropiedadesSinArrendar`()
BEGIN
		/*
			Se pide: Indicar cuales propietarios tienen al menos ina propiedad sin arrendar
		*/
		
		SELECT  p.idPropietario		,
			p.rutPropietario	,
			p.nombre		,
			p.fechaNacimiento	,
			r.calle			,
			r.numero		,
			r.comuna		,
			r.region		,
			r.pais
		FROM propietarios p
		INNER JOIN propiedad r ON p.idPropietario = r.idPropietario
		WHERE p.idPropietario NOT IN( 	SELECT a.idPropietario 
						FROM   arriendos a  
						WHERE  p.idPropietario = a.idPropietario ) ;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_PropietarioArrendador` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_PropietarioArrendador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`10.8.106.112` PROCEDURE `sp_PropietarioArrendador`()
BEGIN
	
		/*
			Se Pide: indicar cuales propietarios también sonArrendatarios
		*/
		
		SELECT 	p.idPropietario		,
			p.nombre		,
			p.fechaNacimiento	,
			a.idArrendatario	,
			a.rutArrendatario	,
			a.nombre		,
			a.fechanacimiento
		FROM   	propietarios p
		INNER  	JOIN arrendatario a ON  p.rutPropietario = a.rutArrendatario ;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
