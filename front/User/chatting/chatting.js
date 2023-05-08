$(document).ready(function () {
  $(".search_btn").click(function () {
    $(".search_wrap").css("display", "flex");
  });
  $(".close").click(function () {
    $(".search_wrap").css("display", "none");
  });
  $("#datepicker").datepicker();
});
