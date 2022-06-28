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

 Date: 26/06/2022 23:19:14
*/


-- ----------------------------
-- Table structure for Movimientos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Movimientos]') AND type IN ('U'))
	DROP TABLE [dbo].[Movimientos]
GO

CREATE TABLE [dbo].[Movimientos] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Numero] int  NOT NULL,
  [Fecha] datetime2(7)  NOT NULL,
  [TipoMovimiento] bit  NOT NULL,
  [Valor] int  NOT NULL,
  [Saldo] int  NOT NULL,
  [EstadoMovimiento] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Movimientos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Movimientos
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Movimientos] ON
GO

INSERT INTO [dbo].[Movimientos] ([Id], [Numero], [Fecha], [TipoMovimiento], [Valor], [Saldo], [EstadoMovimiento]) VALUES (N'1', N'478758', N'2022-06-26 17:29:49.0827684', N'0', N'-575', N'1425', N'1')
GO

INSERT INTO [dbo].[Movimientos] ([Id], [Numero], [Fecha], [TipoMovimiento], [Valor], [Saldo], [EstadoMovimiento]) VALUES (N'2', N'225487', N'2022-06-26 17:31:05.4427456', N'1', N'600', N'700', N'1')
GO

INSERT INTO [dbo].[Movimientos] ([Id], [Numero], [Fecha], [TipoMovimiento], [Valor], [Saldo], [EstadoMovimiento]) VALUES (N'3', N'495878', N'2022-06-26 17:31:53.6282266', N'1', N'150', N'150', N'1')
GO

INSERT INTO [dbo].[Movimientos] ([Id], [Numero], [Fecha], [TipoMovimiento], [Valor], [Saldo], [EstadoMovimiento]) VALUES (N'4', N'496825', N'2022-06-26 17:33:02.4636730', N'0', N'-540', N'0', N'1')
GO

SET IDENTITY_INSERT [dbo].[Movimientos] OFF
GO


-- ----------------------------
-- Auto increment value for Movimientos
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Movimientos]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table Movimientos
-- ----------------------------
ALTER TABLE [dbo].[Movimientos] ADD CONSTRAINT [PK_Movimientos] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

