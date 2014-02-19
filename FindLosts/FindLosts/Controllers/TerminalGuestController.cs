using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FindLosts.Controllers
{
    public class TerminalGuestController : Controller
    {
        //
        // GET: /TerminalGuest/

        public ActionResult CreateFoundEntry()
        {
            return View();
        }
    }
}
