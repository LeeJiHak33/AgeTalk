let isCheck;

function checkId(mode) {
  if (document.signup_form.id.value == "") {
    alert("중복검사 전에 아이디를 입력 하세요");
    return;
  }
  if (mode) checkId_Async();
  else checkId_Sync();
}

function checkId_Async() {
  const form = document.signup_form;

  const xhr = new XMLHttpRequest();

  xhr.onreadystatechange = function () {
    console.log(xhr.readyState);

    if (xhr.readyState == XMLHttpRequest.DONE) {
      if (xhr.status == 200) {
        const result = xhr.responseText;
        console.log("응답 : " + result);

        if (result == "OK") {
          isCheck = form.id.value;
          alert("사용 가능한 아이디 입니다");
        } else alert("이미 사용중인 아이디 입니다");
      }
    }
  };

  xhr.open("GET", "checkId/" + form.id.value, true);

  xhr.send();
}

function signup() {
  const form = document.signup_form;

  if (isCheck != form.id.value) {
    alert("아이디 중복 검사를 해야합니다");
    return;
  }
  if (form.id.value == "") {
    alert("아이디를 입력 해 주세요");
    form.id.focus();
    return;
  }
  if (form.pwd.value == "") {
    alert("비밀번호를 입력 해 주세요");
    form.pwd.focus();
    return;
  }
  if (form.passwd_chk.value == "") {
    alert("비밀번호 확인을 입력 해 주세요");
    form.passwd_chk.focus();
    return;
  }
  if (form.pwd.value != form.passwd_chk.value) {
    alert("비밀번호가 일치하지 않습니다");
    form.passwd_chk.focus();
    return;
  }
  if (form.name.value == "") {
    alert("이름을 입력 해 주세요");
    form.name.focus();
    return;
  }
  if (form.phone.value == "") {
    alert("전화번호를 입력 해 주세요");
    form.phone.focus();
    return;
  } else {
    form.submit();
  }
}

const autoHyphen = (target) => {
  target.value = target.value
    .replace(/[^0-9]/g, "")
    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
};

$(document).ready(function () {
  var fileTarget = $(".filebox .upload_hidden");

  fileTarget.on("change", function () {
    // 값이 변경되면
    if (window.FileReader) {
      // modern browser
      var filename = $(this)[0].files[0].name;
    } else {
      // old IE
      var filename = $(this).val().split("/").pop().split("\\").pop(); // 파일명만 추출
    }

    // 추출한 파일명 삽입
    $(this).siblings(".upload_name").val(filename);
  });
});
