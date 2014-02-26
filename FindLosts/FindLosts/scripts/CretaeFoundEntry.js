function SetFoundEntry(_ID) {
    $.ajax({
        url: '/Moderator/SetLost',
        type: 'post',
        data: { '_ID': _ID },
        success: function (data) {
            $('#result').text(data);
        },
        error: function (data) {
            alert(data.responseText);
        }
    });
}