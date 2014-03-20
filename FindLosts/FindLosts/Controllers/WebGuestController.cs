using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FindLosts.Models;
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
            LostsEntries lost = new LostsEntries();
            var result = lost.GetAllLosts().Data;
            ViewBag.losts = result;
            return View();
        }

        public JsonResult CreateNewEntry(DateTime _LostDate, string _LostPlace, string _LostName, string _Description, string _Phone, string _OwnerName)
        {
            LostsEntries lost = new LostsEntries();
            lost.LostDate = _LostDate;
            lost.LostPlace = _LostPlace;
            lost.Name = _LostName;
            lost.Description = _Description;
            lost.OwnerPhone = _Phone;
            lost.OwnerName = _OwnerName;
            lost.Status = 0;
            return lost.CreateLostEntry().DataInJson;
        }
        public JsonResult EntriesSearch(string _Code)
        {
            LostsEntries lost = new LostsEntries();
            lost.Code = _Code;
            var res = lost.SearchLostsByCode();
            if (res.Data == null)
            {
                return Json("لا يوجد نتائج للبحث");
            }
            return res.DataInJson; 
        }
    }
}
