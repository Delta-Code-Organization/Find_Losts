using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FindLosts.Models
{
    public static class Extensions
    {
        public static string ShowMessage(this Msgs msg)
        {
            return msg.ToString().Replace("_","");
        }
    }
}