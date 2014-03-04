﻿using System;
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
            moderator.Status =1;
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

        public string UpdateModerator(string _Name,string _Password)
        {
            Moderators moderator = new Moderators();
            moderator.ID =(int)TempData["ID"];
            TempData.Keep();
            moderator.UserName = _Name;
            moderator.Password=_Password;
            //moderator.Status =
          return  moderator.UpdateAdmins().Message.ShowMessage();
        }

        public string LoginModerator(string _Password,string _Name) {
            Moderators moderator = new Moderators();
            moderator.Password = _Password;
            moderator.UserName = _Name;
            var msg=moderator.Login();
            if (msg.Message.ShowMessage() == "تم تسجيل الدخول بنجاح")
            {
                Session["Admin"] = msg.Data;
                return msg.Message.ShowMessage();
            }
            return msg.Message.ShowMessage();
        }
        public JsonResult SearchResult(string _Name,string _Code)
        {
            LostsEntries lost = new LostsEntries();
            if (_Name != "" && _Code == "")
            {
                lost.Name = _Name;
             return lost.SearchLostsByName().DataInJson;
            }
            if (_Name == "" && _Code != "")
            {
                lost.Code=_Code;
                return lost.SearchLostsByCode().DataInJson;
            }
            if (_Name != "" && _Code != "")
            {
                lost.Name = _Name;
                lost.Code = _Code;
                return lost.SearchLostsByNameAndCode().DataInJson;
            }
            return new JsonResult();
        }
    }
}
