USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[GeneralLedger]    Script Date: 5/14/2018 11:35:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralLedger](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DocNumber] [bigint] NOT NULL,
	[DocType] [varchar](10) NOT NULL,
	[Amount] [money] NOT NULL,
	[LedgerType] [varchar](10) NOT NULL,
	[GLDate] [datetime] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[Comment] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[GeneralLedger]  WITH CHECK ADD  CONSTRAINT [FK_GeneralLedger_ChartOfAccts] FOREIGN KEY([AccountId])
REFERENCES [dbo].[ChartOfAccts] ([AccountId])
GO
ALTER TABLE [dbo].[GeneralLedger] CHECK CONSTRAINT [FK_GeneralLedger_ChartOfAccts]
GO
