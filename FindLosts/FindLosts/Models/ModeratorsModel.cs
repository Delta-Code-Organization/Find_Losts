using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FindLosts.Models
{
    public partial class Moderators
    {
        FindLostsDBEntities db = new FindLostsDBEntities();
        public Returner Login()
        {
            var exist =db.Moderators.Any(p=>p.Password==this.Password&&p.UserName==this.UserName);
            var moderator=db.Moderators.Where(p=>p.Password==this.Password&&p.UserName==this.UserName).SingleOrDefault();
            if (exist == true)
            {
                return new Returner
                {
                    Data = moderator,
                    Message = Msgs.Successfuk_Login
                };
            }
            return new Returner
            {
                Message = Msgs.Wrong_Name_Or_Password
            };
        }
        public Returner CreateAdmin()
        {
            var exist =db.Moderators.Any(p=>p.UserName==this.UserName);
            if (exist == true)
            {
                return new Returner
                {
                    Message = Msgs.User_Name_Duplicated
                };
            }
            db.Moderators.Add(this);
            db.SaveChanges();
            var createdModeratio=db.Moderators.OrderByDescending(p=>p.ID).FirstOrDefault();
            return new Returner
            {
                Data = createdModeratio,
                Message = Msgs.Moderator_Created_Successfully
            };
        }

        public Returner UpdateAdmins()
        {
            var moderator =db.Moderators.Where(p => p.ID == this.ID).SingleOrDefault();
            moderator.UserName = this.UserName;
            moderator.Password = this.Password;
            moderator.Status = this.Status;
            db.SaveChanges();
            var updatedModerator=db.Moderators.Where(p => p.ID == this.ID).SingleOrDefault();
            return new Returner
            {
                Data = updatedModerator,
                Message = Msgs.Moderator_Updated_Successfully
            };
        }

        public Returner DeleteAdmins()
        {
            var moderator = db.Moderators.Where(p => p.ID == this.ID).SingleOrDefault();
            db.Moderators.Remove(moderator);
            db.SaveChanges();
            return new Returner
            {
                Message = Msgs.Moderator_Deleted_Successfully
            };
        }
    }
}