using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FindLosts.Models
{
    public class Returner
    {
        public object Data { get; set;}
        public JsonResult DataInJson { get; set;}
        public Msgs Message { get; set;}
    }
}