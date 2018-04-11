//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class PurchaseOrder
    {
        public long Id { get; set; }
        public string POType { get; set; }
        public string PaymentTerms { get; set; }
        public Nullable<decimal> GrossAmount { get; set; }
        public string Remark { get; set; }
        public Nullable<System.DateTime> GLDate { get; set; }
        public string AccountNumber { get; set; }
        public Nullable<long> SupplierAddressId { get; set; }
        public Nullable<long> CustomerAddressId { get; set; }
        public Nullable<long> ContractId { get; set; }
        public Nullable<long> POQuoteId { get; set; }
        public string Description { get; set; }
        public Nullable<long> ItemNumber { get; set; }
        public string PONumber { get; set; }
        public Nullable<int> Quantity { get; set; }
        public string Unit { get; set; }
    }
}
