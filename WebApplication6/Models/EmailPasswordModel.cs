using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication6.Models
{
    public class EmailPasswordModel
    {
        public string password { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
    }
}