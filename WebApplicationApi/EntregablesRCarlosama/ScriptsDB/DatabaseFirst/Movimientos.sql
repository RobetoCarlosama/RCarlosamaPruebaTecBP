USE [Prueba5]
GO

/****** Object:  Table [dbo].[Movimientos]    Script Date: 26/06/2022 05:54:49 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movimientos]') AND type in (N'U'))
DROP TABLE [dbo].[Movimientos]
GO

/****** Object:  Table [dbo].[Movimientos]    Script Date: 26/06/2022 05:54:49 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movimientos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [int] NOT NULL,
	[Fecha] [datetime2](7) NOT NULL,
	[TipoMovimiento] [bit] NOT NULL,
	[Valor] [int] NOT NULL,
	[Saldo] [int] NOT NULL,
	[EstadoMovimiento] [bit] NOT NULL,
 CONSTRAINT [PK_Movimientos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


