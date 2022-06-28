USE [Prueba5]
GO

/****** Object:  View [dbo].[Reporte]    Script Date: 26/06/2022 11:14:37 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Reporte] AS SELECT
	MOV.Fecha, 
	Persona.Nombre, 
	MOV.Numero, 
	CUE.Tipo, 
	CUE.SaldoInicial, 
	MOV.EstadoMovimiento, 
	MOV.Valor, 
	MOV.Saldo
FROM
	dbo.Movimientos AS MOV
	INNER JOIN
	dbo.Cuenta AS CUE
	ON 
		MOV.Numero = CUE.Numero
	INNER JOIN
	dbo.Cliente AS CLI
	ON 
		CUE.Identificacion = CLI.Identificacion
	INNER JOIN
	dbo.Persona
	ON 
		CLI.Identificacion = Persona.Identificacion
GO


