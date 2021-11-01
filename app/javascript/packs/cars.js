$(document).on('turbolinks:load', function () {
    $('.seats').hide();
    show_car_attr($('#car_type').val());

    $('#car_type').on('change', function (e) {
        $(".seats input").val("");
        $('.seats').hide();
        show_car_attr(e.target.value);
    });

    function show_car_attr(type) {
        switch (type) {
            case 'CoupeCar':
                $('.top_seats').show();
                $('.lower_seats').show();
                break;
            case 'SleepCar':
                $('.lower_seats').show();
                break;
            case 'EconomyCar':
                $('.top_seats').show();
                $('.lower_seats').show();
                $('.side_seats_top').show();
                $('.side_seats_bottom').show();
                break;
            case 'SittingCar':
                $('.sitting_seats').show();
                break;
        }
    };
});