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
                    if (data == "Successful Login")
                    {
                        window.location.href = "/Home/Index";
                    }
                    $('#result').text(data);
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
