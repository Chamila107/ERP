﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MillenniumERP.EntityFramework
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AcctPay> AcctPays { get; set; }
        public virtual DbSet<AcctRec> AcctRecs { get; set; }
        public virtual DbSet<AddressBook> AddressBooks { get; set; }
        public virtual DbSet<AddressTypeXRef> AddressTypeXRefs { get; set; }
        public virtual DbSet<Budget> Budgets { get; set; }
        public virtual DbSet<BudgetRange> BudgetRanges { get; set; }
        public virtual DbSet<ChartOfAcct> ChartOfAccts { get; set; }
        public virtual DbSet<Contract> Contracts { get; set; }
        public virtual DbSet<GeneralLedger> GeneralLedgers { get; set; }
        public virtual DbSet<Inventory> Inventories { get; set; }
        public virtual DbSet<Invoice> Invoices { get; set; }
        public virtual DbSet<ItemMaster> ItemMasters { get; set; }
        public virtual DbSet<POQuote> POQuotes { get; set; }
        public virtual DbSet<PurchaseOrder> PurchaseOrders { get; set; }
        public virtual DbSet<SalesOrder> SalesOrders { get; set; }
        public virtual DbSet<SalesOrderDetail> SalesOrderDetails { get; set; }
        public virtual DbSet<ScheduleEvent> ScheduleEvents { get; set; }
        public virtual DbSet<ServiceInformation> ServiceInformations { get; set; }
        public virtual DbSet<UDC> UDCs { get; set; }
        public virtual DbSet<InvoicesDetail> InvoicesDetails { get; set; }
        public virtual DbSet<PurchaseOrderDetail> PurchaseOrderDetails { get; set; }
        public virtual DbSet<Email> Emails { get; set; }
        public virtual DbSet<Phone> Phones { get; set; }
        public virtual DbSet<Shipment> Shipments { get; set; }
        public virtual DbSet<ShipmentsDetail> ShipmentsDetails { get; set; }
        public virtual DbSet<ShippedToAddress> ShippedToAddresses { get; set; }
        public virtual DbSet<BudgetSnapShot> BudgetSnapShots { get; set; }
        public virtual DbSet<AccountBalance> AccountBalances { get; set; }
    }
}
