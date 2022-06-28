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

 Date: 26/06/2022 23:18:26
*/


-- ----------------------------
-- Table structure for Cliente
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type IN ('U'))
	DROP TABLE [dbo].[Cliente]
GO

CREATE TABLE [dbo].[Cliente] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Identificacion] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Contrasenia] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [EstadoCliente] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Cliente] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Cliente
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Cliente] ON
GO

INSERT INTO [dbo].[Cliente] ([Id], [Identificacion], [Contrasenia], [EstadoCliente]) VALUES (N'1', N'1003560395', N'1234', N'1')
GO

INSERT INTO [dbo].[Cliente] ([Id], [Identificacion], [Contrasenia], [EstadoCliente]) VALUES (N'2', N'1003560397', N'56789', N'1')
GO

INSERT INTO [dbo].[Cliente] ([Id], [Identificacion], [Contrasenia], [EstadoCliente]) VALUES (N'3', N'1003560398', N'1245', N'1')
GO

INSERT INTO [dbo].[Cliente] ([Id], [Identificacion], [Contrasenia], [EstadoCliente]) VALUES (N'4', N'1003560399', N'789', N'1')
GO

SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO


-- ----------------------------
-- Auto increment value for Cliente
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Cliente]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table Cliente
-- ----------------------------
ALTER TABLE [dbo].[Cliente] ADD CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

