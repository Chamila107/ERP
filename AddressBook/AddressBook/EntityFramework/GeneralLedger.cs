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
    
    public partial class GeneralLedger
    {
        public long Id { get; set; }
        public long DocNumber { get; set; }
        public string DocType { get; set; }
        public decimal Amount { get; set; }
        public string LedgerType { get; set; }
        public System.DateTime GLDate { get; set; }
        public long AccountId { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public long AddressId { get; set; }
        public string Comment { get; set; }
    }
}
