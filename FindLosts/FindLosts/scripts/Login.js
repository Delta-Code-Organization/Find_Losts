$(document).ready(function () {
    $('#LoginForm').submit(function (event) {
        if ($(this).parsley('validate')) {
            var adminName = $('#Username').val();
            var adminPass = $('#Password').val();
            $.ajax({
                url: '/Moderator/LoginModerator',
                type: 'post',
                data: { '_Password': adminPass, '_Name': adminName },
                success: function (data) {
                    if (data == "تم تسجيل الدخول بنجاح")
                    {
                        window.location.href = "/Home/Index";
                    }
                    //$.gritter.add({
                    //    title: '!نجاح العملية',
                    //    text: data,
                    //    image: '/content/images/user-icon.png',
                    //    time: ''
                //});
                    $$('#result').text(data);
                  
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
