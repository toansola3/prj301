USE [master]
GO
/****** Object:  Database [TTKPiano]    Script Date: 20/08/2022 10:28:11 SA ******/
CREATE DATABASE [TTKPiano]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TTKPiano', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HUYEN\MSSQL\DATA\TTKPiano.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TTKPiano_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HUYEN\MSSQL\DATA\TTKPiano_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TTKPiano] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TTKPiano].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TTKPiano] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TTKPiano] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TTKPiano] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TTKPiano] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TTKPiano] SET ARITHABORT OFF 
GO
ALTER DATABASE [TTKPiano] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TTKPiano] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TTKPiano] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TTKPiano] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TTKPiano] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TTKPiano] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TTKPiano] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TTKPiano] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TTKPiano] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TTKPiano] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TTKPiano] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TTKPiano] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TTKPiano] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TTKPiano] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TTKPiano] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TTKPiano] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TTKPiano] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TTKPiano] SET RECOVERY FULL 
GO
ALTER DATABASE [TTKPiano] SET  MULTI_USER 
GO
ALTER DATABASE [TTKPiano] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TTKPiano] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TTKPiano] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TTKPiano] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TTKPiano] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TTKPiano] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TTKPiano', N'ON'
GO
ALTER DATABASE [TTKPiano] SET QUERY_STORE = OFF
GO
USE [TTKPiano]
GO
/****** Object:  Table [dbo].[tblCourse]    Script Date: 20/08/2022 10:28:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCourse](
	[name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[tuitionFee] [int] NOT NULL,
	[startDate] [nvarchar](max) NOT NULL,
	[endDate] [nvarchar](max) NOT NULL,
	[category] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblCourse] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 20/08/2022 10:28:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[userID] [nvarchar](50) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[isAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tblCourse] ([name], [image], [description], [tuitionFee], [startDate], [endDate], [category]) VALUES (N'Drawing', N'Thùy Trinh', N'xinh gái', 152000, N'10-07-2021', N'02-08-2021', N'piano')
INSERT [dbo].[tblCourse] ([name], [image], [description], [tuitionFee], [startDate], [endDate], [category]) VALUES (N'Organ', N'Thùy Trinh', N'xinh đẹp', 152000, N'10-07-2021', N'02-08-2021', N'piano')
INSERT [dbo].[tblCourse] ([name], [image], [description], [tuitionFee], [startDate], [endDate], [category]) VALUES (N'Sáo', N'Thanh Nam ', N'xinh trai', 15000000, N'15-07-2022', N'25-08-2022', N've')
INSERT [dbo].[tblCourse] ([name], [image], [description], [tuitionFee], [startDate], [endDate], [category]) VALUES (N'Swimming', N'Thanh Huy ', N'xinh gái', 14000000, N'15-08-2022', N'25-09-2022', N'piano')
GO
INSERT [dbo].[tblLogin] ([userID], [password], [lastname], [isAdmin]) VALUES (N'hoai', N'741@', N'Tiến', 1)
INSERT [dbo].[tblLogin] ([userID], [password], [lastname], [isAdmin]) VALUES (N'huyen', N'7458', N'Hoài', 0)
INSERT [dbo].[tblLogin] ([userID], [password], [lastname], [isAdmin]) VALUES (N'ter', N'745', N'Hiền', 0)
INSERT [dbo].[tblLogin] ([userID], [password], [lastname], [isAdmin]) VALUES (N'we', N'12345', N'Trang', 1)
GO
USE [master]
GO
ALTER DATABASE [TTKPiano] SET  READ_WRITE 
GO
