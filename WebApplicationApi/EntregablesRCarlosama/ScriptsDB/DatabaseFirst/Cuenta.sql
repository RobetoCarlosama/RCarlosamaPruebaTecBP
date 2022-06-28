USE [Prueba5]
GO

/****** Object:  Table [dbo].[Cuenta]    Script Date: 26/06/2022 05:53:51 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cuenta]') AND type in (N'U'))
DROP TABLE [dbo].[Cuenta]
GO

/****** Object:  Table [dbo].[Cuenta]    Script Date: 26/06/2022 05:53:51 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cuenta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [nvarchar](max) NULL,
	[Numero] [int] NOT NULL,
	[Tipo] [nvarchar](max) NULL,
	[SaldoInicial] [int] NOT NULL,
	[EstadoCuenta] [bit] NOT NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


