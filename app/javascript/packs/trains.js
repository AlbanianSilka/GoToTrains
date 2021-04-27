$(document).on('turbolinks:load', function () {
    $('a.edit_train_btn').click(function (e) {
        e.preventDefault();
        const train_id = $(this).data('trainId');
        let form;
        let title;

        form = $('#edit_train_' + train_id);
        title = $('#train_number_' + train_id);
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