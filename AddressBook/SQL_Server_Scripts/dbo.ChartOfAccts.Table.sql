USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[ChartOfAccts]    Script Date: 5/14/2018 11:35:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartOfAccts](
	[AccountId] [bigint] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](10) NULL,
	[BusUnit] [varchar](10) NULL,
	[Subsidiary] [varchar](10) NULL,
	[SubSub] [varchar](10) NULL,
	[Account] [varchar](10) NULL,
	[Description] [varchar](255) NULL,
	[CompanyNumber] [varchar](10) NULL,
	[GenCode] [varchar](3) NULL,
	[SubCode] [varchar](3) NULL,
	[ObjectNumber] [varchar](10) NULL,
	[SupCode] [varchar](10) NULL,
	[ThirdAccount] [varchar](20) NULL,
	[CategoryCode1] [varchar](10) NULL,
	[CategoryCode2] [varchar](10) NULL,
	[CategoryCode3] [varchar](10) NULL,
	[PostEditCode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
