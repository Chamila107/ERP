USE [listensoftwareDB]
GO
/****** Object:  Table [dbo].[Budget]    Script Date: 5/14/2018 11:35:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Budget](
	[BudgetId] [bigint] IDENTITY(1,1) NOT NULL,
	[BudgetHours] [decimal](18, 1) NULL,
	[BudgetAmount] [decimal](18, 4) NULL,
	[ActualHours] [decimal](18, 2) NULL,
	[ActualAmount] [decimal](18, 4) NULL,
	[AccountId] [bigint] NULL,
	[RangeId] [bigint] NULL,
	[ProjectedHours] [decimal](18, 1) NULL,
	[ProjectedAmount] [decimal](18, 4) NULL,
 CONSTRAINT [PK_Budget] PRIMARY KEY CLUSTERED 
(
	[BudgetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[Budget]  WITH CHECK ADD  CONSTRAINT [FK_Budget_BudgetRange] FOREIGN KEY([RangeId])
REFERENCES [dbo].[BudgetRange] ([RangeId])
GO
ALTER TABLE [dbo].[Budget] CHECK CONSTRAINT [FK_Budget_BudgetRange]
GO
ALTER TABLE [dbo].[Budget]  WITH CHECK ADD  CONSTRAINT [FK_Budget_ChartOfAccts] FOREIGN KEY([AccountId])
REFERENCES [dbo].[ChartOfAccts] ([AccountId])
GO
ALTER TABLE [dbo].[Budget] CHECK CONSTRAINT [FK_Budget_ChartOfAccts]
GO
ALTER TABLE [dbo].[Budget]  WITH CHECK ADD  CONSTRAINT [FK_BudgetSnapShot_BudgetRange] FOREIGN KEY([RangeId])
REFERENCES [dbo].[BudgetRange] ([RangeId])
GO
ALTER TABLE [dbo].[Budget] CHECK CONSTRAINT [FK_BudgetSnapShot_BudgetRange]
GO
ALTER TABLE [dbo].[Budget]  WITH CHECK ADD  CONSTRAINT [FK_BudgetSnapShot_ChartOfAccts] FOREIGN KEY([AccountId])
REFERENCES [dbo].[ChartOfAccts] ([AccountId])
GO
ALTER TABLE [dbo].[Budget] CHECK CONSTRAINT [FK_BudgetSnapShot_ChartOfAccts]
GO
