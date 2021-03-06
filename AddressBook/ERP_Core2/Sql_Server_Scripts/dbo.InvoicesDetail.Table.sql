USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[InvoicesDetail]    Script Date: 4/16/2018 6:54:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoicesDetail](
	[InvoiceDetailId] [bigint] NOT NULL,
	[InvoiceId] [bigint] NOT NULL,
	[UnitPrice] [decimal](18, 4) NULL,
	[Quantity] [int] NULL,
	[UnitOfMeasure] [varchar](10) NULL,
	[Amount] [decimal](18, 4) NULL,
	[PurchaseOrderLineId] [bigint] NULL,
	[SalesOrderDetailId] [bigint] NULL,
	[ItemId] [bigint] NULL,
	[DiscountPercent] [decimal](18, 4) NULL,
	[DiscountAmount] [decimal](18, 4) NULL,
	[ShipmentDetailId] [bigint] NULL,
 CONSTRAINT [PK_InvoiceLineDetail] PRIMARY KEY CLUSTERED 
(
	[InvoiceDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
