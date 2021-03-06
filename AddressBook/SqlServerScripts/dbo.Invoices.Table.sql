USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 4/16/2018 6:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[InvoiceId] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [varchar](20) NULL,
	[InvoiceDate] [date] NULL,
	[Amount] [decimal](18, 4) NULL,
	[BillToAddressId] [bigint] NULL,
	[Description] [varchar](2000) NULL,
	[TaxAmount] [decimal](18, 4) NULL,
	[PaymentDueDate] [date] NULL,
	[PaymentTerms] [varchar](10) NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
