window.addEventListener('message', function (event) {
  var nui = event.data;
  if (nui.type == "open") {
    $('.main_bg').fadeIn(500);
    $('#negudo').text(nui.negudo);
    $('#negudo2').text(nui.negudo2);
    $('#negudo3').text(nui.negudo3);
  }
  if (nui.type == "close") {
    $('.main_bg').fadeOut(500);
    $('#negudo').text(0);
    $('#negudo2').text(0);
    $('#negudo3').text(0);
  }
});