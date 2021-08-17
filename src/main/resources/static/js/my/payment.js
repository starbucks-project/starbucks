async function myFunction(str) {
  console.log("0");
  alert("내카드: "+ str + " 을 선택하였습니다." );
  let cardId=$("#cardNum_NORMAL option:selected").val();
  console.log("cardId:"+cardId);
  //cardInfo(cardId);
  console.log("1");
  
  console.log("2");
  
  let response = await fetch("/user/cardInfo/"+cardId, {
    method: "get"
  });

  console.log("3");
  let parseResponse = await response.json();

  console.log(parseResponse);

  if(parseResponse.code === 1){
      console.log("4");
      let boxEL=document.querySelector(".sel_box");
      
      let popupItem = document.createElement("div");
      popupItem.className = "user_card_wrap";
      
      let temp =`
      <figure>
      <i class="representative_icon"><a
      href="javascript:void(0);"></a></i>
      <img alt="" class="cardImgUrl"
      onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';"
      src="https://image.istarbucks.co.kr/cardImg/20190805/005949.png">
      </figure>
      <p>
      <strong class="en cardNum">${parseResponse.data.cardNum}</strong><br>
      <br> 최종 사용일 : 
      <span class="balanceConfirmDate">2021-07-08 13:31:00</span>
      <br> 카드 등록일 : <span class="cardRegDate">${parseResponse.data.createDate}</span>
      </p>
      `;
      
      popupItem.innerHTML = temp;
      boxEL.append(popupItem);
      

  } else {
      alert("cardInfo 뿌리기 실패");
  }
}

//async function cardInfo(cardId) {}
/*=====================================================================*/



function chargepay() {

  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  let produtname = $("#cardNum_NORMAL option:selected").text();
  let cardid = $("#cardNum_NORMAL option:selected").val();
  let productamount = document.querySelector(".charge").value;

  let payreqDto = {
    amount: productamount,
    cardid: cardid,
  };
  var IMP = window.IMP; // 생략 가능
  IMP.init("imp68218098"); // 예: imp00000000s
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
        console.log("결제 성공");
        console.log(rsp);
        // 결제 성공 시 로직,
        successCharge(payreqDto);

        /*
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
              document.location.href = "/user/mypage";
            } else {
              //[3] 아직 제대로 결제가 되지 않았습니다.
              //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
            }
          });         */
      } else {
        console.log(rsp);
        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
      }
    }
  );
}

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

function egiftpay() {
  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  let price = document.querySelector("#price").value;

  let receiverName = document.querySelector("#receiver").value;
  let receiverPhonenum = document.querySelector('#receiverPhonenum').value;
  let reqMsg = document.querySelector("#reqMsg").value;

  let cardcartreqDto = {
    price: price,
    receiverName: receiverName,
    receiverPhonenum: receiverPhonenum,
    reqMsg: reqMsg
  }

  // IMP.request_pay(param, callback) 호출
  var IMP = window.IMP; // 생략 가능
  IMP.init("imp68218098"); // 예: imp00000000s
  // 변수화
  IMP.request_pay(
    {
      // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "merchant_" + new Date().getTime(), // 주문번호
      name: "e-gift",
      amount: price, // 값
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
      console.log(JSON.stringify(cardcartreqDto));
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

// coolSms
async function sendSms(){
  alert('문자 발송 완료!');
  event.preventDefault();

  let receiverPhonenum = document.querySelector('#receiverPhonenum').value;

  let reqMsg = document.querySelector("#reqMsg").value;

  let receiverName = document.querySelector("#receiver").value;

  let price = document.querySelector("#price").value;

  let smsDto = {
    receiverPhonenum : receiverPhonenum,
    message: reqMsg,
    receiverName: receiverName,
    price: price
  };

  console.log(JSON.stringify(smsDto));

  let response = await fetch("/user/egift/sms", {
    method: "post",
    body: JSON.stringify(smsDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8"
    }
  });

  console.log("controller완료!!!");
}