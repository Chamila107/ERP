USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[SalesOrderDetail]    Script Date: 5/14/2018 11:35:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetail](
	[SalesOrderDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[SalesOrderId] [bigint] NOT NULL,
	[ItemId] [bigint] NOT NULL,
	[Description] [varchar](255) NULL,
	[Quantity] [int] NULL,
	[Amount] [decimal](18, 4) NULL,
	[UnitOfMeasure] [varchar](10) NULL,
	[UnitPrice] [decimal](18, 4) NULL,
	[InvoiceDetailId] [bigint] NULL,
 CONSTRAINT [PK_SalesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[SalesOrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[SalesOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderDetail_SalesOrder] FOREIGN KEY([SalesOrderId])
REFERENCES [dbo].[SalesOrder] ([SalesOrderId])
GO
ALTER TABLE [dbo].[SalesOrderDetail] CHECK CONSTRAINT [FK_SalesOrderDetail_SalesOrder]
GO
