$(function(){

  $("#show-tel").on("click", function(){
    var $this = $(this);
    $this.find("span").text( $this.data("telephone") );
  });

  $("#toggleDetails").on("click", function(){
    var details = $("#real-details");
    details.toggleClass("open");
    if(details.hasClass("open")){
      $(this).text("Show less");
    } else {
      $(this).text("Show more");
    }
  });

  $('#contact-modal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var modal = $(this);
  })

});

