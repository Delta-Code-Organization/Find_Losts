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
            $('#result').text(data);
            setInterval(window.location.href="/Moderator/ManageLosts",5000);
        },
        error: function (data) {
            alert(data.responseText);
        }
    });
}