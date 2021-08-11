var IMP = window.IMP; // 생략 가능
IMP.init("imp68218098"); // 예: imp00000000

<<<<<<< HEAD
async function cardInfo(cardId) {}
/*=====================================================================*/



function chargepay() {

=======
function chargepay() {
>>>>>>> a68b54c97b4cae7787b5d58ba0d104a60c867845
  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  let produtname = $("#cardNum_NORMAL option:selected").text();
<<<<<<< HEAD
  let cardid = $("#cardNum_NORMAL option:selected").val();
  let productamount = document.querySelector(".charge").value;

  let payreqDto = {
    amount: productamount,
    cardid: cardid,
  };
  var IMP = window.IMP; // 생략 가능
  IMP.init("imp68218098"); // 예: imp00000000s
=======
  let cardid = $("#cardNum_NORMAL option:selected").value;
  let productamount = document.querySelector(".charge").value;

  let payrepDto = {
    amount: productamount,
    cardid: cardid,
  };

>>>>>>> a68b54c97b4cae7787b5d58ba0d104a60c867845
  // IMP.request_pay(param, callback) 결제창 호출
  IMP.request_pay(
    {
      // param
      // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "merchant_" + new Date().getTime(), // 주문번호
      name: produtname,
      amount: productamount, // 값
      buyer_email: buyeremail, // session 값
      buyer_name: buyername, // session 값
      buyer_tel: buyertel, // session 값
    },
    (rsp) => {
      // callback
      if (rsp.success) {
<<<<<<< HEAD
        console.log("결제 성공");
        console.log(rsp);
        // 결제 성공 시 로직,
        successCharge(payreqDto);

        /*
=======
>>>>>>> a68b54c97b4cae7787b5d58ba0d104a60c867845
        jQuery
          .ajax({
            url: "/user/cardCharge/complete", // 예: https://www.myservice.com/payments/complete 가맹점 서버
            method: "post",
            headers: { "Content-Type": "application/json" },
            data: {
              imp_uid: rsp.imp_uid,
              merchant_uid: rsp.merchant_uid,
              buyername: buyername,
              buyeremail: buyeremail,
              o_paytype: rsp.pay_method,
            },
          })
          .done(function (data) {
            if (everythings_fine) {
              var msg = "결제가 완료되었습니다.";
              msg += "\n고유ID : " + rsp.imp_uid;
              msg += "\n상점 거래ID : " + rsp.merchant_uid;
              msg += "결제 금액 : " + rsp.paid_amount;
              msg += "카드 승인번호 : " + rsp.apply_num;

              alert(msg);
<<<<<<< HEAD
              document.location.href = "/user/mypage"; 
            } else {
              //[3] 아직 제대로 결제가 되지 않았습니다.
              //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
            } 
          });                                                  */


=======
              document.location.href = "/user/mypage";
            } else {
              //[3] 아직 제대로 결제가 되지 않았습니다.
              //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
            }
          });
>>>>>>> a68b54c97b4cae7787b5d58ba0d104a60c867845
      } else {
        console.log(rsp);
        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
      }
    }
  );
}

