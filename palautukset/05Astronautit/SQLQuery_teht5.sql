USE [master]
GO
/****** Object:  Database [05_Astronauttien_henkilorekisteri]    Script Date: 25.5.2023 21.00.06 ******/
CREATE DATABASE [05_Astronauttien_henkilorekisteri]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'05_Astronautit', FILENAME = N'C:\Users\Jamilla\05_Astronautit.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'05_Astronautit_log', FILENAME = N'C:\Users\Jamilla\05_Astronautit_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [05_Astronauttien_henkilorekisteri].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET ARITHABORT OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET  DISABLE_BROKER 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET  MULTI_USER 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET DB_CHAINING OFF 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET QUERY_STORE = OFF
GO
USE [05_Astronauttien_henkilorekisteri]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [05_Astronauttien_henkilorekisteri]
GO
/****** Object:  Table [dbo].[Astronautit]    Script Date: 25.5.2023 21.00.06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Astronautit](
	[astronautit_id] [int] NOT NULL,
	[etunimi] [varchar](50) NULL,
	[sukunimi] [varchar](50) NULL,
	[syntyma-aika] [date] NULL,
	[avaruudessa vietetty aika] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[kansalaisuus_id] [int] NULL,
 CONSTRAINT [PK_Astronautit] PRIMARY KEY CLUSTERED 
(
	[astronautit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AstronauttienTehtavat]    Script Date: 25.5.2023 21.00.06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AstronauttienTehtavat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[astronautti] [int] NOT NULL,
	[tehtavat] [int] NOT NULL,
 CONSTRAINT [PK_AstronauttienTehtavat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kansalaisuus]    Script Date: 25.5.2023 21.00.06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kansalaisuus](
	[kansalaisuus_id] [int] NOT NULL,
	[kansalaisuus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Kansalaisuus] PRIMARY KEY CLUSTERED 
(
	[kansalaisuus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sukupuoli]    Script Date: 25.5.2023 21.00.06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sukupuoli](
	[sukupuoli_id] [int] NOT NULL,
	[sukupuoli] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sukupuoli] PRIMARY KEY CLUSTERED 
(
	[sukupuoli_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tehtavat]    Script Date: 25.5.2023 21.00.06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tehtavat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tehtavan_nimi] [varchar](150) NOT NULL,
 CONSTRAINT [PK_tehtavat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Astronautit]  WITH CHECK ADD  CONSTRAINT [FK_Astronautit_Astronautit] FOREIGN KEY([sukupuoli_id])
REFERENCES [dbo].[Sukupuoli] ([sukupuoli_id])
GO
ALTER TABLE [dbo].[Astronautit] CHECK CONSTRAINT [FK_Astronautit_Astronautit]
GO
ALTER TABLE [dbo].[Astronautit]  WITH CHECK ADD  CONSTRAINT [FK_Astronautit_Kansalaisuus] FOREIGN KEY([kansalaisuus_id])
REFERENCES [dbo].[Kansalaisuus] ([kansalaisuus_id])
GO
ALTER TABLE [dbo].[Astronautit] CHECK CONSTRAINT [FK_Astronautit_Kansalaisuus]
GO
ALTER TABLE [dbo].[AstronauttienTehtavat]  WITH CHECK ADD  CONSTRAINT [FK_AstronauttienTehtavat_Astronautit] FOREIGN KEY([astronautti])
REFERENCES [dbo].[Astronautit] ([astronautit_id])
GO
ALTER TABLE [dbo].[AstronauttienTehtavat] CHECK CONSTRAINT [FK_AstronauttienTehtavat_Astronautit]
GO
ALTER TABLE [dbo].[AstronauttienTehtavat]  WITH CHECK ADD  CONSTRAINT [FK_AstronauttienTehtavat_tehtavat] FOREIGN KEY([tehtavat])
REFERENCES [dbo].[tehtavat] ([id])
GO
ALTER TABLE [dbo].[AstronauttienTehtavat] CHECK CONSTRAINT [FK_AstronauttienTehtavat_tehtavat]
GO
USE [master]
GO
ALTER DATABASE [05_Astronauttien_henkilorekisteri] SET  READ_WRITE 
GO
