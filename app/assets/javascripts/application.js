// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require material
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require dataTables/jquery.dataTables
//= require bootstrap-sprockets
//= require turbolinks
//= require jquery-jvectormap-1.2.2.min
//= require jquery-jvectormap-world-mill-en
//= require jquery.sparkline
//= require bootstrap-slider
//= require bootstrap3-wysihtml5
//= require fullcalendar
//= require jquery.knob
//= require bootstrap-timepicker
//= require pace
//= require morris
//= require daterangepicker
//= require bootstrap-colorpicker
//= require bootstrap-datepicker
//= require jquery.slimscroll
//= require toastr.min
//= require bootstrap
//= require app
//= require_tree .

function remove_fields(link) {
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".fields").hide();
}
function add_fields(link, association, content) {  
    var new_id = new Date().getTime();  
    var regexp = new RegExp("new_" + association, "g");  
    $(link).parent().before(content.replace(regexp, new_id));  
}