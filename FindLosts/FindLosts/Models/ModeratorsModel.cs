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
                    DataInJson =moderator.ToJson(),
                    Message = Msgs.Successful_Login
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
            var createdModerator=db.Moderators.OrderByDescending(p=>p.ID).FirstOrDefault();
            return new Returner
            {
                DataInJson=createdModerator.ToJson(),
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
                DataInJson=updatedModerator.ToJson(),
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

        public Returner GetAllModerators()
        {
            var all = db.Moderators.OrderBy(p => p.ID).ToList();
            return new Returner
            {
                Data = all
            };
        }
        public Returner GetModerator()
        {
            var moderator = db.Moderators.Where(p => p.ID == this.ID).SingleOrDefault();
            return new Returner
            {
                Data = moderator
            };
        }
    }
}