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
    
    public partial class Sys_TestSectionAnswer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sys_TestSectionAnswer()
        {
            this.Sys_TestSectionQuestion = new HashSet<Sys_TestSectionQuestion>();
        }
    
        public string Answer_ID { get; set; }
        public string TestSection_ID { get; set; }
        public string Answer_Name { get; set; }
    
        public virtual Sys_TestSection Sys_TestSection { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sys_TestSectionQuestion> Sys_TestSectionQuestion { get; set; }
    }
}
