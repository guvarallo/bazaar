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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery.fileupload
//= require turbolinks
//= require_tree .

$(document).ready(function(){

  var $window = $(window);

  $('section[data-type="background"]').each(function(){
    var $bgobj = $(this);
    $(window).scroll(function() {
      var yPos = -($window.scrollTop() / $bgobj.data('speed'));
      // Put together our final background position
      var coords = '50% '+ yPos + 'px';
      // Move the background
      $bgobj.css({ backgroundPosition: coords });
    });
  });
});

$(function () {
  $('#fileupload').fileupload({
    add: function (e, data) {
      console.log('add');
      $('ins').append('     <img src="' + URL.createObjectURL(data.files[0]) + '"/>')
      $.each(data.files, function (index, file) {
        console.log('Added file: ' + file.name);
        //alert($('#tmpl-demo').tmpl(data));
        $('#template-upload').tmpl(data.files).appendTo('.upload_files');
      });
      var jqXHR = data.submit()
    .success(function(result, textStatus, jqXHR) {/*...*/})
    .error(function(jqXHR, textStatus, errorThrown) {/*...*/})
    .complete(function(result, textStatus, jqXHR) {
      console.log("complete");
      //$('.upload_files').append('<tr><td>'+ result +'</td></tr>');
    });
    },
    progress: function(e, data) {
      console.log('progress');
    },
    start: function(e) {
      console.log('start');
    },
    done: function(e) {
      console.log('done');
    }
  }).bind('fileuploadadd', function(e, data) {
    console.log('fileuploadadd');
  }).bind('fileuploadprogress', function(e, data) {
    console.log('fileuploadprogress');
  }).bind('fileuploadstart', function(e) {
    console.log('fileuploadstart');
  }).bind('fileuploaddone', function(e) {
    console.log('fileuploaddone');
  });


});
