$(document).keypress(function (e) {
    if (e.which == 13) {
        var code = $('#Code').val();
        if ($('#Code').val() == "") {
            $.gritter.add({
                title: '!فشل العملية',
                text: "من فضلك أدخل الكود للبحث",
                image: '/content/images/user-icon.png',
                time: '700'
            });
            //return false;
        }
        else{
            $.ajax({
                url: '/TerminalGuest/Search',
                type: 'post',
                data: { '_Code': code },
                success: function (data) {
                    if (data == "لا يوجد نتائج للبحث") {
                        $('#result').empty();
                        $.gritter.add({
                            title: '!فشل العملية',
                            text: "لا يوجد نتائج للبحث",
                            image: '/content/images/user-icon.png',
                            time: '800'
                        });
                    }
                    else {
                        if (data.Status == 0) {
                            $('#result').empty();
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
                    }
                },
                error: function (data) {
                    alert(data.responsiveText);
                }
            });
        }
    }
});

function isEmpty(obj) {
    for (var prop in obj) {
        if (obj.hasOwnProperty(prop))
            return false;
    }

    return true;
}