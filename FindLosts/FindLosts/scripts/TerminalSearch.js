$(document).keypress(function (e) {
    if (e.which == 13) {
        var code = $('#Code').val();
        $.ajax({
            url: '/TerminalGuest/Search',
            type: 'post',
            data: { '_Code': code },
            success: function (data)
            {
                if (isEmpty(data)) {
                    $('#result').empty();
                    $.gritter.add({
                        title: '!نجاح العملية',
                        text: "لا يوجد نتائج للبحث",
                        image: '/content/images/user-icon.png',
                        time: '1000'
                    });
                }
                else {
                    $('#result').html('<tr style="text-align: center;">'
                                 + '<td style="width: 16.6%;">' + data.Code + '</td>'
                                 + '<td>' + data.Description + '</td>'
                                 + '<td class="text-right">' + data.Name +
                                 '</td>')
                }
            },
            error: function (data)
            {
                alert(data.responsiveText);
            }
        });
    }
});

function isEmpty(obj) {
    for (var prop in obj) {
        if (obj.hasOwnProperty(prop))
            return false;
    }

    return true;
}