USE [master]
GO
/****** Object:  Database [CustomerAppDbo]    Script Date: 3/22/2019 8:05:08 PM ******/
CREATE DATABASE [CustomerAppDbo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CustomerAppDbo', FILENAME = N'C:\Users\Talat Ceyhun\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\CustomerAppDbo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CustomerAppDbo_log', FILENAME = N'C:\Users\Talat Ceyhun\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\CustomerAppDbo.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CustomerAppDbo] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CustomerAppDbo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CustomerAppDbo] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [CustomerAppDbo] SET ANSI_NULLS ON 
GO
ALTER DATABASE [CustomerAppDbo] SET ANSI_PADDING ON 
GO
ALTER DATABASE [CustomerAppDbo] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [CustomerAppDbo] SET ARITHABORT ON 
GO
ALTER DATABASE [CustomerAppDbo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CustomerAppDbo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CustomerAppDbo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [CustomerAppDbo] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [CustomerAppDbo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [CustomerAppDbo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CustomerAppDbo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CustomerAppDbo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET RECOVERY FULL 
GO
ALTER DATABASE [CustomerAppDbo] SET  MULTI_USER 
GO
ALTER DATABASE [CustomerAppDbo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CustomerAppDbo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CustomerAppDbo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CustomerAppDbo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CustomerAppDbo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CustomerAppDbo] SET QUERY_STORE = OFF
GO
USE [CustomerAppDbo]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [CustomerAppDbo]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/22/2019 8:05:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[PhoneNumber] [varchar](13) NULL,
	[Mail] [varchar](40) NULL,
	[City] [varchar](30) NULL,
	[Note] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/22/2019 8:05:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](30) NULL,
	[Password] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CustomerAppDbo] SET  READ_WRITE 
GO
