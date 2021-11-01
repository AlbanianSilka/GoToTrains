$(document).on('turbolinks:load', function () {
    // opt = $('optgroup').each(function() {$(this).toggle()})
    $('#ticket_route_id').change(function() {
        opt = $('optgroup').each(function() {$(this).toggle()})
        label = $('#ticket_route_id :selected').text()
        $( "#ticket_first_station_id optgroup" ).each(function() {

            if (this.label == label) {
                $(this).show()
            }

        });
        $( "#ticket_last_station_id optgroup" ).each(function() {
            if (this.label == label) {
                $(this).show()
            }
        });

    })

})
