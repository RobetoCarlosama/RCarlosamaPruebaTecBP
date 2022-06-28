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

 Date: 26/06/2022 23:19:04
*/


-- ----------------------------
-- Table structure for Cuenta
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Cuenta]') AND type IN ('U'))
	DROP TABLE [dbo].[Cuenta]
GO

CREATE TABLE [dbo].[Cuenta] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Identificacion] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [Numero] int  NOT NULL,
  [Tipo] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [SaldoInicial] int  NOT NULL,
  [EstadoCuenta] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Cuenta] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Cuenta
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Cuenta] ON
GO

INSERT INTO [dbo].[Cuenta] ([Id], [Identificacion], [Numero], [Tipo], [SaldoInicial], [EstadoCuenta]) VALUES (N'1', N'1003560395', N'478758', N'AHORROS', N'2000', N'1')
GO

INSERT INTO [dbo].[Cuenta] ([Id], [Identificacion], [Numero], [Tipo], [SaldoInicial], [EstadoCuenta]) VALUES (N'2', N'1003560397', N'478758', N'CORRIENTE', N'100', N'1')
GO

INSERT INTO [dbo].[Cuenta] ([Id], [Identificacion], [Numero], [Tipo], [SaldoInicial], [EstadoCuenta]) VALUES (N'3', N'1003560398', N'495878', N'AHORROS', N'0', N'1')
GO

INSERT INTO [dbo].[Cuenta] ([Id], [Identificacion], [Numero], [Tipo], [SaldoInicial], [EstadoCuenta]) VALUES (N'4', N'1003560397', N'496825', N'AHORROS', N'0', N'1')
GO

INSERT INTO [dbo].[Cuenta] ([Id], [Identificacion], [Numero], [Tipo], [SaldoInicial], [EstadoCuenta]) VALUES (N'5', N'1003560395', N'585545', N'AHORROS', N'1000', N'1')
GO

INSERT INTO [dbo].[Cuenta] ([Id], [Identificacion], [Numero], [Tipo], [SaldoInicial], [EstadoCuenta]) VALUES (N'6', N'1003560399', N'258977', N'AHORROS', N'0', N'1')
GO

SET IDENTITY_INSERT [dbo].[Cuenta] OFF
GO


-- ----------------------------
-- Auto increment value for Cuenta
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Cuenta]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Cuenta
-- ----------------------------
ALTER TABLE [dbo].[Cuenta] ADD CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

