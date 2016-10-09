$(function() {
  $('.comment-link').on('click', function(e) {
    e.preventDefault();

    var commentBox = $('.comment-box');

    if (commentBox.show()) {
      commentBox.hide();
    }
    $(this).parent()
           .next()
           .fadeIn();
  });

  $('#btn-search').on('click', function(e) {
    $.ajax({
      data: { search: $('.search-field').val() },
      dataType: 'json',
      success: function(data) {
        console.log(data);
        $('.col-lg-3').remove();
        hideSpinner();
        for(i = 0; i < data.length; i++) {
          html = '<div class="col-lg-3">' +
                    '<div class="thumbnail">' +
                      '<a href="#">' +
                        '<img src="' + data[i].url + '"' + 'alt="' + data[i].title + '">' +
                      '</a>' +
                      '<div class="caption">' +
                        '<h4>' + data[i].title + '</h4>' +
                        '<span><a href="">Jerome</a></span>' +
                        '<p>' + data[i].description + '</p>' +
                      '</div>' +
                    '</div>' +
                  '</div>';
          $('.main-index').append(html);
        }
      },
      error: function(data) {
        hideSpinner();
      },
      beforeSend: function(data) {
        showSpinner();
      }
    });
  });
});
