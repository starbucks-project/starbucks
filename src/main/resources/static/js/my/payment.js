var IMP = window.IMP; // 생략 가능
IMP.init("imp68218098"); // 예: imp00000000

function chargepay() {
  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  let produtname = $("#cardNum_NORMAL option:selected").text();
  let cardid = $("#cardNum_NORMAL option:selected").value();
  let productamount = document.querySelector(".charge").value;

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
        let payDto = {
          imp_uid: rsp.imp_uid,
          merchant_uid: rsp.merchant_uid,
          amount: productamount,
          cardid: cardid,
        };
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
              document.location.href = "/user/mypage";
            } else {
              //[3] 아직 제대로 결제가 되지 않았습니다.
              //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
            }
          });
      } else {
        console.log(rsp);
        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
      }
    }
  );
}

/*===================================================================================================*/

function egiftpay() {
  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  //   let merchantuid = $("#cardNum_NORMAL option:selected").val();
  let productamount = document.querySelector("#price").value;

  // IMP.request_pay(param, callback) 결제창 호출
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
      } else {
        console.log(rsp);
        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
      }
    }
  );
}

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
