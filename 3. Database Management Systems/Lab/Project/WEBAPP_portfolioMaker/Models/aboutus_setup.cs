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
    
    public partial class aboutus_setup
    {
        public string user_id { get; set; }
        public string dob { get; set; }
        public string shortdesc { get; set; }
        public string heading { get; set; }
        public string subheading { get; set; }
        public string longdesc { get; set; }
        public string website { get; set; }
    
        public virtual admin_users admin_users { get; set; }
    }
}
