// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .


$(document).ready( function() {         
  $('.check_todo').on( 'click', function() {
    var todo = $(this).parent().parent();
    todo.toggleClass('checked');
  });

  $('#add_todo').click( function() {
    var todoDescription = $('#todo_description').val();
    
    $('.todo_list').prepend('<div class="todo">'
    + '<div>'
    + '<input type="checkbox" class="check_todo" name="check_todo"/>'
    + '</div>'
    + '<div class="todo_description">'
    + todoDescription
    + '</div>'
    + '</div>');
    
    $('#todo_form')[0].reset();
    
    return false;
                            
  });  
  
  
});
