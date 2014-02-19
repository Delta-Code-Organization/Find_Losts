using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FindLosts.Models
{
    public enum Msgs
    {
        Successfuk_Login=0,
        Wrong_Name_Or_Password=1,
        User_Name_Duplicated=2,
        Moderator_Created_Successfully=3,
        Moderator_Updated_Successfully=4,
        Moderator_Deleted_Successfully =5,
        No_Results_Found=6,
        Lost_Entry_Deleted_Successfully=7,
        Lost_Entry_Updated_Successfully=8,
        Lost_Entry_Duplicated=9,
        Lost_Entry_Created_Successfully=10
    }
}