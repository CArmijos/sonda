/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.6.4-MariaDB : Database - adminlicencias
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`adminlicencias` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `adminlicencias`;

/*Table structure for table `comuna` */

DROP TABLE IF EXISTS `comuna`;

CREATE TABLE `comuna` (
  `idComuna` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id Del Registro',
  `nombreComuna` varchar(64) NOT NULL COMMENT 'Nombre de la Comuna',
  `idProvincia` int(10) NOT NULL COMMENT 'Id Relaciona a la Provincia a que pertenece',
  PRIMARY KEY (`idComuna`),
  KEY `idProvincia` (`idProvincia`),
  CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`idProvincia`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb3;

/*Data for the table `comuna` */

insert  into `comuna`(`idComuna`,`nombreComuna`,`idProvincia`) values (1,'Arica',1),(2,'Camarones',1),(3,'General Lagos',2),(4,'Putre',2),(5,'Alto Hospicio',3),(6,'Iquique',3),(7,'Cami',4),(8,'Colchane',4),(9,'Huara',4),(10,'Pica',4),(11,'Pozo Almonte',4),(12,'Antofagasta',5),(13,'Mejillones',5),(14,'Sierra Gorda',5),(15,'Taltal',5),(16,'Calama',6),(17,'Ollague',6),(18,'San Pedro de Atacama',6),(19,'Mar',7),(20,'Tocopilla',7),(21,'Cha',8),(22,'Diego de Almagro',8),(23,'Caldera',9),(24,'Copiap',9),(25,'Tierra Amarilla',9),(26,'Alto del Carmen',10),(27,'Freirina',10),(28,'Huasco',10),(29,'Vallenar',10),(30,'Canela',11),(31,'Illapel',11),(32,'Los Vilos',11),(33,'Salamanca',11),(34,'Andacollo',12),(35,'Coquimbo',12),(36,'La Higuera',12),(37,'La Serena',12),(38,'Paihuaco',12),(39,'Vicuna',12),(40,'Combarbal',13),(41,'Monte Patria',13),(42,'Ovalle',13),(43,'Punitaqui',13),(44,'Río Hurtado',13),(45,'Isla de Pascua',14),(46,'Calle Larga',15),(47,'Los Andes',15),(48,'Rinconada',15),(49,'San Esteban',15),(50,'La Ligua',16),(51,'Papudo',16),(52,'Petorca',16),(53,'Zapallar',16),(54,'Hijuelas',17),(55,'La Calera',17),(56,'La Cruz',17),(57,'Limache',17),(58,'Nogales',17),(59,'Olmue',17),(60,'Quillota',17),(61,'Algarrobo',18),(62,'Cartagena',18),(63,'El Quisco',18),(64,'El Tabo',18),(65,'San Antonio',18),(66,'Santo Domingo',18),(67,'Catemu',19),(68,'Llay-llay',19),(69,'Panquehue',19),(70,'Putaendo',19),(71,'San Felipe',19),(72,'Santa Mar',19),(73,'Casablanca',20),(74,'Concon',20),(75,'Juan Fernandez',20),(76,'Puchuncavi',20),(77,'Quilpue',20),(78,'Quintero',20),(79,'Valparaiso',20),(80,'Villa Alemana',20),(81,'Vina del Mar',20),(82,'Colina',21),(83,'Lampa',21),(84,'Tiltil',21),(85,'Pirque',22),(86,'Puente Alto',22),(87,'San Jos',22),(88,'Buin',23),(89,'Calera de Tango',23),(90,'Paine',23),(91,'San Bernardo',23),(92,'Alhu',24),(93,'Curacav',24),(94,'Mar',24),(95,'Melipilla',24),(96,'San Pedro',24),(97,'Cerrillos',25),(98,'Cerro Navia',25),(99,'Conchal',25),(100,'El Bosque',25),(101,'Estaci',25),(102,'Huechuraba',25),(103,'Independencia',25),(104,'La Cisterna',25),(105,'La Granja',25),(106,'La Florida',25),(107,'La Pintana',25),(108,'La Reina',25),(109,'Las Condes',25),(110,'Lo Barnechea',25),(111,'Lo Espejo',25),(112,'Lo Prado',25),(113,'Macul',25),(114,'Maip',25),(115,'',25),(116,'Pedro Aguirre Cerda',25),(117,'Pe',25),(118,'Providencia',25),(119,'Pudahuel',25),(120,'Quilicura',25),(121,'Quinta Normal',25),(122,'Recoleta',25),(123,'Renca',25),(124,'San Miguel',25),(125,'San Joaqu',25),(126,'San Ram',25),(127,'Santiago',25),(128,'Vitacura',25),(129,'El Monte',26),(130,'Isla de Maipo',26),(131,'Padre Hurtado',26),(132,'Pe',26),(133,'Talagante',26),(134,'Codegua',27),(135,'Co',27),(136,'Coltauco',27),(137,'Do',27),(138,'Graneros',27),(139,'Las Cabras',27),(140,'Machal',27),(141,'Malloa',27),(142,'Mostazal',27),(143,'Olivar',27),(144,'Peumo',27),(145,'Pichidegua',27),(146,'Quinta de Tilcoco',27),(147,'Rancagua',27),(148,'Rengo',27),(149,'Requ',27),(150,'San Vicente de Tagua Tagua',27),(151,'La Estrella',28),(152,'Litueche',28),(153,'Marchihue',28),(154,'Navidad',28),(155,'Peredones',28),(156,'Pichilemu',28),(157,'Ch',29),(158,'Chimbarongo',29),(159,'Lolol',29),(160,'Nancagua',29),(161,'Palmilla',29),(162,'Peralillo',29),(163,'Placilla',29),(164,'Pumanque',29),(165,'San Fernando',29),(166,'Santa Cruz',29),(167,'Cauquenes',30),(168,'Chanco',30),(169,'Pelluhue',30),(170,'Curic',31),(171,'Huala',31),(172,'Licant',31),(173,'Molina',31),(174,'Rauco',31),(175,'Romeral',31),(176,'Sagrada Familia',31),(177,'Teno',31),(178,'Vichuqu',31),(179,'Colb',32),(180,'Linares',32),(181,'Longav',32),(182,'Parral',32),(183,'Retiro',32),(184,'San Javier',32),(185,'Villa Alegre',32),(186,'Yerbas Buenas',32),(187,'Constituci',33),(188,'Curepto',33),(189,'Empedrado',33),(190,'Maule',33),(191,'Pelarco',33),(192,'Pencahue',33),(193,'R',33),(194,'San Clemente',33),(195,'San Rafael',33),(196,'Talca',33),(197,'Arauco',34),(198,'Ca',34),(199,'Contulmo',34),(200,'Curanilahue',34),(201,'Lebu',34),(202,'Los ',34),(203,'Tir',34),(204,'Alto Biob',35),(205,'Antuco',35),(206,'Cabrero',35),(207,'Laja',35),(208,'Los ',35),(209,'Mulch',35),(210,'Nacimiento',35),(211,'Negrete',35),(212,'Quilaco',35),(213,'Quilleco',35),(214,'San Rosendo',35),(215,'Santa B',35),(216,'Tucapel',35),(217,'Yumbel',35),(218,'Chiguayante',36),(219,'Concepci',36),(220,'Coronel',36),(221,'Florida',36),(222,'Hualp',36),(223,'Hualqui',36),(224,'Lota',36),(225,'Penco',36),(226,'San Pedro de La Paz',36),(227,'Santa Juana',36),(228,'Talcahuano',36),(229,'Tom',36),(230,'Bulnes',37),(231,'Chill',37),(232,'Chill',37),(233,'Cobquecura',37),(234,'Coelemu',37),(235,'Coihueco',37),(236,'El Carmen',37),(237,'Ninhue',37),(238,'',37),(239,'Pemuco',37),(240,'Pinto',37),(241,'Portezuelo',37),(242,'Quill',37),(243,'Quirihue',37),(244,'R',37),(245,'San Carlos',37),(246,'San Fabi',37),(247,'San Ignacio',37),(248,'San Nicol',37),(249,'Treguaco',37),(250,'Yungay',37),(251,'Carahue',38),(252,'Cholchol',38),(253,'Cunco',38),(254,'Curarrehue',38),(255,'Freire',38),(256,'Galvarino',38),(257,'Gorbea',38),(258,'Lautaro',38),(259,'Loncoche',38),(260,'Melipeuco',38),(261,'Nueva Imperial',38),(262,'Padre Las Casas',38),(263,'Perquenco',38),(264,'Pitrufqu',38),(265,'Puc',38),(266,'Saavedra',38),(267,'Temuco',38),(268,'Teodoro Schmidt',38),(269,'Tolt',38),(270,'Vilc',38),(271,'Villarrica',38),(272,'Angol',39),(273,'Collipulli',39),(274,'Curacaut',39),(275,'Ercilla',39),(276,'Lonquimay',39),(277,'Los Sauces',39),(278,'Lumaco',39),(279,'Pur',39),(280,'Renaico',39),(281,'Traigu',39),(282,'Victoria',39),(283,'Corral',40),(284,'Lanco',40),(285,'Los Lagos',40),(286,'M',40),(287,'Mariquina',40),(288,'Paillaco',40),(289,'Panguipulli',40),(290,'Valdivia',40),(291,'Futrono',41),(292,'La Uni',41),(293,'Lago Ranco',41),(294,'R',41),(295,'Ancud',42),(296,'Castro',42),(297,'Chonchi',42),(298,'Curaco de V',42),(299,'Dalcahue',42),(300,'Puqueld',42),(301,'Queil',42),(302,'Quemchi',42),(303,'Quell',42),(304,'Quinchao',42),(305,'Calbuco',43),(306,'Cocham',43),(307,'Fresia',43),(308,'Frutillar',43),(309,'Llanquihue',43),(310,'Los Muermos',43),(311,'Maull',43),(312,'Puerto Montt',43),(313,'Puerto Varas',43),(314,'Osorno',44),(315,'Puero Octay',44),(316,'Purranque',44),(317,'Puyehue',44),(318,'R',44),(319,'San Juan de la Costa',44),(320,'San Pablo',44),(321,'Chait',45),(322,'Futaleuf',45),(323,'Hualaihu',45),(324,'Palena',45),(325,'Ais',46),(326,'Cisnes',46),(327,'Guaitecas',46),(328,'Cochrane',47),(329,'O\'higgins',47),(330,'Tortel',47),(331,'Coihaique',48),(332,'Lago Verde',48),(333,'Chile Chico',49),(334,'R',49),(335,'Ant',50),(336,'Cabo de Hornos',50),(337,'Laguna Blanca',51),(338,'Punta Arenas',51),(339,'R',51),(340,'San Gregorio',51),(341,'Porvenir',52),(342,'Primavera',52),(343,'Timaukel',52),(344,'Natales',53),(345,'Torres del Paine',53),(346,'Sin Asignar',54);

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `idEmpresa` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del Registro',
  `rutEmpresa` varchar(10) NOT NULL COMMENT 'Rut de la Empresa',
  `razonSocial` varchar(100) NOT NULL COMMENT 'Razón Social de la Empresa',
  `domicilio` varchar(100) NOT NULL COMMENT 'Domicilio de la Empresa Calle, Numero, etc',
  `idComuna` int(10) unsigned NOT NULL COMMENT 'id de la Comuna se relaciona con Tabla comuna',
  `idProvincia` int(10) unsigned NOT NULL COMMENT 'id de la Provincia se relaciona con Tabla Provincia',
  `idRegion` int(10) unsigned NOT NULL COMMENT 'id de la Region se relaciona con Tabla region',
  PRIMARY KEY (`idEmpresa`),
  KEY `idComuna` (`idComuna`),
  CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`idComuna`) REFERENCES `comuna` (`idComuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `empresa` */

/*Table structure for table `especialidad` */

DROP TABLE IF EXISTS `especialidad`;

CREATE TABLE `especialidad` (
  `idEspecialidad` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Especialidades',
  `nombreEspecialidad` varchar(100) NOT NULL COMMENT 'nombre de la especialidad',
  PRIMARY KEY (`idEspecialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

/*Data for the table `especialidad` */

insert  into `especialidad`(`idEspecialidad`,`nombreEspecialidad`) values (1,'Anatomía Patológica'),(2,'Anestesiología'),(3,'Cardiología'),(4,'Cirugía General'),(5,'Cirugía Pediátrica'),(6,'Dermatología y Venereología'),(7,'Diabetología'),(8,'Endocrinología'),(9,'Enfermedades Respiratorias'),(10,'Gastroenterología'),(11,'Genética Clínica'),(12,'Geriatría'),(13,'Hematología'),(14,'Infectología'),(15,'Laboratorio Clínico'),(16,'Medicina Familiar'),(17,'Medicina Física Y Rehabilitación'),(18,'Medicina Intensiva'),(19,'Medicina Interna'),(20,'Medicina Legal'),(21,'Medicina Nuclear'),(22,'Nefrología'),(23,'Neurocirugía'),(24,'Neurología'),(25,'Neurología Pediátrica'),(26,'Obstetricia y Ginecología'),(27,'Oftalmología'),(28,'Oncología Médica'),(29,'Ortopedia Y Traumatología'),(30,'Otorrinolaringología'),(31,'Pediatría'),(32,'Psiquiatría'),(33,'Psiquiatría Infantil y de la Adolescencia'),(34,'Radiología'),(35,'Radioterapia Oncológica'),(36,'Reumatología'),(37,'Salud Pública'),(38,'Urología');

/*Table structure for table `licencia` */

DROP TABLE IF EXISTS `licencia`;

CREATE TABLE `licencia` (
  `idLicencia` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Licencia Medica',
  `idEmpresa` int(10) unsigned NOT NULL COMMENT 'Id Empresa, relaciona con tabla Empresa',
  `idTrabajador` int(10) unsigned NOT NULL COMMENT 'id Trabajador, relaciona Tabla Trabajador',
  `idLicenciaTipo` int(10) unsigned NOT NULL COMMENT 'id Tipo Licencia, relaciona con Tabla Licencia_Tipo',
  `idLicenciaFormaPresenta` int(10) unsigned NOT NULL COMMENT 'id Forma de como se presenta la licencia',
  `idSucursal` int(10) unsigned NOT NULL COMMENT 'id Sucursal, corresponde a la identificación de la sucursal que gestiona el proceso, se relacion con tabla sucursal',
  `fechaInicio` date NOT NULL COMMENT 'Fecha indica cuando se inicia el periodo de la licencia',
  `fechaTermino` date NOT NULL COMMENT 'Fecha indica cuando se termina el periodo de la licencia',
  `idMedico` int(10) unsigned NOT NULL COMMENT 'Id medico identifica al médico que otorgó la licencia, se relaciona con tabla Médico',
  `diagnostico` varchar(300) NOT NULL COMMENT 'Se Almacena el Diagnósticio',
  PRIMARY KEY (`idLicencia`),
  KEY `idSucursal` (`idSucursal`),
  KEY `idLicenciaTipo` (`idLicenciaTipo`),
  KEY `idLicenciaFormaPresenta` (`idLicenciaFormaPresenta`),
  KEY `idTrabajador` (`idTrabajador`),
  KEY `idEmpresa` (`idEmpresa`),
  KEY `idMedico` (`idMedico`),
  CONSTRAINT `licencia_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`),
  CONSTRAINT `licencia_ibfk_2` FOREIGN KEY (`idLicenciaTipo`) REFERENCES `licencia_tipo` (`idLicenciaTipo`),
  CONSTRAINT `licencia_ibfk_3` FOREIGN KEY (`idLicenciaFormaPresenta`) REFERENCES `licencia_formapresenta` (`idLicenciaFormaPresenta`),
  CONSTRAINT `licencia_ibfk_4` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`),
  CONSTRAINT `licencia_ibfk_5` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`),
  CONSTRAINT `licencia_ibfk_6` FOREIGN KEY (`idLicencia`) REFERENCES `licencia_tramite` (`idLicenciaTramite`),
  CONSTRAINT `licencia_ibfk_7` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia` */

/*Table structure for table `licencia_documento` */

DROP TABLE IF EXISTS `licencia_documento`;

CREATE TABLE `licencia_documento` (
  `idLicenciaDocumento` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id del documento',
  `idLicenciaTipo` int(10) unsigned NOT NULL COMMENT 'id Tipo de Licencia - Referencia Plantilla de documentos según tipo de licencia',
  `describeLicenciaDocumento` varchar(100) NOT NULL COMMENT 'Nombre del documento a Solicitar',
  PRIMARY KEY (`idLicenciaDocumento`),
  KEY `idLicenciaTipo` (`idLicenciaTipo`),
  CONSTRAINT `licencia_Documento_ibfk_1` FOREIGN KEY (`idLicenciaTipo`) REFERENCES `licencia_tipo` (`idLicenciaTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia_documento` */

insert  into `licencia_documento`(`idLicenciaDocumento`,`idLicenciaTipo`,`describeLicenciaDocumento`) values (1,1,'Tres liquidaciones de sueldos anteriores al mes de inicio del reposo'),(2,1,'Cotizaciones Previsionales AFP de los 12 ultimos meses anteriores al inicio del reposo'),(3,1,'Copia o Anexo del contrato de trabajo vigente'),(4,2,'Tres liquidaciones de sueldos anteriores al mes de inicio del reposo'),(5,2,'Cotizaciones Previsionales AFP de los 12 ultimos meses anteriores al inicio del reposo'),(6,2,'Copia o Anexo del contrato de trabajo vigente'),(7,3,'Tres liquidaciones de sueldos anteriores al mes de inicio del reposo'),(8,3,'Tres liquidaciones de sueldos anteriores al 7° mes de inicio del reposo'),(9,3,'Cotizaciones Previsionales AFP de los 14 ultimos meses anteriores al inicio del reposo'),(10,3,'Copia o Anexo del contrato de trabajo vigente'),(11,4,'Tres liquidaciones de sueldos anteriores al mes de inicio del reposo'),(12,4,'Cotizaciones Previsionales AFP de los 12 ultimos meses anteriores al inicio del reposo'),(13,4,'Copia o Anexo del contrato de trabajo vigente');

/*Table structure for table `licencia_documentorechazado` */

DROP TABLE IF EXISTS `licencia_documentorechazado`;

CREATE TABLE `licencia_documentorechazado` (
  `idDocumentoRechazado` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Documento Rechazado',
  `idDocumentoPresentado` bigint(20) unsigned NOT NULL COMMENT 'id Documento Presentado, relaciona con tabla referencial Documentos Presentados',
  `idCausalRechazo` int(10) unsigned NOT NULL COMMENT 'id Causal Rechazo... Se relaciona con Tabla Referencial rechazo de Documentos',
  PRIMARY KEY (`idDocumentoRechazado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia_documentorechazado` */

/*Table structure for table `licencia_documentospresentados` */

DROP TABLE IF EXISTS `licencia_documentospresentados`;

CREATE TABLE `licencia_documentospresentados` (
  `idDocumentosPresentado` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Registro Documentos Presentados',
  `idLicencia` int(10) unsigned NOT NULL COMMENT 'id licencia, se relaciona con la Licencia medica y asocia los documentos a la licenci',
  `idLicenciaDocumento` int(10) unsigned NOT NULL COMMENT 'id documento, se relaciona con tabla referencia  documentos que se presentan',
  `fechaPresentacion` date NOT NULL COMMENT 'Fecha de Presentaci{on del Documento...',
  PRIMARY KEY (`idDocumentosPresentado`),
  KEY `idLicencia` (`idLicencia`),
  KEY `idLicenciaDocumento` (`idLicenciaDocumento`),
  CONSTRAINT `licencia_DocumentosPresentados_ibfk_1` FOREIGN KEY (`idLicencia`) REFERENCES `licencia` (`idSucursal`),
  CONSTRAINT `licencia_DocumentosPresentados_ibfk_2` FOREIGN KEY (`idLicenciaDocumento`) REFERENCES `licencia_documento` (`idLicenciaDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia_documentospresentados` */

/*Table structure for table `licencia_formapresenta` */

DROP TABLE IF EXISTS `licencia_formapresenta`;

CREATE TABLE `licencia_formapresenta` (
  `idLicenciaFormaPresenta` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Forma Presenta documento',
  `describeLicenciaFormaPresenta` varchar(100) NOT NULL COMMENT 'describre forma de presentación de la licencia',
  PRIMARY KEY (`idLicenciaFormaPresenta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia_formapresenta` */

insert  into `licencia_formapresenta`(`idLicenciaFormaPresenta`,`describeLicenciaFormaPresenta`) values (1,'Electronica'),(2,'Manual'),(3,'Mixta');

/*Table structure for table `licencia_rechazada` */

DROP TABLE IF EXISTS `licencia_rechazada`;

CREATE TABLE `licencia_rechazada` (
  `idLicenciaRechazada` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id del registro que contiene las licencias rechazadas',
  `idLicencia` bigint(20) unsigned NOT NULL COMMENT 'id Licencia, lo relaciona con la Licencia médica',
  `idRechazoCausal` int(11) NOT NULL COMMENT 'id causal de rechazo',
  `fechaRechazo` datetime NOT NULL COMMENT 'Fecha del rechazo de licencia medica',
  PRIMARY KEY (`idLicenciaRechazada`),
  KEY `idLicencia` (`idLicencia`),
  KEY `idRechazoCausal` (`idRechazoCausal`),
  CONSTRAINT `licencia_Rechazada_ibfk_1` FOREIGN KEY (`idLicencia`) REFERENCES `licencia` (`idLicencia`),
  CONSTRAINT `licencia_Rechazada_ibfk_2` FOREIGN KEY (`idRechazoCausal`) REFERENCES `rechazo_licencia_causal` (`idRechazoCausal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia_rechazada` */

/*Table structure for table `licencia_tipo` */

DROP TABLE IF EXISTS `licencia_tipo`;

CREATE TABLE `licencia_tipo` (
  `idLicenciaTipo` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Tipo de Licencia',
  `describeLicenciaTipo` varchar(100) NOT NULL COMMENT 'Describe el tipo de Licencia',
  PRIMARY KEY (`idLicenciaTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia_tipo` */

insert  into `licencia_tipo`(`idLicenciaTipo`,`describeLicenciaTipo`) values (1,'Enfermedad o accidente común'),(2,'Medicina preventiva'),(3,'Pre y postnatal'),(4,'Enfermedad grave del niño menor de un año');

/*Table structure for table `licencia_tramite` */

DROP TABLE IF EXISTS `licencia_tramite`;

CREATE TABLE `licencia_tramite` (
  `idLicenciaTramite` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del Tramite',
  `idLicencia` bigint(20) unsigned NOT NULL COMMENT 'Id de la Licencia se relaciona con el registro de licencia médica',
  `idLicenciaWorkflow` int(10) unsigned NOT NULL COMMENT 'id Workflow - Se relaciona con Tabla Referencial licencia_Workflow - esta tiene definido el flujo del proceso',
  `fechaTramite` date NOT NULL COMMENT 'Fecha en que se realiza el trámite',
  PRIMARY KEY (`idLicenciaTramite`),
  KEY `idLicencia` (`idLicencia`),
  KEY `idLicenciaWorkflow` (`idLicenciaWorkflow`),
  CONSTRAINT `licencia_Tramite_ibfk_1` FOREIGN KEY (`idLicencia`) REFERENCES `licencia` (`idLicencia`),
  CONSTRAINT `licencia_Tramite_ibfk_2` FOREIGN KEY (`idLicenciaWorkflow`) REFERENCES `licencia_workflow` (`idLicenciaWorkflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia_tramite` */

/*Table structure for table `licencia_workflow` */

DROP TABLE IF EXISTS `licencia_workflow`;

CREATE TABLE `licencia_workflow` (
  `idLicenciaWorkflow` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id del WorkFlow',
  `describeLicenciaWorkFlow` varchar(100) NOT NULL COMMENT 'Describe el proceso',
  `idProcesoSiguiente` int(10) unsigned NOT NULL COMMENT 'id Proceso, siguiente paso',
  PRIMARY KEY (`idLicenciaWorkflow`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `licencia_workflow` */

insert  into `licencia_workflow`(`idLicenciaWorkflow`,`describeLicenciaWorkFlow`,`idProcesoSiguiente`) values (1,'Licencia Ingresada al Sistema ',2),(2,'Licencia Asociando Documentación Requerida',3),(3,'Licencia en Validación',4),(4,'Licencia Enviada a Compin',0),(5,'Licencia Autorizada por Compin',6),(6,'Licencia Enviada a Pago',7),(7,'Licencia con Pago Autorizado',8),(8,'Licencia Pago Electronico',0),(9,'Licencia Pagada en Sucursal',0),(10,'Licencia Rechazada',11),(11,'Licencia con Apelación',12),(12,'Licencia Apelada y Aceptada',4),(13,'Licencia Apelada y Rechazada',0);

/*Table structure for table `log_licencia` */

DROP TABLE IF EXISTS `log_licencia`;

CREATE TABLE `log_licencia` (
  `idLicenciaLog` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Licencia Medica',
  `idLicencia` bigint(20) unsigned NOT NULL,
  `idEmpresa` int(10) unsigned NOT NULL COMMENT 'Id Empresa, relaciona con tabla Empresa',
  `idTrabajador` int(10) unsigned NOT NULL COMMENT 'id Trabajador, relaciona Tabla Trabajador',
  `idLicenciaTipo` int(10) unsigned NOT NULL COMMENT 'id Tipo Licencia, relaciona con Tabla Licencia_Tipo',
  `idLicenciaFormaPresenta` int(10) unsigned NOT NULL COMMENT 'id Forma de como se presenta la Licencia',
  `idSucursal` int(10) unsigned NOT NULL COMMENT 'id Sucursal, corresponde a la identificación de la sucursal que gestiona el proceso, se relacion con tabla sucursal',
  `fechaInicio` date NOT NULL COMMENT 'Fecha indica cuando se inicia el periodo de la licencia',
  `fechaTermino` date NOT NULL COMMENT 'Fecha indica cuando se termina el periodo de la licencia',
  `idMedico` int(10) unsigned NOT NULL COMMENT 'Id medico identifica al médico que otorgó la licencia, se relaciona con tabla Médico',
  `diagnostico` varchar(300) NOT NULL COMMENT 'Se Almacena el Diagnósticio',
  `fechaTrasnsaccion` datetime NOT NULL COMMENT 'Fecha de Transaccion',
  `idUsuario` int(10) unsigned NOT NULL COMMENT 'id Usuario reesponsable',
  PRIMARY KEY (`idLicenciaLog`),
  KEY `idSucursal` (`idSucursal`),
  KEY `idLicenciaTipo` (`idLicenciaTipo`),
  KEY `idLicenciaFormaPresenta` (`idLicenciaFormaPresenta`),
  KEY `idTrabajador` (`idTrabajador`),
  KEY `idEmpresa` (`idEmpresa`),
  KEY `idMedico` (`idMedico`),
  CONSTRAINT `LOG_licencia_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`),
  CONSTRAINT `LOG_licencia_ibfk_2` FOREIGN KEY (`idLicenciaTipo`) REFERENCES `licencia_tipo` (`idLicenciaTipo`),
  CONSTRAINT `LOG_licencia_ibfk_3` FOREIGN KEY (`idLicenciaFormaPresenta`) REFERENCES `licencia_formapresenta` (`idLicenciaFormaPresenta`),
  CONSTRAINT `LOG_licencia_ibfk_4` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`),
  CONSTRAINT `LOG_licencia_ibfk_5` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`),
  CONSTRAINT `LOG_licencia_ibfk_6` FOREIGN KEY (`idLicenciaLog`) REFERENCES `licencia_tramite` (`idLicenciaTramite`),
  CONSTRAINT `LOG_licencia_ibfk_7` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `log_licencia` */

/*Table structure for table `medico` */

DROP TABLE IF EXISTS `medico`;

CREATE TABLE `medico` (
  `idMedico` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Registro de Medico',
  `nombreMedico` varchar(100) NOT NULL COMMENT 'nombre del Médico',
  `idEspecialidad` int(10) unsigned NOT NULL COMMENT 'id especialidad medica - se relaciona con tabla referencial especialidad',
  PRIMARY KEY (`idMedico`),
  KEY `idEspecialidad` (`idEspecialidad`),
  CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `medico` */

/*Table structure for table `provincia` */

DROP TABLE IF EXISTS `provincia`;

CREATE TABLE `provincia` (
  `idProvincia` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id del registro de provincias',
  `nombreProvincia` varchar(64) NOT NULL COMMENT 'nombre de la provincia',
  `idRegion` int(10) NOT NULL COMMENT 'id Region, relaciona a la provincia con la tabla región',
  PRIMARY KEY (`idProvincia`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;

/*Data for the table `provincia` */

insert  into `provincia`(`idProvincia`,`nombreProvincia`,`idRegion`) values (1,'Arica',1),(2,'Parinacota',1),(3,'Iquique',2),(4,'El Tamarugal',2),(5,'Antofagasta',3),(6,'El Loa',3),(7,'Tocopilla',3),(8,'Cha',4),(9,'Copiap',4),(10,'Huasco',4),(11,'Choapa',5),(12,'Elqui',5),(13,'Limar',5),(14,'Isla de Pascua',6),(15,'Los Andes',6),(16,'Petorca',6),(17,'Quillota',6),(18,'San Antonio',6),(19,'San Felipe de Aconcagua',6),(20,'Valparaiso',6),(21,'Chacabuco',7),(22,'Cordillera',7),(23,'Maipo',7),(24,'Melipilla',7),(25,'Santiago',7),(26,'Talagante',7),(27,'Cachapoal',8),(28,'Cardenal Caro',8),(29,'Colchagua',8),(30,'Cauquenes',9),(31,'Curic',9),(32,'Linares',9),(33,'Talca',9),(34,'Arauco',10),(35,'Bio B',10),(36,'Concepci',10),(37,'',10),(38,'Caut',11),(39,'Malleco',11),(40,'Valdivia',12),(41,'Ranco',12),(42,'Chilo',13),(43,'Llanquihue',13),(44,'Osorno',13),(45,'Palena',13),(46,'Ais',14),(47,'Capit',14),(48,'Coihaique',14),(49,'General Carrera',14),(50,'Ant',15),(51,'Magallanes',15),(52,'Tierra del Fuego',15),(53,'Sin Asignar',15),(54,'Sin Asignar',16);

/*Table structure for table `recepcion_documentos` */

DROP TABLE IF EXISTS `recepcion_documentos`;

CREATE TABLE `recepcion_documentos` (
  `idRecepcionDocumentos` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id del registro de la sucursal que puede recepcionar documentos',
  `describeRecepcionDocumentos` varchar(50) DEFAULT NULL COMMENT 'Describe Recepción Documental',
  PRIMARY KEY (`idRecepcionDocumentos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `recepcion_documentos` */

