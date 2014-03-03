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
            Moderators moderator = new Moderators();
           var result =moderator.GetAllModerators().Data;
           ViewBag.moderators = result;
            return View();
        }
        public ActionResult SearchLosts()
        {
            LostsEntries lost = new LostsEntries();
            var result = lost.GetAllLosts().Data;
            ViewBag.losts = result;
            return View();
        }
        public ActionResult ManageLosts()
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
        public ActionResult UpdateAdmin(int _ID)
        {
            Moderators moderator = new Moderators();
            moderator.ID = _ID;
            var result=moderator.GetModerator().Data;
            ViewBag.moderator = result;
            TempData["ID"] = (result as Moderators).ID;
            TempData.Keep();
            return View();
        }

        public string CreateNewAdmin(string _Name, string _Password)
        {
            Moderators moderator = new Moderators();
            moderator.UserName = _Name;
            moderator.Password = _Password;
            moderator.Status = 0;
         return moderator.CreateAdmin().Message.ShowMessage();
        }

        public string CreateLosts(DateTime _LostDate, string _LostPlace, string _LostName, string _Description, string _Phone, string _OwnerName)
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
            int num1 =r.Next(1000, 9999);
            int num2 =r.Next(1000, 9999);
            lost.Code =(num1.ToString()+"-"+num2.ToString());
          return lost.CreateLostEntry().Message.ShowMessage();
        }

        public string DeleteLost(int _ID)
        {
            LostsEntries lost = new LostsEntries();
            lost.ID = _ID;
          return lost.DeleteLostEntry().Message.ShowMessage();
        }

        public string SetLost(int _ID)
        {
            LostsEntries lost = new LostsEntries();
            lost.ID = _ID;
            return lost.SetLost().Message.ShowMessage();
        }

        public string DeletingAdmin(int _ID)
        {
            Moderators moderator = new Moderators();
            moderator.ID = _ID;
          return moderator.DeleteAdmins().Message.ShowMessage();
        }

        public string UpdateModerator(string _Name,string _Password,string _Status)
        {
            Moderators moderator = new Moderators();
            moderator.ID =(int)TempData["ID"];
            TempData.Keep();
            moderator.UserName = _Name;
            moderator.Status = (int)Enum.Parse(typeof(ModeratorStatus),_Status);
            moderator.Password=_Password;
            //moderator.Status =
          return  moderator.UpdateAdmins().Message.ShowMessage();
        }

        public string LoginModerator(string _Password,string _Name) {
            Moderators moderator = new Moderators();
            moderator.Password = _Password;
            moderator.UserName = _Name;
         return moderator.Login().Message.ShowMessage();
        }
    }
}
