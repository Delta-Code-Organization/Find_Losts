$(document).keypress(function (e) {
    if (e.which == 13) {
        var name = $('#LostName').val();
        var code = $('#LostCode').val();
        $.ajax({
            url: '/Moderator/SearchResult',
            type: 'post',
            data: { '_Name': name, '_Code': code },
            success: function (data) {
                //if (data !=undefined) {
                    $('#results').html('<tr style="text-align: center;">'
                                   + '<td style="width: 16.6%;">' + data.LostPlace + '</td>'
                                   + '<td>' + data.Description + '</td>'
                                   + '<td class="text-right">' + data.Name + '</td>'
                               + '</tr>')
               // }
                //else {
                //    $('#result').text("لا يوجد نتائج مطابقه للبحث");
                //}
            },
            error: function (data) {
            alert(data.responseText);
        }
        });
    }
});