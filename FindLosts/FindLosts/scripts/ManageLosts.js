function Delete(_ID) {
    $.ajax({
        url: '/Moderator/DeleteLost',
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

function SetFound(_ID) {
    $.ajax({
        url: '/Moderator/SetLost',
        type: 'post',
        data: { '_ID': _ID },
        success: function (data) {
            $.gritter.add({
                title: '!نجاح العملية',
                text: data,
                image: '/content/images/user-icon.png',
                time: ''
            });
            setInterval(function () {
                window.location.href = "/Moderator/ManageLosts"
            },1000);
        },
        error: function (data) {
            alert(data.responseText);
        }
    });
}