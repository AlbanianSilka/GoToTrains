$(document).on('turbolinks:load', function () {
    $('a.edit_route_btn').click(function (e) {
        e.preventDefault();
        const route_id = $(this).data('routeId');
        let form;
        let title;

        form = $('#edit_route_' + route_id);
        title = $('#route_title_' + route_id);

        if (!$(this).hasClass('cancel')) {
            $(this).html('Відмінити')
            $(this).addClass('cancel');
        } else {
            $(this).html('Відредагувати');
            $(this).removeClass('cancel');
        }

        form.toggle();
        title.toggle();
    })
})