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