insert  into `recepcion_documentos`(`idRecepcionDocumentos`,`describeRecepcionDocumentos`) values (1,'Sucursal Habilitada para Recepcion de Documentos'),(2,'Sucursal No Apta para Recepcion de Documentos');

/*Table structure for table `rechazo_documento_causal` */

DROP TABLE IF EXISTS `rechazo_documento_causal`;

CREATE TABLE `rechazo_documento_causal` (
  `idCausalRechazo` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Registro causal rechazo Documento',
  `describeRechazoDocumentoCausal` varchar(100) NOT NULL COMMENT 'describe Causal rechazo Documental',
  PRIMARY KEY (`idCausalRechazo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `rechazo_documento_causal` */

/*Table structure for table `rechazo_licencia_causal` */

DROP TABLE IF EXISTS `rechazo_licencia_causal`;

CREATE TABLE `rechazo_licencia_causal` (
  `idRechazoCausal` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id registro causal rechazo licencia',
  `decribeRechazoCausal` varchar(50) NOT NULL COMMENT 'Describe Causal rechazo Licencia',
  PRIMARY KEY (`idRechazoCausal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `rechazo_licencia_causal` */

insert  into `rechazo_licencia_causal`(`idRechazoCausal`,`decribeRechazoCausal`) values (1,'Reposo Injustificado'),(2,'Reducción de reposo'),(3,'Diagnóstico irrecuperable'),(4,'Incumplimiento de reposo'),(5,'Fuera de Plazo'),(6,'Falta Vínculo laboral'),(7,'Enmendadura');

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `idRegion` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Registro de Region',
  `nombreRegion` varchar(64) NOT NULL COMMENT 'Nombre de la región',
  `ordinalRegion` varchar(4) NOT NULL COMMENT 'Numerel Romano que se le asigna a la region',
  PRIMARY KEY (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Data for the table `region` */

insert  into `region`(`idRegion`,`nombreRegion`,`ordinalRegion`) values (1,'Arica y Parinacota','XV'),(2,'Tarapaca','I'),(3,'Antofagasta','II'),(4,'Atacama','III'),(5,'Coquimbo','IV'),(6,'Valparaiso','V'),(7,'Metropolitana de Santiago','RM'),(8,'Libertador General Bernardo O\'Higgins','VI'),(9,'Maule','VII'),(10,'Biob','VIII'),(11,'La Araucania','IX'),(12,'Los Rios','XIV'),(13,'Los Lagos','X'),(14,'Aisen','XI'),(15,'Magallanes y de la Antartica','XII'),(16,'Sin Asignar','0000');

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `idSucursal` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Registro Sucursal',
  `describeSucursal` varchar(100) NOT NULL COMMENT 'Nombre de la Sucursal',
  `idRegion` int(10) unsigned NOT NULL COMMENT 'id región a la que pertenece',
  `idProvincia` int(10) NOT NULL COMMENT 'id Provincia a la que pertenece',
  `idComuna` int(10) unsigned NOT NULL COMMENT 'id comuna a la que pertenece',
  `idRecepcionDocumentos` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'id Recepcion Documental si esta o no Apata para el proceso',
  PRIMARY KEY (`idSucursal`),
  KEY `idRegion` (`idRegion`),
  KEY `idProvincia` (`idProvincia`),
  KEY `idComuna` (`idComuna`),
  KEY `idRecepcionDocumentos` (`idRecepcionDocumentos`),
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idRegion`) REFERENCES `region` (`idRegion`),
  CONSTRAINT `sucursal_ibfk_2` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`idProvincia`),
  CONSTRAINT `sucursal_ibfk_3` FOREIGN KEY (`idComuna`) REFERENCES `comuna` (`idComuna`),
  CONSTRAINT `sucursal_ibfk_4` FOREIGN KEY (`idRecepcionDocumentos`) REFERENCES `recepcion_documentos` (`idRecepcionDocumentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sucursal` */

/*Table structure for table `trabajador` */

DROP TABLE IF EXISTS `trabajador`;

CREATE TABLE `trabajador` (
  `idTrabajador` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Registro del Trabajador',
  `rutTrabajador` varchar(10) NOT NULL COMMENT 'Rut del Trabajador',
  `nombreTrabajador` varchar(100) NOT NULL COMMENT 'Nombre del Trabajador',
  `domicilio` varchar(100) NOT NULL COMMENT 'Domicilio del Trabajador',
  `idRegion` int(10) NOT NULL COMMENT 'id Región a la que pertenece el domicilio del trabajador',
  `idProvincia` int(10) NOT NULL COMMENT 'id provincia a la que pertenece domicilio del trabajador',
  `idComuna` int(10) NOT NULL COMMENT 'id comuna a la que pertenece el domicilio del trabajador',
  `fechaNacimiento` date NOT NULL COMMENT 'Fecha de Nacimiento del Trabajador',
  PRIMARY KEY (`idTrabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `trabajador` */

/*Table structure for table `trabajador_afiliado` */

DROP TABLE IF EXISTS `trabajador_afiliado`;

CREATE TABLE `trabajador_afiliado` (
  `idTrabajadorAfiliado` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Afiliación del Trabajador',
  `idTrabajador` int(10) unsigned NOT NULL COMMENT 'id Trabajador - relacionado con tabla Trabajador',
  `fechaInicio` date NOT NULL COMMENT 'Fecha inicial en que se encuentra afiliado',
  `fechaTermino` date DEFAULT NULL COMMENT 'Fecha final en que se encuentra afiliado',
  PRIMARY KEY (`idTrabajadorAfiliado`),
  KEY `idTrabajador` (`idTrabajador`),
  CONSTRAINT `trabajador_Afiliado_ibfk_1` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `trabajador_afiliado` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `idUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id Registro de Usuario',
  `cuentaUsuario` varchar(100) NOT NULL COMMENT 'cuenta del usuario para login',
  `apellidoPaterno` varchar(20) NOT NULL COMMENT 'Apellido Paterno del usuario',
  `apellidoMaterno` varchar(20) NOT NULL COMMENT 'Apellido Materno del usuario',
  `nombres` varchar(30) NOT NULL COMMENT 'Nombres del usuario',
  `Activo` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Estado del usuario ( 1 - Activo / 0 Inactivo )',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuario` */

/* Procedure structure for procedure `sp_EstadisticasTipoLicencia` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_EstadisticasTipoLicencia` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_EstadisticasTipoLicencia`()
BEGIN
		/*
			Se Pide: Estadisticas de Licencias del tipo Manual, electronica y mixta
		*/
		
		SELECT  t.describeLicenciaTipo	,
			COUNT(*) AS tipoLicencia
		FROM   licencia l
		INNER JOIN licencia_Tipo t ON l.idLicenciaTipo = t.idLicenciaTipo
		GROUP BY l.idLicenciaTipo
		ORDER BY t.describeLicenciaTipo ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ProcesoAlmacenaMayorCantidadLicencias` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ProcesoAlmacenaMayorCantidadLicencias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_ProcesoAlmacenaMayorCantidadLicencias`()
BEGIN
		/*
			Se Pide Los estados del proceso que Almacenan la Mayor cantidad de Licencias
		*/
		
		SELECT w.describeLicenciaWorkFlow 	,
		       COUNT(*) AS cantidadLicencia
		FROM   licencia_Tramite t
		INNER  JOIN licencia_Workflow w ON t.idLicenciaWorkflow = w.idLicenciaWorkflow
		WHERE  idLicenciaTramite = ( SELECT MAX( idLicenciaTramite ) 
					     FROM  licencia_Tramite q
					     GROUP BY  t.idLicencia )
		GROUP BY t.idLicenciaWorkflow
		ORDER BY cantidadLicencia DESC ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_SucursalMasDocumentosSucursalNoApta` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_SucursalMasDocumentosSucursalNoApta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_SucursalMasDocumentosSucursalNoApta`()
BEGIN
			/*
				Se pide: Las Sucursales que reciben mas documentacion segmentados por region o Comuna,
				asi como sucursales que no están aptas para recibir documentacion
				
			*/
			
			SELECT  nombreComuna		,
				idComuna		,
				Documentos		,
				describeRecepcionDocumentos
			FROM  (
						
					SELECT 	c.nombreComuna		,
						s.idComuna		,
						COUNT(*) AS Documentos	,
						r.describeRecepcionDocumentos
					FROM    sucursal s
					INNER   JOIN licencia  l 		ON s.idSucursal = l.idSucursal
					INNER   JOIN comuna    c 		ON s.idComuna = c.idComuna 
					INNER   JOIN recepcion_Documentos r 	ON s.idRecepcionDocumentos = r.idRecepcionDocumentos
					WHERE   s.idRecepcionDocumentos = 1 
					GROUP BY s.idComuna 
					 
					UNION 
						  
					SELECT 	c.nombreComuna		,
						s.idComuna		,
						0 AS Documentos		,
						r.describeRecepcionDocumentos
					FROM    sucursal s
					INNER   JOIN licencia  l ON s.idSucursal = l.idSucursal
					INNER   JOIN comuna    c ON s.idComuna = c.idComuna 
					INNER   JOIN recepcion_Documentos r ON  s.idRecepcionDocumentos = r.idRecepcionDocumentos
					WHERE   s.idRecepcionDocumentos = 2
					GROUP BY s.idComuna  
				
				) As Salida
				
			ORDER BY Documentos DESC;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_Tiempos_Promedio_Min_Max_Tramite` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_Tiempos_Promedio_Min_Max_Tramite` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_Tiempos_Promedio_Min_Max_Tramite`()
BEGIN
	/*
		Se Pide: Tiempos promedio, Minimos y Maximos, desde el inicio del proceso hasta el calculo del monto a pagar 
	*/
	SELECT 	
		MIN( DATEDIFF( fechaMax , fechaIni ) ) AS TiempoMinimo		,
		AVG( DATEDIFF( fechaMax , fechaIni ) ) AS TiempoPromedio	,
		MAX( DATEDIFF( fechaMax , fechaIni ) ) AS TiempoMaximo
	FROM (
		SELECT   
			 ( SELECT t.fechaTramite
			   FROM   licencia_Tramite t
			   WHERE  t.idLicencia = l.idLicencia AND idLicenciaWorkflow = 1) AS fechaIni , /* Inicio Tramite */
			   
			 ( SELECT t.fechaTramite
			   FROM   licencia_Tramite t
			   WHERE  t.idLicencia = l.idLicencia AND idLicenciaWorkflow = 7) AS fechaMax   /* termino del Tramite con el pago */
				      
		FROM     licencia_Tramite l
		WHERE    l.idLicenciaWorkflow = 7 /* Pago de Licencia -  Conjunto que reune a todos los que cumplen proceso completo */
	      ) AS Resultado ;
      
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_TopDocumentosReiniciaFlujo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_TopDocumentosReiniciaFlujo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_TopDocumentosReiniciaFlujo`()
BEGIN
		/*
			Se Pide: Top de documentos que hacen que licencia reinicie su flujo
		*/
		SELECT 	   p.idLicenciaDocumento		,
			   COUNT(*)  AS ranking			,
			   c.describeRechazoDocumentoCausal 	,
			   d.describeLicenciaDocumento
		FROM       licencia_DocumentosPresentados p
		INNER JOIN licencia_Documento             d ON p.idLicenciaDocumento    = d.idLicenciaDocumento
		INNER JOIN licencia_DocumentoRechazado    r ON p.idDocumentosPresentado = r.idDocumentoPresentado
		INNER JOIN rechazo_Documento_Causal       c ON r.idCausalRechazo        = c.idCausalRechazo
		GROUP BY  idLicenciaDocumento 
		ORDER BY  ranking DESC ;
			  
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_TopEmpresasPresentanLicencias` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_TopEmpresasPresentanLicencias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_TopEmpresasPresentanLicencias`()
BEGIN
		/*
			Se Pide: Top de Empresas que sus Trabajadores presenten mas licencias
		*/
		
		SELECT e.razonSocial	,
		       e.rutEmpresa	,
		       ( SELECT COUNT(*)
			 FROM licencia l
			 WHERE l.idEmpresa = e.idEmpresa ) AS numeroLicencias
		FROM empresa e
		ORDER BY numeroLicencias DESC ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_TrabajadoreLicenciaDesafiliados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_TrabajadoreLicenciaDesafiliados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`admin`@`localhost` PROCEDURE `sp_TrabajadoreLicenciaDesafiliados`()
BEGIN
		/*
			Se Pide: Trabajadores que tienen licencia y son desafiliados
		*/
		
		SELECT t.rutTrabajador		, 
		       t.nombreTrabajador	, 
		       t.fechaNacimiento	,
		       l.fechaInicio		,
		       l.fechaTermino		,
		       l.diagnostico
		FROM   trabajador t
		INNER  JOIN licencia l ON t.idTrabajador = l.idTrabajador
		WHERE   ( SELECT a.fechaTermino
			  FROM trabajador_Afiliado a
			  WHERE  t.idTrabajador = a.idTrabajador
			  ORDER BY a.idTrabajadorAfiliado DESC ) != NULL ;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
