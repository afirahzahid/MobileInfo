USE [master]
GO
/****** Object:  Database [DB16]    Script Date: 4/14/2019 4:25:09 PM ******/
CREATE DATABASE [DB16]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB16', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DB16.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB16_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DB16_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB16] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB16].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB16] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB16] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB16] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB16] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB16] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB16] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB16] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB16] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB16] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB16] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB16] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB16] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB16] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB16] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB16] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB16] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB16] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB16] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB16] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB16] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB16] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB16] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB16] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB16] SET  MULTI_USER 
GO
ALTER DATABASE [DB16] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB16] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB16] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB16] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB16]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 4/14/2019 4:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[Id] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 4/14/2019 4:25:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mobile]    Script Date: 4/14/2019 4:25:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mobile](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[OS] [nvarchar](200) NOT NULL,
	[UI] [nvarchar](200) NULL,
	[Dimensions] [nvarchar](200) NOT NULL,
	[Weight] [nvarchar](200) NOT NULL,
	[SIM] [nvarchar](300) NOT NULL,
	[Colors] [nvarchar](1000) NOT NULL,
	[2G Band] [nvarchar](max) NULL,
	[3G Band] [nvarchar](max) NULL,
	[4G Band] [nvarchar](max) NULL,
	[CPU] [nvarchar](max) NULL,
	[Chipset] [nvarchar](max) NULL,
	[GPU] [nvarchar](max) NULL,
	[Technology] [nvarchar](max) NULL,
	[Size] [nvarchar](50) NOT NULL,
	[Resolution] [nvarchar](200) NOT NULL,
	[Built-in Memory] [nvarchar](100) NOT NULL,
	[Card] [nvarchar](200) NULL,
	[Main Camera] [nvarchar](50) NOT NULL,
	[Camera Description] [nvarchar](max) NULL,
	[Features] [nvarchar](max) NULL,
	[Front Camera] [nvarchar](max) NULL,
	[WLAN] [nvarchar](max) NULL,
	[Bluetooth] [nvarchar](200) NULL,
	[GPS] [nvarchar](200) NULL,
	[USB] [nvarchar](200) NULL,
	[NFC] [nvarchar](50) NULL,
	[Data] [nvarchar](max) NULL,
	[Sensors] [nvarchar](max) NULL,
	[Audio] [nvarchar](500) NULL,
	[Browser] [nvarchar](100) NOT NULL,
	[Messaging] [nvarchar](200) NULL,
	[Games] [nvarchar](200) NULL,
	[Torch] [nvarchar](10) NOT NULL,
	[Extra] [nvarchar](max) NULL,
	[Battery] [nvarchar](max) NOT NULL,
	[Price] [bigint] NOT NULL,
	[Announced On] [date] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[BrandId] [int] NOT NULL,
 CONSTRAINT [PK_Mobile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 4/14/2019 4:25:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[Id] [int] NOT NULL,
	[Picture] [image] NOT NULL,
	[MobileId] [int] NOT NULL,
 CONSTRAINT [PK_Pictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 4/14/2019 4:25:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Stars] [int] NOT NULL,
	[Opinion] [nvarchar](max) NULL,
	[MobileId] [int] NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mobile]  WITH CHECK ADD  CONSTRAINT [FK_Mobile_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Mobile] CHECK CONSTRAINT [FK_Mobile_Brands]
GO
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_Pictures_Mobile] FOREIGN KEY([MobileId])
REFERENCES [dbo].[Mobile] ([Id])
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_Pictures_Mobile]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Mobile] FOREIGN KEY([MobileId])
REFERENCES [dbo].[Mobile] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Mobile]
GO
USE [master]
GO
ALTER DATABASE [DB16] SET  READ_WRITE 
GO
