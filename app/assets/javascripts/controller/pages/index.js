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
});
