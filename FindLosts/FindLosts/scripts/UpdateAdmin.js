$(document).ready(function () {
    $('#SubCreate').submit(function (event) {
        if ($(this).parsley('validate')) {
            var adminName = $('#updatenametxt').val();
            var adminPass = $('#updatepasstxt').val();
            $.ajax({
                url: '/Moderator/UpdateModerator',
                type: 'post',
                data: { '_Password': adminPass,'_Name': adminName},
                beforeSend: function () {
                    $('#save').prop("disabled", true)
                },
                success: function (data) {
                    $.gritter.add({
                        title: '!نجاح العملية',
                        text: data,
                        image: '/content/images/user-icon.png',
                        time: ''
                    });
                    setTimeout(function () {
                        $('#save').prop("disabled", false)
                    }, 1500);
                    setInterval(function () {
                        window.location.href = "/Moderator/ManageAdmins"
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
function Cancel(id){
    window.location.href = "/Moderator/UpdateAdmin?_ID="+id;
}