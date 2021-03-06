USE [master]
GO
/****** Object:  Database [sovertor]    Script Date: 17.05.2018 15:20:39 ******/
CREATE DATABASE [sovertor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sovertor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\sovertor.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sovertor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\sovertor_log.ldf' , SIZE = 560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sovertor] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sovertor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sovertor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sovertor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sovertor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sovertor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sovertor] SET ARITHABORT OFF 
GO
ALTER DATABASE [sovertor] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [sovertor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sovertor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sovertor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sovertor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sovertor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sovertor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sovertor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sovertor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sovertor] SET  ENABLE_BROKER 
GO
ALTER DATABASE [sovertor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sovertor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sovertor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sovertor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sovertor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sovertor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sovertor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sovertor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sovertor] SET  MULTI_USER 
GO
ALTER DATABASE [sovertor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sovertor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sovertor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sovertor] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [sovertor] SET DELAYED_DURABILITY = DISABLED 
GO
USE [sovertor]
GO
/****** Object:  Table [dbo].[users]    Script Date: 17.05.2018 15:20:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[Id] [int] NOT NULL,
	[telegramid] [int] NOT NULL,
	[displayname] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NULL,
	[banned] [bit] NULL,
	[banned by] [nvarchar](50) NULL,
	[ban reason] [nvarchar](50) NULL,
	[botstart] [bit] NULL,
	[isadmin] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [banned]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [banned by]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [ban reason]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [botstart]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [isadmin]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'telegramid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'displayname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'banned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'banned by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'ban reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'botstart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'isadmin'
GO
USE [master]
GO
ALTER DATABASE [sovertor] SET  READ_WRITE 
GO
