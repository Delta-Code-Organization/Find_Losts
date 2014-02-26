USE [master]
GO
/****** Object:  Database [FindLostsDB]    Script Date: 02/26/2014 14:39:57 ******/
CREATE DATABASE [FindLostsDB] ON  PRIMARY 
( NAME = N'FindLostsDB', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\FindLostsDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FindLostsDB_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\FindLostsDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FindLostsDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FindLostsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FindLostsDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [FindLostsDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [FindLostsDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [FindLostsDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [FindLostsDB] SET ARITHABORT OFF
GO
ALTER DATABASE [FindLostsDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [FindLostsDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [FindLostsDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [FindLostsDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [FindLostsDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [FindLostsDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [FindLostsDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [FindLostsDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [FindLostsDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [FindLostsDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [FindLostsDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [FindLostsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [FindLostsDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [FindLostsDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FindLostsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [FindLostsDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [FindLostsDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [FindLostsDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [FindLostsDB] SET  READ_WRITE
GO
ALTER DATABASE [FindLostsDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [FindLostsDB] SET  MULTI_USER
GO
ALTER DATABASE [FindLostsDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [FindLostsDB] SET DB_CHAINING OFF
GO
USE [FindLostsDB]
GO
/****** Object:  Table [dbo].[Moderators]    Script Date: 02/26/2014 14:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderators](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Moderators] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Moderators] ON
INSERT [dbo].[Moderators] ([ID], [UserName], [Password], [Status]) VALUES (2, N'hana', N'456', 0)
INSERT [dbo].[Moderators] ([ID], [UserName], [Password], [Status]) VALUES (17, N'amal', N'123', 0)
INSERT [dbo].[Moderators] ([ID], [UserName], [Password], [Status]) VALUES (20, N'ali', N'246', 0)
INSERT [dbo].[Moderators] ([ID], [UserName], [Password], [Status]) VALUES (21, N'www', N'123', 0)
SET IDENTITY_INSERT [dbo].[Moderators] OFF
/****** Object:  Table [dbo].[LostsEntries]    Script Date: 02/26/2014 14:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LostsEntries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Code] [int] NULL,
	[OwnerName] [nvarchar](50) NULL,
	[OwnerPhone] [nvarchar](50) NULL,
	[LostDate] [datetime] NULL,
	[LostPlace] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_LostsEntries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LostsEntries] ON
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (7, N'car hjjjj kkkkkll lllll lllll llll ', N'red', 2525222, N'rrrr', N'22222', CAST(0x0000A2DC00F58B60 AS DateTime), N'cccc', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (8, N'watch', N'www', 202020, N'ttttt', N'01220', CAST(0x0000A2DC00F58B60 AS DateTime), N'eeee', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (9, N'2222', N'2222', NULL, N'22222', N'222-2222-2222', CAST(0x0000A2DC00F58B60 AS DateTime), N'2222', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (10, N'car', N'black car number 1254m', 1111, N'ttttt', N'666-6666-6666', CAST(0x0000A2C100A0ACD0 AS DateTime), N'bbbbbbb', 0)
SET IDENTITY_INSERT [dbo].[LostsEntries] OFF
