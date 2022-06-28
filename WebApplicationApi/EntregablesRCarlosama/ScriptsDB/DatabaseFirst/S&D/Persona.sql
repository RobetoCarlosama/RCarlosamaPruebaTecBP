/*
 Navicat Premium Data Transfer

 Source Server         : Pruebas
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost\SQLEXPRESS:1433
 Source Catalog        : Prueba5
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 26/06/2022 23:19:25
*/


-- ----------------------------
-- Table structure for Persona
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Persona]') AND type IN ('U'))
	DROP TABLE [dbo].[Persona]
GO

CREATE TABLE [dbo].[Persona] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Nombre] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Genero] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Edad] int  NOT NULL,
  [Identificacion] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Direccion] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Telefono] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Estado] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Persona] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Persona
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Persona] ON
GO

INSERT INTO [dbo].[Persona] ([Id], [Nombre], [Genero], [Edad], [Identificacion], [Direccion], [Telefono], [Estado]) VALUES (N'1', N'JOSE LEMA', N'MASCULINO', N'24', N'1003560395', N'QUITO LLANO GRANDE', N'0967969852', N'1')
GO

INSERT INTO [dbo].[Persona] ([Id], [Nombre], [Genero], [Edad], [Identificacion], [Direccion], [Telefono], [Estado]) VALUES (N'2', N'MARIANELA MONTALVO', N'MASCULINO', N'24', N'1003560397', N'AMAZONAS Y NNUU', N'097548965', N'1')
GO

INSERT INTO [dbo].[Persona] ([Id], [Nombre], [Genero], [Edad], [Identificacion], [Direccion], [Telefono], [Estado]) VALUES (N'3', N'JUAN OSORIO', N'MASCULINO', N'24', N'1003560398', N'13 JUNIO Y EQUINOCCIAL', N'098874587', N'1')
GO

INSERT INTO [dbo].[Persona] ([Id], [Nombre], [Genero], [Edad], [Identificacion], [Direccion], [Telefono], [Estado]) VALUES (N'4', N'STRING', N'STRING', N'0', N'string', N'STRING', N'string', N'1')
GO

INSERT INTO [dbo].[Persona] ([Id], [Nombre], [Genero], [Edad], [Identificacion], [Direccion], [Telefono], [Estado]) VALUES (N'5', N'STRING', N'STRING', N'0', N'string', N'STRING', N'string', N'1')
GO

INSERT INTO [dbo].[Persona] ([Id], [Nombre], [Genero], [Edad], [Identificacion], [Direccion], [Telefono], [Estado]) VALUES (N'6', N'LILIANA COLIMBA', N'FEMENINO', N'30', N'1720919362', N'IBARRA', N'062662017', N'1')
GO

SET IDENTITY_INSERT [dbo].[Persona] OFF
GO


-- ----------------------------
-- Auto increment value for Persona
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Persona]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Persona
-- ----------------------------
ALTER TABLE [dbo].[Persona] ADD CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

