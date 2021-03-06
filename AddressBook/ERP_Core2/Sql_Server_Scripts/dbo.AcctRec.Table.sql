USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[AcctRec]    Script Date: 4/16/2018 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcctRec](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DocType] [varchar](10) NULL,
	[OpenAmount] [money] NULL,
	[DiscountDueDate] [date] NULL,
	[GLDate] [date] NULL,
	[InvoiceDate] [date] NULL,
	[CreateDate] [date] NULL,
	[DocNumber] [bigint] NULL,
	[Remarks] [varchar](255) NULL,
	[NetTerms] [varchar](10) NULL,
	[AddressId] [bigint] NOT NULL,
	[ItemId] [bigint] NULL,
	[SKU] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
	[PONumber] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
