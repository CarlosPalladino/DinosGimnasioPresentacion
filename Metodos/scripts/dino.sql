USE [DinosGym]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 16/5/2023 20:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] NOT NULL,
	[Password] [varchar](20) NULL,
	[UserName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 16/5/2023 20:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[precio] [money] NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16/5/2023 20:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Documento] [int] NULL,
	[FotoDePerfil] [varchar](300) NULL,
	[Pago] [bit] NOT NULL,
	[Contacto] [int] NULL,
	[IdCompra] [int] NULL,
	[FechaDeNacimiento] [smalldatetime] NULL,
	[Peso] [int] NULL,
	[Altura] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Id], [Password], [UserName]) VALUES (1, N'carlos123', N'carlos')
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([IdCompra])
REFERENCES [dbo].[Compras] ([id])
GO
