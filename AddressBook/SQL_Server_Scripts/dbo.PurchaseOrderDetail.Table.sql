USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 5/14/2018 11:35:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[PurchaseOrderDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderId] [bigint] NOT NULL,
	[Amount] [decimal](18, 4) NULL,
	[OrderedQuantity] [decimal](18, 4) NULL,
	[ItemId] [bigint] NOT NULL,
	[UnitPrice] [decimal](18, 4) NULL,
	[UnitOfMeasure] [varchar](10) NULL,
	[VendorAddressId] [bigint] NULL,
	[ReceivedDate] [date] NULL,
	[ExpectedDeliveryDate] [date] NULL,
	[OrderDate] [date] NULL,
	[ReceivedQuantity] [int] NULL,
	[RemainingQuantity] [int] NULL,
 CONSTRAINT [PK_PurchaseOrderDetail] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
