USE [master]
GO
/****** Object:  Database [admproyectos]    Script Date: 3/11/2015 7:26:42 p. m. ******/
CREATE DATABASE [admproyectos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'admproyectos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\admproyectos.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'admproyectos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\admproyectos_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [admproyectos] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [admproyectos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [admproyectos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [admproyectos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [admproyectos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [admproyectos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [admproyectos] SET ARITHABORT OFF 
GO
ALTER DATABASE [admproyectos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [admproyectos] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [admproyectos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [admproyectos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [admproyectos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [admproyectos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [admproyectos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [admproyectos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [admproyectos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [admproyectos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [admproyectos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [admproyectos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [admproyectos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [admproyectos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [admproyectos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [admproyectos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [admproyectos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [admproyectos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [admproyectos] SET RECOVERY FULL 
GO
ALTER DATABASE [admproyectos] SET  MULTI_USER 
GO
ALTER DATABASE [admproyectos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [admproyectos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [admproyectos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [admproyectos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'admproyectos', N'ON'
GO
USE [admproyectos]
GO
/****** Object:  StoredProcedure [dbo].[consultaPersona]    Script Date: 3/11/2015 7:26:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultaPersona]
(
	@legajo int
)
AS
	SET NOCOUNT ON;
SELECT nombre, apellido, cargo, especialidad FROM dbo.Persona WHERE legajo=@legajo
GO
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 3/11/2015 7:26:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[login]
(
	@usuario varchar(50),
	@contraseña varchar(50)
)
AS
	SET NOCOUNT ON;
SELECT legajo FROM Usuario WHERE usuario=@usuario and contraseña=@contraseña
GO
/****** Object:  Table [dbo].[Estacion]    Script Date: 3/11/2015 7:26:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estacion](
	[nroEstacion] [int] IDENTITY(1,1) NOT NULL,
	[descripcionEstacion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Estacion] PRIMARY KEY CLUSTERED 
(
	[nroEstacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 3/11/2015 7:26:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[legajo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apellido] [varchar](30) NOT NULL,
	[cargo] [varchar](30) NULL,
	[especialidad] [varchar](30) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[legajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 3/11/2015 7:26:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proyecto](
	[idProyecto] [int] IDENTITY(1,1) NOT NULL,
	[nombreProyecto] [varchar](30) NOT NULL,
	[fechaInicio] [date] NULL,
	[fechaFin] [date] NULL,
 CONSTRAINT [PK_Proyecto] PRIMARY KEY CLUSTERED 
(
	[idProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 3/11/2015 7:26:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sala](
	[idSala] [int] IDENTITY(1,1) NOT NULL,
	[descripcionSala] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Sala] PRIMARY KEY CLUSTERED 
(
	[idSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tarea]    Script Date: 3/11/2015 7:26:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tarea](
	[idTarea] [int] IDENTITY(1,1) NOT NULL,
	[descripcionTarea] [varchar](30) NULL,
 CONSTRAINT [PK_Tarea] PRIMARY KEY CLUSTERED 
(
	[idTarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 3/11/2015 7:26:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[contraseña] [varchar](50) NOT NULL,
	[legajo] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([legajo])
REFERENCES [dbo].[Persona] ([legajo])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
USE [master]
GO
ALTER DATABASE [admproyectos] SET  READ_WRITE 
GO
