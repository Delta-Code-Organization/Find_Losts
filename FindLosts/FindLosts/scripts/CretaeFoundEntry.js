function SetFoundEntry(_ID) {
    alert(_ID);
    $.ajax({
        url: '/TerminalGuest/SetLost',
        type: 'post',
        data: { '_ID': _ID },
        success: function (data) {
            $('#result').text(data);
            setInterval(window.location.href="/TerminalGuest/CreateFoundEntry",2000);
        },
        error: function (data) {
            alert(data.responseText);
        }
    });
}