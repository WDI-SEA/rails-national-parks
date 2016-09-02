$(document).on('ready page:load', function() {
  displayParksList();

  // Show Button
  $('#parks-list').on('click', '.park-item', function(e) {
    e.preventDefault();

    displayShowView($(this).attr('data-id'));
  });

  // Back Button
  $('#parks-list').on('click', '.back-btn', function(e) {
    e.preventDefault();

    displayParksList();
  });

  // Edit Button
  $('#parks-list').on('click', '.edit-btn', function(e) {
    e.preventDefault();

    displayEditModal($(this).parent().attr('data-id'));
  });

  // Delete Button
  $('#parks-list').on('click', '.delete-btn', function(e) {
    e.preventDefault();

    var parkId = $(this).parent().attr('data-id');

    $.ajax({
      url: '/api/parks/' + parkId,
      method: 'delete',
      success: function(response) {
        displayParksList();
      },
      error: function(response) {
        console.log(response);
      }
    });
  });

  // New Park Form Submit
  $('#new-park-form').submit(function(e) {
    e.preventDefault();

    var parkObj = {
      name: $('#park-name').val(),
      description: $('#park-description').val(),
      picture: $('#park-picture').val()
    }

    $.ajax({
      url: '/api/parks',
      method: 'post',
      data: parkObj,
      success: function(response) {
        displayParksList();
      },
      error: function(response) {
        console.log(response);
      }
    });

    $('.new-park-modal').modal('toggle');
    $('#park-name').val('');
    $('#park-description').val('');
    $('#park-picture').val('');
  });

  // Edit Park Form Submit
  $('#edit-park-form').submit(function(e) {
    e.preventDefault();

    var parkObj = {
      name: $('#edit-name').val(),
      description: $('#edit-description').val(),
      picture: $('#edit-picture').val()
    }

    var parkId = $('#edit-id').val();

    $.ajax({
      url: '/api/parks/' + parkId,
      method: 'put',
      data: parkObj,
      success: function(response) {
        displayShowView(parkId);
      },
      error: function(response) {
        console.log(response);
      }
    });

    $('.edit-park-modal').modal('toggle');
    $('#edit-name').val('');
    $('#edit-description').val('');
    $('#edit-picture').val('');
  });
});

function displayParksList() {
  $.ajax({
    url: '/api/parks',
    method: 'get',
    success: function(parks) {
      var parksList = $('#parks-list');
      parksList.html('');
      parks.forEach(function(park) {
        parksList.append('<li data-id="' + park.id + '" class="list-group-item park-item"><h3>' + park.name + '</h3></li>');
      });
    },
    error: function(response) {
      console.log(response);
    }
  });
}

function displayShowView(parkId) {
  $.ajax({
    url: '/api/parks/' + parkId,
    method: 'get',
    success: function(park) {
      var parksList = $('#parks-list');
      var showHTML = `
        <li data-id="` + park.id + `" class="list-group-item">
          <button class="btn btn-success back-btn pull-left">Back to List</button>
          <button class="btn btn-danger delete-btn pull-right">Delete</button>
          <button class="btn btn-warning edit-btn pull-right">Edit</button>
          <div class="clearfix"></div>
          <h3>` + park.name + `</h3>
          <p>` + park.description + `</p>
        </li>
      `
      parksList.html(showHTML);
    },
    error: function(response) {
      console.log(response);
    }
  });
}

function displayEditModal(parkId) {
  $.ajax({
    url: '/api/parks/' + parkId,
    method: 'get',
    success: function(park) {
      $('#edit-id').val(park.id);
      $('#edit-name').val(park.name);
      $('#edit-description').val(park.description);
      $('#edit-picture').val(park.picture);
      $('.edit-park-modal').modal('toggle');
    },
    error: function(response) {
      console.log(response);
    }
  });
}