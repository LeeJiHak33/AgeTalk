$("#userId").val(Cookies.get("key"));
if ($("#userId").val() != "") {
  $("#idSaveCheck").attr("checked", true);
}

$("#idSaveCheck").change(function () {
  if ($("#idSaveCheck").is(":checked")) {
    Cookies.set("key", $("#userId").val(), { expires: 7 });
  } else {
    Cookies.remove("key");
  }
});

$("#userId").keyup(function () {
  if ($("#idSaveCheck").is(":checked")) {
    Cookies.set("key", $("#userId").val(), { expires: 7 });
  }
});

function loginUser() {
  var id = document.getElementById("userId").value;
  var password = document.querySelector('input[type="password"]').value;

  if (!id || !password) {
    alert("아이디와 비밀번호를 입력해 주세요.");
    return false;
  }
}
