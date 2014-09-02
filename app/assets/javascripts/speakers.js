$(document).ready(function(){
  // Add one speaker by default
  $('a.add_fields').trigger('click');
});

$(function() {
  // limits the number of categories
  $('#speakers').bind('cocoon:after-insert', function() {
    check_to_hide_or_show_add_link();
    check_to_hide_or_show_remove_link();
  });

  $('#speakers').bind('cocoon:after-remove', function() {
    check_to_hide_or_show_add_link();
    check_to_hide_or_show_remove_link();
  });

  check_to_hide_or_show_add_link();
  check_to_hide_or_show_remove_link();

  function check_to_hide_or_show_add_link() {
    if ($('#speakers .nested-fields').length == 5) {
      $('a.add_fields').hide();
    } else {
      $('a.add_fields').show();
    }
  }

  function check_to_hide_or_show_remove_link() {
    if ($('#speakers .nested-fields').length == 1) {
      $('a.remove_fields').hide();
    } else {
      $('a.remove_fields').show();
    }
  }
})
