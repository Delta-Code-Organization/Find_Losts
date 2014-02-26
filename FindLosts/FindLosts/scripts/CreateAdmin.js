$(document).ready(function () {
    $('#SubCreate').submit(function (event) {
        if ($(this).parsley('validate')) {
            var adminName = $('#nametxt').val();
            var adminPass = $('#passtxt').val();
            $.ajax({
                url: '/Moderator/CreateNewAdmin',
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
        function Cancel() {
            window.location.href = "/Moderator/CreateAdmin";
        }
    