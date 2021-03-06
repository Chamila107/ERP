USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 5/14/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[PurchaseOrderId] [bigint] IDENTITY(1,1) NOT NULL,
	[POType] [varchar](10) NULL,
	[PaymentTerms] [varchar](10) NULL,
	[GrossAmount] [money] NULL,
	[Remark] [varchar](max) NULL,
	[GLDate] [datetime] NULL,
	[AccountNumber] [varchar](100) NULL,
	[SupplierAddressId] [bigint] NULL,
	[CustomerAddressId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[POQuoteId] [bigint] NULL,
	[Description] [varchar](1000) NULL,
	[ItemId] [bigint] NULL,
	[PONumber] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[UnitOfMeasure] [nchar](50) NULL,
	[TakenBy] [nchar](10) NULL,
	[ShippedToAddressId] [bigint] NULL,
	[BuyerAddressId] [bigint] NULL,
	[RequestedDate] [date] NULL,
	[PromisedDeliveredDate] [date] NULL,
	[Tax] [decimal](18, 4) NULL,
	[TaxCode] [varchar](10) NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
