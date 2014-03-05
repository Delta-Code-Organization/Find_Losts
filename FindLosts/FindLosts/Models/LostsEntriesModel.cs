using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FindLosts.Models
{
    public partial class LostsEntries
    {
        FindLostsDBEntities db = new FindLostsDBEntities();
         public Returner SearchLostsByNameAndCode()
        {
            var exist = db.LostsEntries.Any(p => p.Code==this.Code && p.Name==this.Name);
            if (exist == true)
            {
                var lostEntry = db.LostsEntries.Where(p => p.Code == this.Code && p.Name == this.Name).SingleOrDefault();
                return new Returner
                {
                    Data=lostEntry,
                    DataInJson = lostEntry.ToJson()
                };
            }
            return new Returner
            {
                Message = Msgs.لا_يوجد_نتائج_مطابقه_للبحث
            };
        }

         public Returner DeleteLostEntry()
         {
             var lostEntry = db.LostsEntries.Where(p => p.ID == this.ID).SingleOrDefault();
             db.LostsEntries.Remove(lostEntry);
             db.SaveChanges();
             return new Returner
             {
                 Message = Msgs.تم_حذف_المفقود_بنجاح
             };
         }

         public Returner SetLost()
         {
             var lostEntry = db.LostsEntries.Where(p => p.ID == this.ID).SingleOrDefault();
             lostEntry.Status=1;
             db.SaveChanges();
             var updatedLostEntry = db.LostsEntries.Where(p => p.ID == this.ID).SingleOrDefault();
             return new Returner
             {
                 DataInJson=updatedLostEntry.ToJson(),
                 Message = Msgs.تم_تعديل_المفقود_بنجاح
             };
         }

          public Returner CreateLostEntry()
        {
            Random r = new Random();
            int num1 = r.Next(1000, 9999);
            int num2 = r.Next(1000, 9999);
            this.Code = (num1.ToString() + "-" + num2.ToString());
            var exist = db.LostsEntries.Any(p => p.Code == this.Code);
            if (exist == true)
            {
                CreateLostEntry();
            }
            db.LostsEntries.Add(this);
            db.SaveChanges();
            var createdLostEntry = db.LostsEntries.OrderByDescending(p => p.ID).FirstOrDefault();
            return new Returner
            {
                 DataInJson= createdLostEntry.ToJson(),
                Message = Msgs.تم_تسجيل_المفقود_بنجاح
            };
        }
          public Returner SearchLostsByName()
          {
              var exist = db.LostsEntries.Any(p => p.Name == this.Name);
              if (exist == true)
              {
                  var lostEntry = db.LostsEntries.Where(p =>  p.Name == this.Name).ToList();
                  return new Returner
                  {
                      Data=lostEntry,
                      DataInJson = lostEntry.ToJson()
                  };
              }
              return new Returner
              {
                  Message = Msgs.لا_يوجد_نتائج_مطابقه_للبحث
              };
          }

          public Returner SearchLostsByCode()
          {
              var exist = db.LostsEntries.Any(p => p.Code == this.Code);
              if (exist == true)
              {
                  var lostEntry = db.LostsEntries.Where(p => p.Code == this.Code).SingleOrDefault();
                  return new Returner
                  {
                      Data=lostEntry,
                      DataInJson = lostEntry.ToJson()
                  };
              }
              return new Returner
              {
                  Message = Msgs.لا_يوجد_نتائج_مطابقه_للبحث
              };
          }

          public Returner GetAllLosts()
          {
              var all = db.LostsEntries.OrderBy(p => p.ID).ToList();
              return new Returner
              {
                  Data=all,
                  DataInJson=all.ToJson()
              };
          }
    }
}