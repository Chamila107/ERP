//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityFramework
{
    using System;
    using System.Collections.Generic;
    
    public partial class AcctRec
    {
        public long Id { get; set; }
        public string DocType { get; set; }
        public Nullable<decimal> OpenAmount { get; set; }
        public Nullable<System.DateTime> DiscountDueDate { get; set; }
        public Nullable<System.DateTime> GLDate { get; set; }
        public Nullable<System.DateTime> InvoiceDate { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<long> DocNumber { get; set; }
        public string Remarks { get; set; }
        public string NetTerms { get; set; }
        public long AddressId { get; set; }
        public Nullable<long> ItemId { get; set; }
        public string SKU { get; set; }
        public string Description { get; set; }
        public string PONumber { get; set; }
    }
}
