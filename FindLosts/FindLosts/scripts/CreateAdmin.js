$(document).ready(function () {
    $('#SubCreate').submit(function (event) {
        if ($(this).parsley('validate')) {
            var adminName = $('#nametxt').val();
            var adminPass = $('#passtxt').val();
            $.ajax({
                url: '/Moderator/CreateNewAdmin',
                type: 'post',
                data: { '_Password': adminPass, '_Name': adminName },
                beforeSend: function () {
                    $('#save').prop("disabled", true)
                },
                success: function (data) {
                    if (data == "تم تسجيل المدير بنجاح") {
                        $.gritter.add({
                            title: '!نجاح العملية',
                            text: data,
                            image: '/content/images/user-icon.png',
                            time: ''
                        });
                    }
                    else {
                        $.gritter.add({
                            title: '!فشل العملية',
                            text: data,
                            image: '/content/images/user-icon.png',
                            time: ''
                        });
                    }
                    setTimeout(function () {
                        $('#save').prop("disabled", false)
                    }, 1500);
                    setInterval(function () {
                        window.location.href = "/Moderator/CreateAdmin"
                    }, 1000);
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
        function Cancel() {
            window.location.href = "/Moderator/CreateAdmin";
        }
    