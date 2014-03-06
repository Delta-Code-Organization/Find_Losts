using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace FindLosts.Models
{
    public static class Extensions
    {
        public static string ShowMessage(this Msgs msg)
        {
            return msg.ToString().Replace("_"," ");
        }
        public static string ShowStatus(this string msg)
        {
            return msg.ToString().Replace("_", " ");
        }

        public static JsonResult ToJson(this object obj)
        {
            JsonResult JR = new JsonResult
            {
                Data = obj,
                JsonRequestBehavior = JsonRequestBehavior.AllowGet
            };
            return JR;
        }
    }
}