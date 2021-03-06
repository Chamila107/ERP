USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[ScheduleEvent]    Script Date: 4/16/2018 6:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleEvent](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeAddressId] [bigint] NULL,
	[EventDateTime] [datetime] NULL,
	[ServiceId] [bigint] NULL,
	[DurationMinutes] [bigint] NULL,
	[CustomerAddressId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[ScheduleEvent]  WITH CHECK ADD FOREIGN KEY([CustomerAddressId])
REFERENCES [dbo].[AddressBook] ([AddressId])
GO
ALTER TABLE [dbo].[ScheduleEvent]  WITH CHECK ADD FOREIGN KEY([EmployeeAddressId])
REFERENCES [dbo].[AddressBook] ([AddressId])
GO
ALTER TABLE [dbo].[ScheduleEvent]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[ServiceInformation] ([ServiceId])
GO
