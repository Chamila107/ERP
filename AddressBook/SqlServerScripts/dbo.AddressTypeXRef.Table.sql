USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[AddressTypeXRef]    Script Date: 4/16/2018 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressTypeXRef](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EntityType] [varchar](50) NULL,
	[AddressId] [bigint] NULL,
 CONSTRAINT [PK_AddressTypeXRef] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
