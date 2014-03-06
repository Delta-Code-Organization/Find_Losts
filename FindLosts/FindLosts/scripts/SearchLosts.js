$(document).keypress(function (e) {
    if (e.which == 13) {
        var name = $('#LostName').val();
        var code = $('#LostCode').val();
        $.ajax({
            url: '/Moderator/SearchResult',
            type: 'post',
            data: { '_Name': name, '_Code': code },
            success: function (data) {
                $('#results').empty();
                $.each(data, function (Index, res) {
                    if (res.Status == 0) {
                        $('#results').append('<tr style="text-align: center;">'
                             + '<td style="width: 16.6%;">لم يتم العثور عليها</td>'
                                       + '<td style="width: 16.6%;">' + res.LostPlace + '</td>'
                                       + '<td>' + res.Description + '</td>'
                                       + '<td class="text-right">' + res.Name + '</td>'
                                   + '</tr>')
                    }
                    else {
                        $('#results').append('<tr style="text-align: center;">'
                            + '<td style="width: 16.6%;">تم العثور عليها</td>'
                                      + '<td style="width: 16.6%;">' + res.LostPlace + '</td>'
                                      + '<td>' + res.Description + '</td>'
                                      + '<td class="text-right">' + res.Name + '</td>'
                                  + '</tr>')
                    }
                });
            },
            error: function (data) {
            alert(data.responseText);
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