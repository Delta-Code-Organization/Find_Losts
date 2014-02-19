using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FindLosts.Controllers
{
    public class WebGuestController : Controller
    {
        //
        // GET: /WebGuest/

        public ActionResult CreateNewLost()
        {
            return View();
        }

        public ActionResult SearchLost()
        {
            return View();
        }
    }
}
