USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[UDC]    Script Date: 5/14/2018 11:35:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UDC](
	[XRefId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [varchar](20) NULL,
	[KeyCode] [varchar](50) NULL,
	[Value] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[XRefId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
