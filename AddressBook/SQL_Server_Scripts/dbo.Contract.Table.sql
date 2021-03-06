USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 5/14/2018 11:35:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[ContractId] [bigint] IDENTITY(1,1) NOT NULL,
	[AddressId] [bigint] NULL,
	[ServiceTypeXRefId] [bigint] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Cost] [money] NULL,
	[RemainingBalance] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
