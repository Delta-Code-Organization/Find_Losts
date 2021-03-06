﻿$(document).ready(function () {
    $('#SubCreate').submit(function (event) {
        if ($(this).parsley('validate')) {
            var lostDate = $('#lostdate').val();
            var lostPlace = $('#lostplace').val();
            var lostName = $('#lostname').val();
            var description = $('#lostdescription').val();
            var phone = $('#PhoneMask').val();
            var ownerName = $('#ownername').val();
            $.ajax({
                url: '/WebGuest/CreateNewEntry',
                type: 'post',
                data: { '_LostDate': lostDate, '_LostPlace': lostPlace, '_LostName': lostName, '_Description': description, '_Phone': phone, '_OwnerName': ownerName },
                beforeSend: function () {
                    $('#save').prop("disabled", true)
                },
                success: function (data) {
                    alert(data.Code + " " + "هذا الكود للاستعلام عن المفقود");
                    $.gritter.add({
                        title: '!نجاح العملية',
                        text: "تم تسجيل المفقود بنجاح",
                        image: '/content/images/user-icon.png',
                        time: ''
                    });
                    setTimeout(function () {
                        $('#save').prop("disabled", false)
                    }, 5000);
                    setInterval(function () {
                        window.location.href = "/WebGuest/CreateNewLost"
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
    window.location.href = "/WebGuest/CreateNewLost";
}