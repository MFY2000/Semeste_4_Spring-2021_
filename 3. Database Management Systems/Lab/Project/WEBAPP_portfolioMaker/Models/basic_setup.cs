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
    
    public partial class basic_setup
    {
        public string user_id { get; set; }
        public int LKey { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string keyword { get; set; }
        public string icon { get; set; }
        public string Theme { get; set; }
    
        public virtual admin_users admin_users { get; set; }
        public virtual Theme Theme1 { get; set; }
    }
}
