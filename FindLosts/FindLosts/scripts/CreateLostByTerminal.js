$(document).ready(function () {
    $('#SubCreate').submit(function (event) {
        if ($(this).parsley('validate')) {
            var lostDate = $('#lostdate').val();
            var lostPlace = $('#lostplace').val();
            var lostName = $('#lostname').val();
            var description = $('#lostdescription').val();
            var phone = $('#PhoneMask').val();
            var ownerName = $('#ownername').val();
            $.ajax({
                url: '/TerminalGuest/CreateNewLost',
                type: 'post',
                data: { '_LostDate': lostDate, '_LostPlace': lostPlace, '_LostName': lostName, '_Description': description, '_Phone': phone, '_OwnerName': ownerName },
                success: function (data) {
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

function Cancel() {
    window.location.href = "/Moderator/CreateLost";
}