using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FindLosts.Models;

namespace FindLosts.Controllers
{
    public class ModeratorController : Controller
    {
        //
        // GET: /Moderator/

        public ActionResult Login()
        {
            return View();
        }
        public ActionResult CreateAdmin()
        {
            return View();
        }
        public ActionResult ManageAdmins()
        {
            return View();
        }
        public ActionResult SearchLosts()
        {
            return View();
        }
        public ActionResult ManageLosts()
        {
            return View();
        }
        public ActionResult CreateLost()
        {
            return View();
        }
    }
}
