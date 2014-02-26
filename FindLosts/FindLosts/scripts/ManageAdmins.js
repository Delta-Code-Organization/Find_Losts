function DeleteAdmin(_ID) {
    $.ajax({
        url: '/Moderator/DeletingAdmin',
        type: 'post',
        data: { '_ID': _ID },
        success: function (data) {
            $('#' + _ID).fadeOut(500);
        },
        error: function (data) {
            alert(data.responseText);
        }
    });
}

