USE [master]
GO
/****** Object:  Database [SchoolManagementSystem]    Script Date: 10/9/2018 1:51:06 PM ******/
CREATE DATABASE [SchoolManagementSystem] 
go

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
