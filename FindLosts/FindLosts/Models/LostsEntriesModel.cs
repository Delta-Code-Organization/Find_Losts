﻿using System;
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
                    Data = lostEntry
                };
            }
            return new Returner
            {
                Message = Msgs.No_Results_Found
            };
        }

         public Returner DeleteLostEntry()
         {
             var lostEntry = db.LostsEntries.Where(p => p.ID == this.ID).SingleOrDefault();
             db.LostsEntries.Remove(lostEntry);
             db.SaveChanges();
             return new Returner
             {
                 Message = Msgs.Lost_Entry_Deleted_Successfully
             };
         }

         public Returner SetLost()
         {
             var lostEntry = db.LostsEntries.Where(p => p.ID == this.ID).SingleOrDefault();
             lostEntry.Status = this.Status;
             db.SaveChanges();
             var updatedLostEntry=db.LostsEntries.OrderByDescending(p=>p.ID).FirstOrDefault();
             return new Returner
             {
                 Data = updatedLostEntry,
                 Message = Msgs.Lost_Entry_Updated_Successfully
             };
         }

          public Returner CreateLostEntry()
        {
            var exist = db.LostsEntries.Any(p => p.Name == this.Name||p.Code==this.Code);
            if (exist == true)
            {
                return new Returner
                {
                    Message = Msgs.Lost_Entry_Duplicated
                };
            }
            db.LostsEntries.Add(this);
            db.SaveChanges();
            var createdLostEntry = db.LostsEntries.OrderByDescending(p => p.ID).FirstOrDefault();
            return new Returner
            {
                Data = createdLostEntry,
                Message = Msgs.Lost_Entry_Created_Successfully
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
                      Data = lostEntry
                  };
              }
              return new Returner
              {
                  Message = Msgs.No_Results_Found
              };
          }
    }
}