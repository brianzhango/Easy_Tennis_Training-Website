
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/14/2020 22:02:32
-- Generated from EDMX file: F:\5032\ETT\Models\ETTModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-ETT-20200914024741];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Courses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Courses];
GO
IF OBJECT_ID(N'[dbo].[Articles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Articles];
GO
IF OBJECT_ID(N'[dbo].[SignUps]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SignUps];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Courses'
CREATE TABLE [dbo].[Courses] (
    [courseId] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [tutor] nvarchar(max)  NOT NULL,
    [level] nvarchar(max)  NOT NULL,
    [price] nvarchar(max)  NOT NULL,
    [type] nvarchar(max)  NOT NULL,
    [startTime] nvarchar(max)  NOT NULL,
    [schedule] nvarchar(max)  NOT NULL,
    [rate] nvarchar(max)  NOT NULL,
    [longtitude] nvarchar(max)  NOT NULL,
    [latitude] nvarchar(max)  NOT NULL,
    [location] nvarchar(max)  NOT NULL,
    [url] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Articles'
CREATE TABLE [dbo].[Articles] (
    [articleId] int IDENTITY(1,1) NOT NULL,
    [author] nvarchar(max)  NOT NULL,
    [content] nvarchar(max)  NOT NULL,
    [postTime] nvarchar(max)  NOT NULL,
    [level] nvarchar(max)  NOT NULL,
    [url] nvarchar(max)  NOT NULL,
    [name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SignUps'
CREATE TABLE [dbo].[SignUps] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [cousreId] nvarchar(max)  NOT NULL,
    [userId] nvarchar(max)  NOT NULL,
    [dateTime] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [courseId] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [PK_Courses]
    PRIMARY KEY CLUSTERED ([courseId] ASC);
GO

-- Creating primary key on [articleId] in table 'Articles'
ALTER TABLE [dbo].[Articles]
ADD CONSTRAINT [PK_Articles]
    PRIMARY KEY CLUSTERED ([articleId] ASC);
GO

-- Creating primary key on [Id] in table 'SignUps'
ALTER TABLE [dbo].[SignUps]
ADD CONSTRAINT [PK_SignUps]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------