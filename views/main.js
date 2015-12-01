$(document).ready(function(){
  $('#desc').hide(20);
  console.log("JQuery is working.");
  $("#btn").on("click",function(){
    $("#desc").toggle();
  })

})