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
    
    public partial class Sys_TestSectionQuestion
    {
        public string Question_ID { get; set; }
        public string Answer_ID { get; set; }
        public string Question_Name { get; set; }
        public Nullable<bool> IsSupper { get; set; }
        public Nullable<bool> IsOK { get; set; }
    
        public virtual Sys_TestSectionAnswer Sys_TestSectionAnswer { get; set; }
    }
}
