USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[Shipments]    Script Date: 5/14/2018 11:35:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments](
	[ShipmentId] [bigint] IDENTITY(1,1) NOT NULL,
	[ShipmentDate] [datetime] NULL,
	[BillToAddressId] [bigint] NOT NULL,
	[CarrierId] [bigint] NOT NULL,
	[TrackingNumber] [varchar](50) NULL,
	[ActualWeight] [decimal](18, 4) NULL,
	[BillableWeight] [decimal](18, 4) NULL,
	[Duty] [decimal](18, 4) NULL,
	[Tax] [decimal](18, 4) NULL,
	[ShippingCost] [decimal](18, 4) NULL,
	[Amount] [decimal](18, 4) NULL,
	[CodAmount] [decimal](18, 4) NULL,
	[ShippedFromId] [bigint] NOT NULL,
	[ShippedToAddressId] [bigint] NULL,
	[PurchaseOrderId] [bigint] NULL,
	[VendorInvoiceId] [bigint] NULL,
	[VendorShippingCost] [decimal](18, 4) NULL,
	[VendorHandlingCost] [decimal](18, 4) NULL,
 CONSTRAINT [PK_Shipments] PRIMARY KEY CLUSTERED 
(
	[ShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
