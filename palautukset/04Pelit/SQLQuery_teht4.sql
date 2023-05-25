USE [04_Pelit]
GO
/****** Object:  Table [dbo].[Pelaaja]    Script Date: 25.5.2023 20.58.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelaaja](
	[pelaaja_id] [int] NOT NULL,
	[nimi] [varchar](50) NULL,
	[sukupuoli] [varchar](50) NULL,
	[lähiosoite] [varchar](50) NULL,
	[postinumero] [varchar](50) NULL,
	[puhelin] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_Pelaaja] PRIMARY KEY CLUSTERED 
(
	[pelaaja_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peli]    Script Date: 25.5.2023 20.58.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peli](
	[peli_id] [int] NOT NULL,
	[nimi] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[peli_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tulos]    Script Date: 25.5.2023 20.58.26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tulos](
	[tulos_id] [nchar](10) NOT NULL,
	[peli_id] [int] NOT NULL,
	[pelaaja_id] [int] NOT NULL,
	[tulos] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tulos] PRIMARY KEY CLUSTERED 
(
	[tulos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tulos]  WITH CHECK ADD  CONSTRAINT [FK_Pelaaja_id] FOREIGN KEY([pelaaja_id])
REFERENCES [dbo].[Pelaaja] ([pelaaja_id])
GO
ALTER TABLE [dbo].[Tulos] CHECK CONSTRAINT [FK_Pelaaja_id]
GO
ALTER TABLE [dbo].[Tulos]  WITH CHECK ADD  CONSTRAINT [FK_Tulos_Peli] FOREIGN KEY([peli_id])
REFERENCES [dbo].[Peli] ([peli_id])
GO
ALTER TABLE [dbo].[Tulos] CHECK CONSTRAINT [FK_Tulos_Peli]
GO
