using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FindLosts.Models;

namespace FindLosts.Controllers
{
    public class TerminalGuestController : Controller
    {
        //
        // GET: /TerminalGuest/

        public ActionResult CreateFoundEntry()
        {
            LostsEntries lost = new LostsEntries();
            var result = lost.GetAllLosts().Data;
            ViewBag.losts = result;
            return View();
        }
        public ActionResult CreateLost()
        {
            return View();
        }
        public ActionResult SearchLosts()
        {
            return View();
        }

        public string CreateNewLost(DateTime _LostDate, string _LostPlace, string _LostName, string _Description, string _Phone, string _OwnerName)
        {
            LostsEntries lost = new LostsEntries();
            lost.LostDate = _LostDate;
            lost.LostPlace = _LostPlace;
            lost.Name = _LostName;
            lost.Description = _Description;
            lost.OwnerPhone = _Phone;
            lost.OwnerName = _OwnerName;
            lost.Status = 0;
            Random r = new Random();
            int num1 = r.Next(1000, 9999);
            int num2 = r.Next(1000, 9999);
            //lost.Code =(num1.ToString()+"-"+num2.ToString());
            return lost.CreateLostEntry().Message.ShowMessage();
        }
    }
}
