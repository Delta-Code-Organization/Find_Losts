function SetFoundEntry(_ID) {
    $.ajax({
        url: '/TerminalGuest/SetLost',
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
                window.location.href = "/TerminalGuest/CreateFoundEntry"
            }, 1000);
        },
        error: function (data) {
            alert(data.responseText);
        }
    });
}