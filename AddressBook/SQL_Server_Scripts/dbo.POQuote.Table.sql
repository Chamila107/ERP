USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[POQuote]    Script Date: 5/14/2018 11:35:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POQuote](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[QuoteAmount] [money] NULL,
	[SubmittedDate] [date] NULL,
	[PoId] [bigint] NOT NULL,
	[DocNumber] [bigint] NOT NULL,
	[Remarks] [varchar](255) NULL,
	[CustomerAddressId] [bigint] NOT NULL,
	[VendorAddressId] [bigint] NOT NULL,
	[SKU] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[POQuote]  WITH CHECK ADD  CONSTRAINT [FK_Customer] FOREIGN KEY([CustomerAddressId])
REFERENCES [dbo].[AddressBook] ([AddressId])
GO
ALTER TABLE [dbo].[POQuote] CHECK CONSTRAINT [FK_Customer]
GO
ALTER TABLE [dbo].[POQuote]  WITH CHECK ADD  CONSTRAINT [FK_Vendor] FOREIGN KEY([VendorAddressId])
REFERENCES [dbo].[AddressBook] ([AddressId])
GO
ALTER TABLE [dbo].[POQuote] CHECK CONSTRAINT [FK_Vendor]
GO
