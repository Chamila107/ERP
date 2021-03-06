USE [listensoftwareDB]
GO
/****** Object:  View [dbo].[SalesOrderAndInvoiceView]    Script Date: 5/14/2018 11:35:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[SalesOrderAndInvoiceView]
as
select 
invoices.InvoiceId
,invoices.InvoiceNumber
,invoices.Amount
,invoices.BillToAddressId
,invoices.Description InvoiceDescription
,invoices.TaxAmount
,invoices.PaymentDueDate
,invoices.PaymentTerms 

,salesorder.quantity
,salesorder.amount SalesOrderAmount
,salesorder.ordernumber
,salesorder.ordertype
,salesorder.CustomerAddressId
,salesorder.DeliveredToAddressId
,salesorder.ShippedToAddressId
,salesorder.TakenBy
,salesorder.UnitOfMeasure
,salesorder.FreightAmount
,salesorder.CarrierAddressId
,salesorder.BuyerAddressId
,salesorder.PaymentInstrument
,salesorder.TransactionDate
,salesorder.ScheduledPickupDate
,salesorder.ActualPickupDate


from salesorder salesorder
left join invoices invoices on salesorder.invoiceid=invoices.invoiceid
GO
