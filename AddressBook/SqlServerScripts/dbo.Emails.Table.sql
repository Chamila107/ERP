USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 4/16/2018 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emails](
	[EmailId] [bigint] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](20) NULL,
	[LoginEmail] [bit] NULL,
	[Email] [varchar](30) NOT NULL,
	[AddressId] [bigint] NOT NULL,
 CONSTRAINT [PK_Emails] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
