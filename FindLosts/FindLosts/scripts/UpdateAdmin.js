$(document).ready(function () {
    $('#SubCreate').submit(function (event) {
        if ($(this).parsley('validate')) {
            var adminName = $('#updatenametxt').val();
            var adminPass = $('#updatepasstxt').val();
            $.ajax({
                url: '/Moderator/UpdateModerator',
                type: 'post',
                data: { '_Password': adminPass, '_Name': adminName },
                success: function (data) {
                    $('#result').text(data);
                },
                erro: function (data) {
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