USE [listensoftwareDB]
GO
/****** Object:  View [dbo].[PurchaseOrderAndDetailView]    Script Date: 4/16/2018 6:54:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[PurchaseOrderAndDetailView]
as
select 
purchaseorder.potype,
purchaseorder.paymentterms,
purchaseorder.grossamount,
purchaseorder.remark,
purchaseorder.gldate,
purchaseorder.accountnumber,
purchaseorder.supplieraddressid,
purchaseorder.customerAddressid,
purchaseorder.contractid,
purchaseorder.poquoteid,
purchaseorder.description,
itemmaster.description itemdescription,
itemmaster.description2 itemdescription2,
supplier.suppliername,
supplier.suppliercompany
from purchaseorder purchaseorder
inner join itemmaster itemmaster on purchaseorder.itemid=itemmaster.itemid
outer apply
(select name suppliername, company suppliercompany from addressbook addressbook 
where purchaseorder.supplieraddressid=addressbook.addressid) supplier
GO
