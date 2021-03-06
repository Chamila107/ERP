USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[Phones]    Script Date: 5/14/2018 11:35:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phones](
	[PhoneId] [bigint] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [varchar](50) NULL,
	[PhoneType] [varchar](10) NULL,
	[Extension] [varchar](10) NULL,
	[AddressId] [bigint] NOT NULL,
 CONSTRAINT [PK_Phones] PRIMARY KEY CLUSTERED 
(
	[PhoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[Phones]  WITH CHECK ADD  CONSTRAINT [FK_Phones_AddressBook] FOREIGN KEY([AddressId])
REFERENCES [dbo].[AddressBook] ([AddressId])
GO
ALTER TABLE [dbo].[Phones] CHECK CONSTRAINT [FK_Phones_AddressBook]
GO
