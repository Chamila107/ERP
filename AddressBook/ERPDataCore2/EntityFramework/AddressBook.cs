//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ERPDataCore.EntityFramework
{
    using System;
    using System.Collections.Generic;
    
    public partial class AddressBook
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AddressBook()
        {
            this.ScheduleEvents = new HashSet<ScheduleEvent>();
            this.ScheduleEvents1 = new HashSet<ScheduleEvent>();
            this.ServiceInformations = new HashSet<ServiceInformation>();
            this.POQuotes = new HashSet<POQuote>();
            this.POQuotes1 = new HashSet<POQuote>();
        }
    
        public long AddressId { get; set; }
        public string Name { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Company { get; set; }
        public string CellPhone { get; set; }
        public string MailingCity { get; set; }
        public string MailingState { get; set; }
        public string MailingAddress { get; set; }
        public string MailingZipcode { get; set; }
        public string BillingCity { get; set; }
        public string BillingState { get; set; }
        public string BillingZipcode { get; set; }
        public string BillingAddress { get; set; }
        public string Type { get; set; }
        public Nullable<long> PeopleXrefId { get; set; }
        public string ProductKey { get; set; }
        public string Email { get; set; }
        public string Fax { get; set; }
        public string ShippingAddress { get; set; }
        public string ShippingCity { get; set; }
        public string ShippingZipcode { get; set; }
        public string ShippingState { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScheduleEvent> ScheduleEvents { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScheduleEvent> ScheduleEvents1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ServiceInformation> ServiceInformations { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<POQuote> POQuotes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<POQuote> POQuotes1 { get; set; }
    }
}
