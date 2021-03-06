﻿$(document).ready(function () {
    $('#LoginForm').submit(function (event) {
        if ($(this).parsley('validate')) {
            var adminName = $('#Username').val();
            var adminPass = $('#Password').val();
            $.ajax({
                url: '/Moderator/LoginModerator',
                type: 'post',
                data: { '_Password': adminPass, '_Name': adminName },
                success: function (data) {
                    if (data == "تم تسجيل الدخول بنجاح") {
                        window.location.href = "/Home/Index";
                    }
                    else {
                        $.gritter.add({
                            title: '!فشل العملية',
                            text: data,
                            image: '/content/images/user-icon.png',
                            class_name: 'clean',
                            time: ''
                        });
                    }
                  
                },
                error: function (data) {
                    alert(data.responseText);
                }
            });
            return false;
        }
        return false;
     });
  });
