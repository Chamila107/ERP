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
    
    public partial class ScheduleEvent
    {
        public long Id { get; set; }
        public Nullable<long> EmployeeAddressId { get; set; }
        public Nullable<System.DateTime> EventDateTime { get; set; }
        public Nullable<long> ServiceId { get; set; }
        public Nullable<long> DurationMinutes { get; set; }
        public Nullable<long> CustomerAddressId { get; set; }
    
        public virtual AddressBook AddressBook { get; set; }
        public virtual AddressBook AddressBook1 { get; set; }
        public virtual ServiceInformation ServiceInformation { get; set; }
    }
}
