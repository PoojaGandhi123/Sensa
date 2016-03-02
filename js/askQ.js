/*jslint browser: true*/
/*global $, jQuery, alert*/
(function ($) {
    "use strict";
    $(document).ready(function () {
        $('#options button[name="question"]').on('click', function () {
            $('#survey').hide();
            $('#question').show();
            $('#options button[name="question"]').css('background-color', '#2B9FFA');
            $('#options button[name="survey"]').css('background-color', 'lightgray');
        });
    });
    $(document).ready(function () {
        $('#options button[name="survey"]').on('click', function () {
            $('#question').hide();
            $('#survey').show();
            $('#options button[name="survey"]').css('background-color', '#2B9FFA');
            $('#options button[name="question"]').css('background-color', 'lightgray');
        });
    });
}(jQuery));