USE Asiakaspalvelu
GO

DROP DATABASE IF EXISTS kirjasto
GO

CREATE DATABASE kirjasto
GO

USE kirjasto
GO

CREATE TABLE [dbo].[kirjat] (
	[Id] int IDENTITY (1,1) PRIMARY KEY NOT NULL,
	[kirjan_nimi] nvarchar (64) NOT NULL,
	[kustantaja] nvarchar (64) NULL,
	[vuosi] int NULL,
	[sivu_maara] int NULL )
GO

INSERT INTO kirjat (kirjan_nimi, kustantaja, vuosi, sivu_maara) 
    VALUES
    ('Office 2016', 'Docendo', 2016, 300),
    ('Windows 10','Docendo', 2015, 310),
    ('Outoa ohjelmointia', 'Docendo', 2016, 192),
    ('iPad käsikirja', 'WSOY', 2016, 290),
	('Biteistä bisnestä', 'JKP', 2014, 237 )
GO



	SELECT kirjan_nimi, kustantaja
	FROM kirjat WHERE kustantaja = 'Docendo';
	GO

	SELECT kirjan_nimi, kustantaja
	FROM kirjat WHERE kustantaja != 'Docendo';
	GO

	SELECT kirjan_nimi, sivu_maara
	FROM kirjat WHERE sivu_maara BETWEEN 200 AND 295;
	GO

	SELECT kirjan_nimi, kustantaja
	FROM kirjat WHERE kustantaja = 'Docendo' AND vuosi = 2015;
	GO

	SELECT kirjan_nimi, kustantaja, vuosi, sivu_maara
	FROM kirjat WHERE vuosi <= 2015;
	GO