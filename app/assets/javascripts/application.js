// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
// = require turbolinks
//= require_tree 


window.onload = () =>
{
    // Initiate all Materialize instances without options.
    const allInstances = M.AutoInit();

    // Initiate Materialize Date picker instances with options.
    const datepicker = document.querySelectorAll(".datepicker"),
    dateInstances = M.Datepicker.init(datepicker, {
        autoClose: true,
        format: "dddd dd mmmm, yyyy",
        onSelect: (date) =>
        {
            openTimePicker(date);
        }
    });
};

function openTimePicker(date)
{
    console.log(date);
    M.updateTextFields();
}


// Navigate to page passed as the param.
function goTo(path)
{
    window.location = path;
}