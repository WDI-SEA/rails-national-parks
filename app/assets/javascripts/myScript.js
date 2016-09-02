$(document).on('ready page:load', function() {
  $('#get-parks-btn').click(function(e) {
    e.preventDefault();

    $.ajax({
      url: '/json',
      method: 'get',
      success: function(response) {
        $('#header').html(response[0].name)
      },
      error: function(response) {
        console.log(response);
      }
    });
  });
});
