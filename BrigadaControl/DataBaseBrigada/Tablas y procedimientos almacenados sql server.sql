/*
Crear tablas y procedimientos almacenados
*/
CREATE TABLE [dbo].[Brigada_TableAtencion](
	[IdPaciente] [varchar](50) NOT NULL,
	[FechaAtencion] [datetime] NOT NULL,
	[FrecCardiaca] [varchar](50) NULL,
	[FrecRespiratoria] [varchar](50) NULL,
	[Oximetria] [varchar](50) NULL,
	[Glicemia] [varchar](50) NULL,
	[Temperatura] [varchar](50) NULL,
	[Alergias] [varchar](50) NULL,
	[Padecimientos] [varchar](50) NULL,
	[Medicamentos] [varchar](50) NULL,
	[Cirugias] [varchar](50) NULL,
	[PA1] [varchar](50) NULL,
	[PA2] [varchar](50) NULL,
	[PA3] [varchar](50) NULL,
	[PA4] [varchar](50) NULL,
	[PA5] [varchar](50) NULL,
	[PA6] [varchar](50) NULL,
	[Pupilas] [varchar](50) NULL,
	[Diabetes] [varchar](50) NULL,
	[DescEvento] [varchar](2000) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Brigada_TableEmergenciasMedicas](
	[IdPaciente] [varchar](50) NOT NULL,
	[FechaAtencion] [datetime] NULL,
	[HoraLlamada] [char](10) NULL,
	[HoraLlegada] [char](10) NULL,
	[NombreUnidad] [varchar](50) NULL,
	[Traslado] [varchar](50) NULL,
	[MediosPropios] [varchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Brigada_TableLogin](
	[Usuario] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Brigada_TablePaciente](
	[IdPaciente] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido1] [varchar](50) NULL,
	[Apellido2] [varchar](50) NULL,
	[Edad] [varchar](50) NULL,
	[TelPersonal] [varchar](50) NULL,
	[Telfamiliar] [varchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO


CREATE PROCEDURE [dbo].[consultarEmergencias](
@IdPaciente AS VARCHAR(12) output
,@FechaAtencion As DATETIME output
,@HoraLlamada AS VARCHAR(10) output
,@HoraLlegada AS VARCHAR(10) output
,@NombreUnidad AS VARCHAR(20) output
,@Traslado AS VARCHAR(10) output
,@MediosPropios AS VARCHAR(10) output
,@Id AS INT output)
	
AS
BEGIN
	
	SELECT 
		IdPaciente, 
		FechaAtencion,
		HoraLlamada,
		HoraLlegada,
		NombreUnidad,
		Traslado,
		MediosPropios,
		Id
	FROM 
		Brigada_TableEmergenciasMedicas
	ORDER BY
		FechaAtencion
END
GO


CREATE PROCEDURE [dbo].[consultarPacientes](
@IdPaciente AS VARCHAR(12) output
,@FechaAtencion AS DATETIME output
,@FrecCardiaca AS VARCHAR(50) output
,@FrecRespiratoria AS VARCHAR(50) output
,@Oximetria AS VARCHAR(50) output
,@Glicemia AS VARCHAR(50) output
,@Temperatura AS VARCHAR(50) output
,@Alergias AS VARCHAR(30) output
,@Padecimientos AS VARCHAR(30) output
,@Medicamentos AS VARCHAR(30) output
,@Cirugias AS VARCHAR(30) output
,@PA1 AS VARCHAR(50) output
,@PA2 AS VARCHAR(50) output
,@PA3 AS VARCHAR(50) output
,@PA4 AS VARCHAR(50) output
,@PA5 AS VARCHAR(50) output
,@PA6 AS VARCHAR(50) output
,@Pupilas AS VARCHAR(50) output
,@Diabetes AS VARCHAR(50) output
,@DescEvento AS VARCHAR(2000) output
,@Id AS INT output)
	
AS
BEGIN
	
	SELECT 
		IdPaciente, 
		FechaAtencion,
		FrecCardiaca,
		FrecRespiratoria,
		Oximetria,
		Glicemia,
		Temperatura,
		Alergias,
		Padecimientos,
		Medicamentos,
		Cirugias,
		PA1,
		PA2,
		PA3,
		PA4,
		PA5,
		PA6,
		Pupilas,
		Diabetes,
		DescEvento,
		Id
	FROM 
		Brigada_TableAtencion
	ORDER BY
		FechaAtencion
END
GO





