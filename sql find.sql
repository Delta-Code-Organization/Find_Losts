USE [master]
GO
/****** Object:  Database [FindLostsDB]    Script Date: 03/05/2014 16:12:13 ******/
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
/****** Object:  Table [dbo].[Moderators]    Script Date: 03/05/2014 16:12:16 ******/
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
INSERT [dbo].[Moderators] ([ID], [UserName], [Password], [Status]) VALUES (17, N'amal', N'123', 2)
INSERT [dbo].[Moderators] ([ID], [UserName], [Password], [Status]) VALUES (20, N'ali', N'456', NULL)
INSERT [dbo].[Moderators] ([ID], [UserName], [Password], [Status]) VALUES (23, N'anisa', N'123', 0)
INSERT [dbo].[Moderators] ([ID], [UserName], [Password], [Status]) VALUES (24, N'aaa', N'456', 1)
SET IDENTITY_INSERT [dbo].[Moderators] OFF
/****** Object:  Table [dbo].[LostsEntries]    Script Date: 03/05/2014 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LostsEntries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NULL,
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
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (8, N'watch', N'www', N'202020', N'ttttt', N'01220', CAST(0x0000A2DC00F58B60 AS DateTime), N'eeee', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (9, N'2222', N'2222', NULL, N'22222', N'222-2222-2222', CAST(0x0000A2DC00F58B60 AS DateTime), N'2222', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (10, N'car', N'black car number 1254m', N'1111', N'ttttt', N'666-6666-6666', CAST(0x0000A2C100A0ACD0 AS DateTime), N'bbbbbbb', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (19, N'car2', N'ccccccccccccccccc', N'6520-6007', N'aaaaaaaaaaaaaaa', N'333-3333-3333', CAST(0x0000A2DD00B28720 AS DateTime), N'sstreet', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (20, N'labtop', N'ddddddddddddd', N'4347-9801', N'ssssssssss', N'444-4444-4444', CAST(0x0000A2DD00C46170 AS DateTime), N'swwwww', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (21, N'ring', N'wwwwwwwwwwww', N'9367-8631', N'ssssssssss', N'333-3333-3333', CAST(0x0000A2DD00827670 AS DateTime), N'ffff', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (22, N'zzzz', N'aaa', N'4259-5977', N'ssss', N'222-2222-2222', CAST(0x0000A2DE00709C20 AS DateTime), N'eeeee', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (25, N'qq', N'gggg', N'2835-6596', N'hhhhh', N'666-6666-6666', CAST(0x0000A2DE00F47220 AS DateTime), N'jjj', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (27, N'car', N'ggggggggggg', N'8823-3275', N'ggggggggggggggggg', N'555-5555-5555', CAST(0x0000A2E500A20C60 AS DateTime), N'hhhhhhh', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (28, N'car', N'cdddd', N'5559-3448', N'd', N'333-3333-3333', CAST(0x0000A2E500C08910 AS DateTime), N'ssss', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (29, N'car', N'fffffffffffff', N'7410-1373', N'f', N'444-4444-4444', CAST(0xFFFFFFE7000DBBA0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (30, N'car', N'ddddddd', N'8555-6590', N'eeeeeeeeee', N'333-3333-3333', CAST(0x0000A2DF00C46170 AS DateTime), N'ddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (31, N'car', N'ddddddd', N'1469-3974', N'eeeeeeeeee', N'333-3333-3333', CAST(0x0000A2DF00C46170 AS DateTime), N'ddd', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (32, N'car', N'd', N'7056-8926', N'dd', N'222-2222-2222', CAST(0x0000A2E500C1A250 AS DateTime), N'dd', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (33, N'car2', N'dddddddddddd', N'7753-3837', N'sss', N'222-2222-2222', CAST(0xFFFFFFFF00000000 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (34, N'car2', N'hhh', N'8034-8460', N'hhhhhhhhhhhhhhh', N'777-7777-7777', CAST(0x0000A2E500C53460 AS DateTime), N'jjjj', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (35, N'car2', N'uu', N'3344-3051', N'jjjjjj', N'888-8888-8888', CAST(0x0000A2E500C57AB0 AS DateTime), N'uuuu', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (36, N'car', N'hhh', N'1939-5841', N'hhh', N'777-7777-7777', CAST(0x0000A2DF00827670 AS DateTime), N'hhh', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (37, N'car', N'fffff', N'3776-9856', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D79B50 AS DateTime), N'fff', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (38, N'car', N'fffff', N'6542-2359', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D79B50 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (39, N'car', N'fffff', N'4518-9769', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D79B50 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (40, N'car', N'fffff', N'7352-4550', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D79B50 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (41, N'car', N'fffff', N'9834-1885', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D79B50 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (42, N'car', N'fffff', N'7233-6228', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D79B50 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (43, N'car', N'fffff', N'2689-9107', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D79B50 AS DateTime), N'fff', 1)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (44, N'car', N'fffff', N'9592-8028', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D79B50 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (45, N'car', N'ddddddddd', N'5074-8195', N'dddddd', N'444-4444-4444', CAST(0x0000A2E500D8B490 AS DateTime), N'rrrrr', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (46, N'car', N'ffff', N'7017-3475', N'fff', N'444-4444-4444', CAST(0xFFFFFFFF00000000 AS DateTime), N'ffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (47, N'car2', N'dddd', N'6502-8581', N'ffffffffff', N'444-4444-4444', CAST(0x0000A2E500D94130 AS DateTime), N'fffffffffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (48, N'car', N'fffffff', N'3986-3768', N'ffff', N'444-4444-4444', CAST(0x0000A2E500D9CDD0 AS DateTime), N'dd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (49, N'car2', N'fffffffff', N'6889-7048', N'fffff', N'555-5555-5555', CAST(0x0000A2E500DA1420 AS DateTime), N'ffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (50, N'car', N'ffff', N'8699-6761', N'ffff', N'555-5555-5555', CAST(0x0000A2E500DA1420 AS DateTime), N'ffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (51, N'car', N'ddddddddd', N'2537-4655', N'dddddd', N'444-4444-4444', CAST(0x0000A2E500D8B490 AS DateTime), N'rrrrr', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (52, N'car', N'ddddddddd', N'9079-2397', N'dddddd', N'444-4444-4444', CAST(0x0000A2E500D8B490 AS DateTime), N'rrrrr', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (53, N'car', N'ffff', N'1616-9479', N'ffff', N'444-4444-4444', CAST(0x0000A2E500DB2D60 AS DateTime), N'fffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (54, N'car2', N'cccc', N'4695-1230', N'fffffff', N'444-4444-4444', CAST(0x0000A2E500DB73B0 AS DateTime), N'vvvv', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (55, N'car', N'fffffffffffffff', N'2385-7274', N'ggggggggggg', N'555-5555-5555', CAST(0x0000A2E500DB73B0 AS DateTime), N'bbbbbbbbbbb', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (56, N'car', N'fffffffff', N'9098-7780', N'ddddddd', N'444-4444-4444', CAST(0x0000A2E500DC0050 AS DateTime), N'ffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (57, N'car', N'ffffffff', N'1761-5090', N'gggg', N'555-5555-5555', CAST(0x0000A2E500DC0050 AS DateTime), N'ggggg', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (58, N'car', N'f', N'1598-7950', N'g', N'555-5555-5555', CAST(0x0000A2E500DC0050 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (59, N'car', N'd', N'2064-9628', N'c', N'333-3333-3333', CAST(0x0000A2E500DC8CF0 AS DateTime), N'ffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (60, N'car', N'dd', N'4494-7819', N'ddd', N'333-3333-3333', CAST(0x0000A2E500DCD340 AS DateTime), N'ddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (61, N'car', N'ddd', N'7153-8230', N'ee', N'222-2222-2222', CAST(0x0000A2E500DCD340 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (62, N'car', N'ddddd', N'8089-2884', N'sss', N'333-3333-3333', CAST(0x0000A2E500DD5FE0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (63, N'car', N'ddddd', N'8089-2884', N'sss', N'333-3333-3333', CAST(0x0000A2E500DD5FE0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (64, N'car', N'r', N'5284-8776', N'd', N'333-3333-3333', CAST(0x0000A2E500DDA630 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (65, N'car2', N'ffffff', N'5580-1483', N'ddddddd', N'333-3333-3333', CAST(0x0000A2E500DDA630 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (66, N'car', N'ddd', N'8310-7592', N'ddd', N'111-1111-1111', CAST(0x0000A2E500DDA630 AS DateTime), N'ddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (67, N'car2', N'ddd', N'1043-3515', N'ee', N'222-2222-2222', CAST(0x0000A2E500DF05C0 AS DateTime), N'ddddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (68, N'car', N'd', N'1414-7539', N'ddd', N'222-2222-2222', CAST(0x0000A2E500DFD8B0 AS DateTime), N'fff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (69, N'car', N'ddd', N'9746-7130', N'gggggg', N'666-6666-6666', CAST(0x0000A2E500DFD8B0 AS DateTime), N'gggg', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (70, N'car', N'ee', N'8731-6180', N'ee', N'333-3333-3333', CAST(0x0000A2E500DFD8B0 AS DateTime), N'eee', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (71, N'car2', N'ff', N'9605-3882', N'ddd', N'333-3333-3333', CAST(0x0000A2E500E13840 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (72, N'car2', N'ddd', N'2713-8399', N'ed', N'222-2222-2222', CAST(0x0000A2E500E13840 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (73, N'car', N'ddd', N'4055-5842', N'dddd', N'333-3333-3333', CAST(0x0000A2E500E17E90 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (74, N'car', N'frrr', N'7969-3860', N'fff', N'444-4444-4444', CAST(0x0000A2E500E20B30 AS DateTime), N'fffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (75, N'car2', N'fff', N'6388-3280', N'rr', N'444-4444-4444', CAST(0x0000A2E500E20B30 AS DateTime), N'ffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (76, N'car2', N'ddd', N'4384-8247', N'ddd', N'444-4444-4444', CAST(0x0000A2E500E25180 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (77, N'car', N'ddd', N'2728-5064', N'dd', N'333-3333-3333', CAST(0x0000A2E500E25180 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (78, N'car', N'sss', N'3995-8902', N'dddd', N'333-3333-3333', CAST(0x0000A2E500E297D0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (79, N'car', N'ffff', N'2270-5639', N'dddd', N'222-2222-2222', CAST(0x0000A2E500E36AC0 AS DateTime), N'eeee', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (80, N'car', N'dddd', N'1550-3295', N'ss', N'111-1111-1111', CAST(0x0000A2E500E3B110 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (81, N'car', N'ffff', N'8652-9354', N'dddd', N'222-2222-2222', CAST(0x0000A2E500E36AC0 AS DateTime), N'eeee', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (82, N'car', N'ffff', N'9665-7205', N'dddd', N'222-2222-2222', CAST(0x0000A2E500E36AC0 AS DateTime), N'eeee', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (83, N'car', N'ddd', N'4498-2000', N'sss', N'222-2222-2222', CAST(0x0000A2E500E3F760 AS DateTime), N'ssss', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (84, N'car', N'ddd', N'2913-4207', N'fff', N'444-4444-4444', CAST(0x0000A2E500E43DB0 AS DateTime), N'ffffffffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (85, N'car', N'ddd', N'8484-2323', N'dddd', N'333-3333-3333', CAST(0x0000A2E500E4CA50 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (86, N'car2', N'ddd', N'9453-1357', N'ddd', N'333-3333-3333', CAST(0x0000A2E500E510A0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (87, N'car2', N'ddd', N'1674-3572', N'eee', N'333-3333-3333', CAST(0x0000A2E500E510A0 AS DateTime), N'eeee', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (88, N'car', N'ddd', N'1117-7059', N'dd', N'333-3333-3333', CAST(0x0000A2E500E556F0 AS DateTime), N'ddddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (89, N'car2', N'dddd', N'4357-7750', N'ddd', N'333-3333-3333', CAST(0x0000A2E500E556F0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (90, N'car2', N'ddd', N'6207-1996', N'eeee', N'333-3333-3333', CAST(0x0000A2E500E6B680 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (91, N'car', N'ddd', N'6765-4114', N'ddd', N'333-3333-3333', CAST(0x0000A2E500E6FCD0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (92, N'car2', N'ddd', N'6991-4283', N'dd', N'333-3333-3333', CAST(0x0000A2E500E975A0 AS DateTime), N'ddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (93, N'car', N'rrr', N'9513-8828', N't5', N'555-5555-5555', CAST(0x0000A2E500E975A0 AS DateTime), N'jjj', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (94, N'car', N'rrr', N'1681-6295', N't5', N'555-5555-5555', CAST(0x0000A2E500E975A0 AS DateTime), N'jjj', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (95, N'car2', N'dsd', N'1789-3993', N'www', N'222-2222-2222', CAST(0x0000A2E500E9BBF0 AS DateTime), N'eeee', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (96, N'car2', N'dsd', N'3868-7529', N'www', N'222-2222-2222', CAST(0x0000A2E500E9BBF0 AS DateTime), N'eeee', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (97, N'car2', N'xxx', N'2830-8417', N'ddd', N'222-2222-2222', CAST(0x0000A2E500EA0240 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (98, N'car', N'gg', N'5932-9836', N'rr', N'333-3333-3333', CAST(0xFFFFFFFF00000000 AS DateTime), N'ggg', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (99, N'car', N'gg', N'6861-1658', N'rr', N'333-3333-3333', CAST(0xFFFFFFFF00000000 AS DateTime), N'ggg', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (100, N'car', N'c', N'5389-1876', N'dddddddddd', N'333-3333-3333', CAST(0x0000A2E500EAD530 AS DateTime), N'ddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (101, N'car', N'c', N'5652-5388', N'dddddddddd', N'333-3333-3333', CAST(0x0000A2E500EAD530 AS DateTime), N'ddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (102, N'car2', N'tttt', N'3039-6315', N'hhhh', N'555-5555-5555', CAST(0x0000A2E500EB1B80 AS DateTime), N'hhhh', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (103, N'car2', N'tttt', N'2891-3913', N'hhhh', N'555-5555-5555', CAST(0x0000A2E500EB1B80 AS DateTime), N'hhhh', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (104, N'car2', N'tttt', N'4244-1980', N'hhhh', N'555-5555-5555', CAST(0x0000A2E500EB1B80 AS DateTime), N'hhhh', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (105, N'car2', N'tttt', N'6383-4677', N'hhhh', N'555-5555-5555', CAST(0x0000A2E500EB1B80 AS DateTime), N'hhhh', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (106, N'car2', N'tttt', N'6765-6512', N'hhhh', N'555-5555-5555', CAST(0x0000A2E500EB1B80 AS DateTime), N'hhhh', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (107, N'car', N'g', N'5316-4892', N'ggg', N'555-5555-5555', CAST(0x0000A2E500EB61D0 AS DateTime), N'ggg', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (108, N'car', N'xss', N'6427-6002', N'dd', N'222-2222-2222', CAST(0x0000A2E500EB61D0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (109, N'car2', N'ddd', N'5166-5290', N'ssss', N'222-2222-2222', CAST(0x0000A2E500EBA820 AS DateTime), N'sss', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (110, N'car', N'cccc', N'3484-9251', N'ddddddd', N'222-2222-2222', CAST(0x0000A2E500EC7B10 AS DateTime), N'sss', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (111, N'car', N'cccc', N'2079-6142', N'ddddddd', N'222-2222-2222', CAST(0x0000A2E500EC7B10 AS DateTime), N'sss', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (112, N'car', N'fffff', N'3329-6537', N'trrrr', N'555-5555-5555', CAST(0x0000A2E500ECC160 AS DateTime), N'fffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (113, N'car', N'fffff', N'6469-9547', N'trrrr', N'555-5555-5555', CAST(0x0000A2E500ECC160 AS DateTime), N'fffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (114, N'car', N'ffff', N'5495-7116', N'rrrr', N'555-5555-5555', CAST(0x0000A2E500ECC160 AS DateTime), N'ffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (115, N'car', N'ffff', N'3399-5729', N'ggg', N'555-5555-5555', CAST(0x0000A2E500ED07B0 AS DateTime), N'ffffffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (116, N'car', N'ffff', N'9580-5392', N'ggg', N'555-5555-5555', CAST(0x0000A2E500ED07B0 AS DateTime), N'ffffffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (117, N'car', N'rrrr', N'9298-9930', N'dddd', N'444-4444-4444', CAST(0x0000A2E500ED4E00 AS DateTime), N'ffffffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (118, N'car', N'rrrr', N'1967-7552', N'dddd', N'444-4444-4444', CAST(0x0000A2E500ED4E00 AS DateTime), N'ffffffff', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (119, N'car2', N'dddd', N'3324-8731', N'ffff', N'444-4444-4444', CAST(0x0000A2E500ED4E00 AS DateTime), N'fffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (120, N'car2', N'dddd', N'4991-6354', N'ffff', N'444-4444-4444', CAST(0x0000A2E500ED4E00 AS DateTime), N'fffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (121, N'car2', N'fdfff', N'3351-6613', N'ddddd', N'444-4444-4444', CAST(0x0000A2E500ED9450 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (122, N'car', N'dddd', N'7770-2001', N'dddd', N'444-4444-4444', CAST(0x0000A2E500EDDAA0 AS DateTime), N'dddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (123, N'car2', N'eeee', N'4935-3813', N'dddd', N'333-3333-3333', CAST(0x0000A2E500EDDAA0 AS DateTime), N'ddddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (124, N'car2', N'ffff', N'7912-9991', N'ddd', N'444-4444-4444', CAST(0x0000A2E500EE20F0 AS DateTime), N'ddddd', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (125, N'car2', N'ffff', N'3105-5965', N'cc', N'444-4444-4444', CAST(0x0000A2E500EE6740 AS DateTime), N'fffff', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (126, N'car2', N'ccc', N'1615-2726', N'cccc', N'444-4444-4444', CAST(0x0000A2E500EE6740 AS DateTime), N'ccccc', 0)
INSERT [dbo].[LostsEntries] ([ID], [Name], [Description], [Code], [OwnerName], [OwnerPhone], [LostDate], [LostPlace], [Status]) VALUES (127, N'car2', N'ccc', N'5039-1213', N'cccc', N'444-4444-4444', CAST(0x0000A2E500EE6740 AS DateTime), N'ccccc', 0)
SET IDENTITY_INSERT [dbo].[LostsEntries] OFF