<<<<<<< HEAD
async function  successCharge(payreqDto) {
  console.log("확인", payreqDto);
  console.log("결제 성공시, 로직 start!");
  let response = await fetch("/user/cardCharge/complete", {
    method: "post",
    body: JSON.stringify(payreqDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  console.log("controller완료!!!");
  location.href = "/user/mypage";
} //결제 성공시 실행되는 함수 end
/*=================================================================================================*/
=======
/*===================================================================================================*/
>>>>>>> a68b54c97b4cae7787b5d58ba0d104a60c867845

function egiftpay() {
  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  let productamount = document.querySelector("#price").value;

<<<<<<< HEAD
  let receiver = document.querySelector("#receiver").value;
  let phone1 = $("#phone1 option:selected").val();
  let phone2 = document.querySelector("#phone2").value;
  let phone3 = document.querySelector("#phone3").value;
  let reqMsg = document.querySelector("#reqMsg").value;

  let cardcartreqDto = {
    amount: productamount,
    receiver: receiver,
    phone1: phone1,
    phone2: phone2,
    phone3: phone3,
    reqMsg: reqMsg
  }

  // IMP.request_pay(param, callback) 호출
  // 변수화
=======
  // IMP.request_pay(param, callback) 결제창 호출
>>>>>>> a68b54c97b4cae7787b5d58ba0d104a60c867845
  IMP.request_pay(
    {
      // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "merchant_" + new Date().getTime(), // 주문번호
      name: "e-gift",
      amount: productamount, // 값
      buyer_email: buyeremail, // session 값
      buyer_name: buyername, // session 값
      buyer_tel: buyertel, // session 값
    },
    (rsp) => {
      // callback
      if (rsp.success) {
        // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
        // axios로 HTTP 요청
        // jQuery로 HTTP 요청
        jQuery
          .ajax({
            url: "/payments/complete", // 예: https://www.myservice.com/payments/complete 가맹점 서버
            method: "POST",
            headers: { "Content-Type": "application/json" },
            data: {
              imp_uid: rsp.imp_uid,
              merchant_uid: rsp.merchant_uid,
              buyer_name: rsp.buyer_name,
              buyer_email: rsp.buyer_email,
            },
          })
          .done(function (data) {
            if (everythings_fine) {
              var msg = "결제가 완료되었습니다.";
              msg += "\n고유ID : " + rsp.imp_uid;
              msg += "\n상점 거래ID : " + rsp.merchant_uid;
              msg += "결제 금액 : " + rsp.paid_amount;
              msg += "카드 승인번호 : " + rsp.apply_num;

              alert(msg);
            } else {
              //[3] 아직 제대로 결제가 되지 않았습니다.
              //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
            }
          });
        console.log("결제 성공");
        console.log(rsp);
      // 결제 성공 시 로직,
      successEgift(cardcartreqDto);
      } else {
        console.log("결제 실패");
        console.log(rsp);
        // 결제 실패 시 로직,
        alert("결제를 실패했습니다.");
      }
    }
  );
}
async function  successEgift(cardcartreqDto) {
  console.log("확인", cardcartreqDto);
  console.log("결제 성공시, 로직 start!");
  let response = await fetch("/user/egift/complete", {
    method: "post",
    body: JSON.stringify(cardcartreqDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  console.log("controller완료!!!");
  location.href = "/user/purchaseHistory";
} //결제 성공시 실행되는 함수 end
/*======================================================*/
//Cart 선택된 최종 결제 금액
let arrProductId = new Array();
$(".ez-checked").each(function () {
  arrProductId.push($(this).attr("id"));
});

/*======================================================*/
function cartpay() {
  console.log("cartpay()함수 실행");
  const IMP = window.IMP; // 생략해도 괜찮습니다.
  IMP.init("imp68218098"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  let length = $(".ez-checked").length;
  let arrProductId = new Array();
  $(".ez-check").each(function () {
    arrProductId.push($(this).attr("id"));
  });

  let arrCartId = new Array();
  $(".ez-checked").each(function () {
    arrCartId.push($(this).attr("id"));
  });

  let id_str;
  for (let index = 0; index < length; index++) {
    id_str = id_str + arrProductId[index];
  } // ["0", "4", "5"] => "045"

  let merchantuid = id_str; //선택된 상품들의 아이디
  let produtname = arrProductId; //상품이름
  let productamount = document.querySelector(".checkedTotalAmount").textContent; //결제금액

  let price;

  let saledReqDto = {
    arrProductId: arrProductId, //productId
    arrCartId: arrCartId, // cartId
    length: length,
    applyNum: "",
  };

  // IMP.request_pay(param, callback) 호출
  // 변수화
  IMP.request_pay(
    {
      // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "merchant_" + new Date().getTime(), // 주문번호
      name: produtname + "장바구니 상품결제",
      amount: productamount, // 값 - 결제금액
      buyer_email: buyeremail, // session 값
      buyer_name: buyername, // session 값
      buyer_tel: buyertel, // session 값
    },
    (rsp) => {
      // callback
      if (rsp.success) {
        console.log("결제 성공");
        console.log(rsp);
        // 결제 성공 시 로직,
        saledReqDto.applyNum = rsp.apply_num;
        success(saledReqDto);
      } else {
        console.log(rsp);
        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
      }
    }
  );
}
async function success(saledReqDto) {
  console.log("확인", saledReqDto);
  console.log("결제 성공시, 로직 start!");
  alert(saledReqDto.arrProductId);
  let response = await fetch("/user/purchaseHistory", {
    method: "post",
    body: JSON.stringify(saledReqDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  location.href = "/user/purchaseHistory";
} //결제 성공시 실행되는 함수 end

/*=======================================================================*/

// // 가맹점 서버 코드(?)
// app.use(bodyParser.json());
// // "/payments/complete"에 대한 POST 요청을 처리
// app.post("/user/mypage/point", async (req, res) => {
//   try {
//     const { imp_uid, merchant_uid } = req.body; // req의 body에서 imp_uid, merchant_uid 추출

//     // 액세스 토큰(access token) 발급 받기
//     const getToken = await axios({
//       url: "https://api.iamport.kr/users/getToken",
//       method: "post", // POST method
//       headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
//       data: {
//         imp_key: "6123528723609391", // REST API키
//         imp_secret:
//           "bcf4c659bb721796a41accc009c841574611cf922e67c1a9ae8eed5777db209fe0987ad5849d8b73", // REST API Secret
//       },
//     });
//     const { access_token } = getToken.data.response; // 인증 토큰

//     // imp_uid로 아임포트 서버에서 결제 정보 조회
//     const getPaymentData = await axios({
//       url: `https://api.iamport.kr/payments/${imp_uid}`, // imp_uid 전달
//       method: "get", // GET method
//       headers: { Authorization: access_token }, // 인증 토큰 Authorization header에 추가
//     });
//     const paymentData = getPaymentData.data.response; // 조회한 결제 정보

//     // DB에서 결제되어야 하는 금액 조회
//     const order = await Orders.findById(paymentData.merchant_uid);
//     const amountToBePaid = order.amount; // 결제 되어야 하는 금액

//     // 결제 검증하기
//     const { amount, status } = paymentData;
//     if (amount === amountToBePaid) {
//       // 결제 금액 일치. 결제 된 금액 === 결제 되어야 하는 금액
//       await Orders.findByIdAndUpdate(merchant_uid, { $set: paymentData }); // DB에 결제 정보 저장

//       switch (status) {
//         case "ready": // 가상계좌 발급
//           // DB에 가상계좌 발급 정보 저장
//           const { vbank_num, vbank_date, vbank_name } = paymentData;
//           await Users.findByIdAndUpdate(`${principal.id}` /* 고객 id */, {
//             $set: { vbank_num, vbank_date, vbank_name },
//           });
//           // 가상계좌 발급 안내 문자메시지 발송
//           SMS.send({
//             text: `가상계좌 발급이 성공되었습니다. 계좌 정보 ${vbank_num} \${vbank_date} \${vbank_name}`,
//           });
//           res.send({ status: "vbankIssued", message: "가상계좌 발급 성공" });
//           break;
//         case "paid": // 결제 완료
//           res.send({ status: "success", message: "일반 결제 성공" });
//           break;
//       }
//     } else {
//       // 결제 금액 불일치. 위/변조 된 결제
//       throw { status: "forgery", message: "위조된 결제시도" };
//     }
//   } catch (e) {
//     res.status(400).send(e);
//   }
// });
