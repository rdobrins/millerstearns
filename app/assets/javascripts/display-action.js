$(document).ready(function(){
  $(".toggler_book").click(function(event){
      event.preventDefault();
      $(".togglee_book").fadeToggle();
      $("#book_name").focus();
  });
  $(".toggler_page").click(function(event){
      event.preventDefault();
      $(".togglee_page").fadeToggle();
      $("#page_name").focus();
  });
  $(".toggler_message").click(function(event){
      event.preventDefault();
      $(".togglee_message").fadeToggle();
      $("#message_name").focus();
  });
  $("direction-link").click(function(){
    $("#top-title").focus();
  });
  $(function(){
    $('html, body').animate({
        scrollTop: $('#scroll-target').offset().top
    }, 1500);
    return false;
  });
});
