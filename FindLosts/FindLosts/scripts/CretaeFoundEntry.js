function SetFoundEntry(_ID) {
    $.ajax({
        url: '/ TerminalGuest/SetLost',
        type: 'post',
        data: { '_ID': _ID },
        success: function (data) {
            $('#result').text(data);
            setInterval(window.location.href = "/TerminalGuest/CreateFoundEntry", 5000);
        },
        error: function (data) {
            alert(data.responseText);
        }
    });
}