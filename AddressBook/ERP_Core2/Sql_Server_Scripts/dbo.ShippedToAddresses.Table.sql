USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[ShippedToAddresses]    Script Date: 4/16/2018 6:54:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippedToAddresses](
	[ShippedToAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[ShipToAddressLine1] [varchar](100) NULL,
	[ShipToAddressLine2] [varchar](100) NULL,
	[ShipToState] [varchar](50) NULL,
	[ShipToCity] [varchar](50) NULL,
	[ShipToZipcode] [varchar](50) NULL,
 CONSTRAINT [PK_ShipToAddresses] PRIMARY KEY CLUSTERED 
(
	[ShippedToAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[ShippedToAddresses]  WITH CHECK ADD  CONSTRAINT [FK_ShippedToAddresses_AddressBook] FOREIGN KEY([AddressId])
REFERENCES [dbo].[AddressBook] ([AddressId])
GO
ALTER TABLE [dbo].[ShippedToAddresses] CHECK CONSTRAINT [FK_ShippedToAddresses_AddressBook]
GO
