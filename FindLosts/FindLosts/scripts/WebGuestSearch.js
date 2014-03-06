$(document).keypress(function(e){
    if(e.which==13)
    {
        var code = $('#Code').val();
        $.ajax({
            url: '/WebGuest/EntriesSearch',
            type: 'post',
            data: { '_Code': code },
            success: function (data) {
                if (isEmpty(data)) {
                    $('#result').empty();
                    $.gritter.add({
                        title: '!فشل العملية',
                        text: "لا يوجد نتائج للبحث",
                        image: '/content/images/user-icon.png',
                        time: '700'
                    });
                }
                else if (data.Status == 0) {
                    $('#result').html('<tr style="text-align: center;">'
                        + '<td style="width: 16.6%;">لم يتم العثور عليها</td>'
                                 + '<td style="width: 16.6%;">' + data.LostPlace + '</td>'
                                 + '<td>' + data.Description + '</td>'
                                 + '<td class="text-right">' + data.Name +
                                 '</td>')
                }
                else {
                    $('#result').html('<tr style="text-align: center;">'
                        + '<td style="width: 16.6%;">تم العثور عليها</td>'
                                 + '<td style="width: 16.6%;">' + data.LostPlace + '</td>'
                                 + '<td>' + data.Description + '</td>'
                                 + '<td class="text-right">' + data.Name +
                                 '</td>')
                }
            },
            error: function (data) {
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