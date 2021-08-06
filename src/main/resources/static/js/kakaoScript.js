// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('74e13a87230e8260bbc61fa5f6475239');

// SDK 초기화 여부를 판단합니다.
console.log(Kakao.isInitialized());

function kakaoLogin() {
  Kakao.Auth.login({
  success: async function (response) {
    Kakao.API.request({
      url: '/v2/user/me',
      success: async function (response) {
        console.log(response);
        let email = response.kakao_account.email;
        let nickname = response.kakao_account.profile.nickname;
        // let birthday = resposne.kakao_account.birthday;

        let userDto={
          email: email,
          nickname: nickname
          // birthday: birthday
        }; // end let userDto

        let dataResponse = await fetch("/user/login", {
          method:"POST",
          body: JSON.stringify(userDto),
          headers:{
            "Content-Type":"application/json; charset=utf-8"
          }
        }); // end let dataResponse

        let parseResponse = await dataResponse.text();
      
        console.log(parseResponse);
        if(parseResponse === "OK"){
          location.href="/"
        }else{
          alert("로그인실패");
          location.href="/auth/login"
        } // end if-else
      }, // end inner success
      fail: function (error) {
      console.log(error)
      } // end inenr fail
      }) // end kakao.API.request
  }, // end success
  fail: function (error) {
    console.log(error)
  } // end outer fail
  }) // end kakao.Auth.login()
}

카카오로그아웃  
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


  // function kakaoLogout() {
  //   if (!Kakao.Auth.getAccessToken()) {
  //     alert('Not logged in.')
  //     return
  //   }
  //   Kakao.Auth.logout(function() {
  //     alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken())
  //   })
  // }