﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FindLosts.Models
{
    public enum Msgs
    {
        تم_تسجيل_الدخول_بنجاح=0,
       الإسم_او_الرقم_السري_غير_صحيح=1,
        يوجد_بالفعل_مدير_بنفس_الإسم=2,
        تم_تسجيل_المدير_بنجاح=3,
       تم_تعديل_المدير_بنجاح=4,
        تم_حذف_المدير_بنجاح=5,
        لا_يوجد_نتائج_مطابقه_للبحث=6,
        تم_حذف_المفقود_بنجاح=7,
      تم_تعديل_المفقود_بنجاح=8,
      يوجد_بالفعل_مفقود_بهذا_الإسم=9,
        تم_تسجيل_المفقود_بنجاح=10,
    }
}