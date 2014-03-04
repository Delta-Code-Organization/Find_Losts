$(document).keypress(function(e){
    if(e.which==13)
    {
        var code = $('#Code').val();
        $.ajax({
            url: '/WebGuest/EntriesSearch',
            type: 'post',
            data: { '_Code': code },
            success: function (data) {
                $('#result').html('<tr style="text-align: center;">'
                                + '<td style="width: 16.6%;">' + data.Code + '</td>'
                                + '<td>' + data.Description + '</td>'
                                + '<td class="text-right">' + data.Name + '</td>'
                            + '</tr>');
            },
            error: function (data) {
                alert(data.responsiveText);
            }
        });
    }

});