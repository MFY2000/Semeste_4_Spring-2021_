//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WEBAPP_portfolioMaker.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Licence
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Licence()
        {
            this.admin_users = new HashSet<admin_users>();
        }
    
        public string user_id { get; set; }
        public int LKey { get; set; }
        public string ExpireDate { get; set; }
        public string IssueDate { get; set; }
        public int LStatus { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<admin_users> admin_users { get; set; }
    }
}
