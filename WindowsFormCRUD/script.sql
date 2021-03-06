USE [master]
GO
/****** Object:  Database [SchoolManagementSystem]    Script Date: 10/9/2018 1:51:06 PM ******/
CREATE DATABASE [SchoolManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchoolManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SchoolManagementSystem.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SchoolManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SchoolManagementSystem_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SchoolManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchoolManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchoolManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [SchoolManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [SchoolManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchoolManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchoolManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SchoolManagementSystem', N'ON'
GO
USE [SchoolManagementSystem]
GO
/****** Object:  Table [dbo].[Attandances]    Script Date: 10/9/2018 1:51:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attandances](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BatchId] [int] NULL,
	[StudentId] [int] NULL,
	[AttandanceDate] [date] NULL,
	[AddedDate] [datetime] NULL,
 CONSTRAINT [PK_Attandances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Batches]    Script Date: 10/9/2018 1:51:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Batches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Batches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 10/9/2018 1:51:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[BatchId] [int] NULL,
	[EnrollmentId] [int] NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Attandances]  WITH CHECK ADD  CONSTRAINT [FK_Attandances_Batches] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([Id])
GO
ALTER TABLE [dbo].[Attandances] CHECK CONSTRAINT [FK_Attandances_Batches]
GO
ALTER TABLE [dbo].[Attandances]  WITH CHECK ADD  CONSTRAINT [FK_Attandances_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[Attandances] CHECK CONSTRAINT [FK_Attandances_Students]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Batches] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Batches]
GO
USE [master]
GO
ALTER DATABASE [SchoolManagementSystem] SET  READ_WRITE 
GO
