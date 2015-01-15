//= require jquery
//= require_self

$(function() {
  $('.miss-btn').bind('click', function(e) {
    var that = this;
    setTimeout(function() {
      alert('验证成功！');
      var id = $(that).attr('data-id');
      $('tr[data-id=' + id + ']').remove();
    }, 2500);

  });
});