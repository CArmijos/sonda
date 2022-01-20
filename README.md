# DESARROLLO DEL QUIZ

#### MODELAMIENTO DE DATOS

Basado en los procesos de gestión de licencias médicas de una Caja de Compensación, se consideró como apoyo para el enunciado, y se diseñó la base de datos.

#### PROCESO
¿Qué es una Licencia Médica? Es el derecho que tiene un trabajador dependiente e independiente, de ausentarse o reducir su jornada de trabajo durante un determinado período de tiempo por alguna enfermedad o sufrir un accidente, que amerite reposo o tratamiento. Esto puede hacerse efectivo mediante una indicación profesional certificada por un médico-cirujano, cirujano-dentista o matrona.

Luego de una correcta tramitación de la licencia médica, el trabajador podrá gozar del Subsidio por Incapacidad Laboral (SIL), cuya finalidad es que la persona mantenga sus ingresos durante los días que no los va a generar por encontrarse con reposo a causa de su licencia médica.

#### TIPOS DE LICENCIAS MÉDICAS Y PERMISOS PARENTALES
Las Licencias Médicas permiten que el trabajador se ausente de su trabajo, cuando está enfermo o ha tenido un accidente y reposo absoluto o tratamiento. A continuación, se detallan los tipos de licencia que gestiona una Caja de Compensación:

- Enfermedad o accidente común
- Medicina preventiva
- Pre y postnatal
- Enfermedad grave del niño menor de un año

![](https://github.com/CArmijos/sonda/blob/master/proceso_licenciaMedica.png)


#### ESTRUCTURA DEFINICIÓN BASE DE DATOS
![](https://github.com/CArmijos/sonda/blob/master/ProcesosBaseDeDatos.png)

#### DESARROLLO DEL QUIZ Nº2 

###### Nº1 - DE ACUERDO AL AIGUIENTE DIAGRAMA RESOLVER QUERY`S
 ![](https://github.com/CArmijos/sonda/blob/master/arriendos_ModeloDatos.png)

- A - sp_ArriendoVendeProximoMes
- B - sp_PropiedadesSinArrendar
- C - sp_PropiedadesPorPropietarioPais
- D - sp_PropietarioArrendador
- E - sp_PropiedadesPorPropietarioPais
- F - sp_ArrendatariosArriendoFueraChile
- G - sp_Promedio_Minimo_Maximo

###### Nº2 - PROCEDIMIENTOS ALMACENADOS MODELAMIENTO DE DATOS 

- A - sp_TopEmpresasPresentanLicencias
- B - sp_SucursalMasDocumentosSucursalNoApta
- C - sp_TopDocumentosReiniciaFlujo
- D - sp_Tiempos_Promedio_Min_Max_Tramite
- E - sp_EstadisticasTipoLicencia
- F - sp_ProcesoAlmacenaMayorCantidadLicencias
- G - sp_TrabajadoreLicenciaDesafiliados
- H - Ver Anexo

##### ANEXO Letra H

El manejo de la Data Histórica se debe consultar en LOG_licencia, el responsable de la Transacción está identificado con idUsuario y este atributo se relaciona con Tabla Usuario.

Los Cambios quedan registrados en Tabla licencia_Tramite

Los Procedimientos Almacenados deben de ejecutarse de la siguiente forma:

call nombre_del_procedimiento()

#### DIAGRAMA DE LA ELABORACIÓN DEL PUNTO Nº2
![](https://github.com/CArmijos/sonda/blob/master/DiagramaModelo_licenciaMedica.jpg)

##### TECNOLOGIA

| Base de Datos | MariaDB v10.6.4|

#### ENTREGABLES

- Diagrama de la Elaboración del Punto Nº2 
- licenciasMedicas.dbs – Archivo con Modelo - DbSchema
- Repositorio GIT  Documentación y Querys 
- Diccionario de Datos –adminLicencia.HTML
- Vista Estructura Base de Datos – Proceso Base de Datos.png 
- Base de Datos adminLicencias.SQL
- Procedimientos Almacenados –sp_LM.SQL
- CarlosArmijoSeverino_Respuestas_ANEXO N  - licenciasMedicas.PDF
- CarlosArmijoSeverino_Respuestas_ANEXO N Quiz BD.PDF
- Base de Datos challengedb.sql - Arriendos

