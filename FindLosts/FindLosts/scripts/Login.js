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
                    //$('#result').text(data);
                    window.location.href = '/Home/Index';
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
