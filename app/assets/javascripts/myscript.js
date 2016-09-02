$(document).on('ready page:load', function() {
  $('#get-parks-button').click(function(e){
    e.preventDefault();
    $.ajax({
      url: '/json'
      method: 'get',
      success: function(response) {
        console.log(response);
      },
      error: function(response) {
        console.log(response);
      }
    });
  });
});