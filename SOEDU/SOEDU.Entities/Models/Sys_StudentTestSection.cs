//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SOEDU.Entities.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sys_StudentTestSection
    {
        public string User_ID { get; set; }
        public string TestSection_ID { get; set; }
        public Nullable<System.DateTime> IsDate { get; set; }
        public string IsGetTime { get; set; }
    
        public virtual Sys_TestSection Sys_TestSection { get; set; }
        public virtual Sys_Users Sys_Users { get; set; }
    }
}
