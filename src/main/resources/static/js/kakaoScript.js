// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('74e13a87230e8260bbc61fa5f6475239');

// SDK 초기화 여부를 판단합니다.
console.log(Kakao.isInitialized());

function kakaoLogin() {
  Kakao.Auth.login({
  success: function (response) {
    Kakao.API.request({
      url: '/v2/user/me',
      success: async function (response) {
        console.log(response);
        let email = response.kakao_account.email;
        let nickname = response.kakao_account.profile.nickname;
        let birthday = resposne.kakao_account.birthday;

        let userDto={
          email: email,
          nickname: nickname,
          birthday: birthday
        };

        let dataResponse = await fetch("/user/login", {
          method:"POST",
          body: JSON.stringify(userDto),
          headers:{
            "Content-Type":"application/json; charset=utf-8"
          }
        });

    //   let parseResposne = await dataResponse.text();

    //   if(parseResponse === "ok"){
    //     alert("로그인 성공!");
    //   }else{
    //     alert("수정실패");
    //   }
      },
      fail: function (error) {
      console.log(error)
       },
      }) // end kakao.API.request
  }, // end success
  fail: function (error) {
    console.log(error)
  },
  }) // end kakao.Auth.login()
}
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
          console.log(response)   
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    } // end if
  }  // end kakaoLogout()