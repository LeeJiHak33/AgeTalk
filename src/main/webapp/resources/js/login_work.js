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

let isCheckId;
let isCheckPwd;

function checkLogin(mode) {
  if (
    document.login_form.id.value == "" ||
    document.login_form.pwd.value == ""
  ) {
    alert("아이디와 비밀번호를 입력 해주세요");
    return;
  }
  if (mode) checkLogin_Async();
  else checkLogin_Sync();
}

function checkLogin_Async() {
  const form = document.login_form;
  const xhr = new XMLHttpRequest();

  xhr.onreadystatechange = function () {
    console.log(xhr.readyState);

    if (xhr.readyState == XMLHttpRequest.DONE) {
      if (xhr.status == 200) {
        const result = xhr.responseText;
        console.log("응답 : " + result);

        if (result == "OK") {
          isCheckId = form.id.value;
          isCheckPwd = form.pwd.value;
          console.log("로그인 실패");
          alert("비밀번호가 틀렸습니다.");
        } else if (result == "STOP") {
          console.log("미승인 복지사");
          alert("승인이 완료되지 않았습니다");
        } else {
          return true;
        }
      } else {
        alert("등록되지 않은 정보 입니다.");
      }
    }
  };

  xhr.open(
    "GET",
    "checkWorkLogin/" + form.id.value + "/" + form.pwd.value,
    true
  );

  xhr.send();
}
