USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 5/14/2018 11:35:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[SalesOrderId] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[Amount] [decimal](18, 4) NULL,
	[OrderNumber] [varchar](20) NULL,
	[OrderType] [varchar](10) NULL,
	[CustomerAddressId] [bigint] NULL,
	[BillToAddressId] [bigint] NULL,
	[DeliveredToAddressId] [bigint] NULL,
	[ShippedToAddressId] [bigint] NULL,
	[InvoiceId] [bigint] NULL,
	[TakenBy] [nchar](10) NULL,
	[UnitOfMeasure] [nchar](10) NULL,
	[FreightAmount] [decimal](18, 4) NULL,
	[CarrierAddressId] [bigint] NULL,
	[BuyerAddressId] [bigint] NULL,
	[PaymentInstrument] [nchar](10) NULL,
	[PaymentTerms] [varchar](10) NULL,
	[TransactionDate] [date] NULL,
	[ScheduledPickupDate] [datetime] NULL,
	[ActualPickupDate] [datetime] NULL,
 CONSTRAINT [PK_SalesOrder] PRIMARY KEY CLUSTERED 
(
	[SalesOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
