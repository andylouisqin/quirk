// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    $('.indicator, #room-description').hover(function() {
        if ($('.indicator').hasClass('indicator-live')) {
            $('.indicator-status').text("Live");
        } else {
            $('.indicator-status').text("Not live");
        }
    }, function() {
        $('.indicator-status').text("");
    })

    $('.text-field').keyup(function() {
        setTimeout(function() {
            if ($('.text-field').val() == "") {
                $('.submit-btn').removeClass('submit-btn-show');
                setTimeout(function() {
                    $('.submit-btn').css('display', 'none');
                    $('.list-container').removeClass('list-container-active');
                }, 100);
            } else {
                $('.list-container').addClass('list-container-active');
                setTimeout(function() {
                    $('.submit-btn').css('display', 'block');
                    $('.submit-btn').addClass('submit-btn-show');
                }, 250);
            }
        }, 200);
    });
})