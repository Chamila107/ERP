USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[AddressBook]    Script Date: 5/14/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressBook](
	[AddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Company] [varchar](255) NULL,
	[MailingCity] [varchar](50) NULL,
	[MailingState] [varchar](50) NULL,
	[MailingAddress] [varchar](255) NULL,
	[MailingZipcode] [varchar](50) NULL,
	[BillingCity] [varchar](50) NULL,
	[BillingState] [varchar](50) NULL,
	[BillingZipcode] [varchar](50) NULL,
	[BillingAddress] [varchar](255) NULL,
	[Type] [varchar](20) NULL,
	[PeopleXrefId] [bigint] NULL,
	[ProductKey] [varchar](100) NULL,
	[Fax] [varchar](50) NULL,
	[PrimaryShippedToAddressId] [bigint] NULL,
	[PrimaryEmailId] [bigint] NULL,
	[PrimaryPhoneId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
