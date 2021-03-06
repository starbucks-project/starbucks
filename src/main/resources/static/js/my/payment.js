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
      $(".user_card_wrap").remove();
      console.log("5");
      let boxEL=document.querySelector(".sel_box");
      
      let popupItem = document.createElement("div");
      popupItem.className = "user_card_wrap";
      
      let temp =`
      <figure>
      <i class="representative_icon"><a
      href="javascript:void(0);"></a></i>
      <img alt="" class="cardImgUrl"
      onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';"
      src="/images/${parseResponse.data.cardImage}">
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
  let message = document.querySelector("#reqMsg").value;

  if (receiverName == "") {
    alert("받는 사람을 입력하세요");
    form.receiverName.focus();
    return false;
  }

  if (receiverPhonenum == "" ) {
    alert("받는 사람의 번호를 정확히 입력해주세요");
    form.receiverPhonenum.focus();
    return false;
  }

  let numRegExp = /^[0-9]{11}$/;  //pin번호 유효성 검사
    if (!numRegExp.test(receiverPhonenum)) {
      alert("번호는 11자리로 입력해주세요");
      form.receiverPhonenum.focus();
      return false;
    }  

  let cardcartreqDto = {
    price: price,
    receiverName: receiverName,
    receiverPhonenum: receiverPhonenum,
    message: message
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
      sendSms();
      location.href = "/user/purchaseHistory";
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

  alert("controller완료!!!");
 //location.href = "/user/purchaseHistory";
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
  alert('문자 발송 완료!');
  
}
/*================================================================================*/
// Cart.jsp "선택상품 결제하기"
function cartpay2() {
  let cardId= $("#cardNum_NORMAL_sel option:selected").val();              //결제할 카드 아이디
  if(cardId===null || cardId==="") {
      alert("결제할 카드를 선택해주세요");
      return false;
  }
  console.log('1');
  let length = $(".ez-checked").length;
  let arrProductId = new Array();
  $(".ez-check").each(function () {
    arrProductId.push($(this).attr("id"));
  });
  let arrCartId = new Array();
  $(".ez-checked").each(function () {
    arrCartId.push($(this).attr("id"));
  });
  let productamount = document.querySelector(".checkedTotalAmount").textContent; //결제금액
  let saledReqDto = {
    arrProductId: arrProductId, //productId
    arrCartId: arrCartId, // cartId
    length: length,
    productamount: productamount,
    cardId: cardId
  };
  console.log("2");
  success2(saledReqDto);
  
}
async function success2(saledReqDto) {
  console.log("확인", saledReqDto);
  alert("결제금액:"+saledReqDto.productamount);
  let response = await fetch("/user/purchaseHistory", {
    method: "post",
    body: JSON.stringify(saledReqDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    }
  });
  let parseResponse = await response.json();
console.log(parseResponse);
if(parseResponse.code === 0){
  alert(parseResponse.msg);
  return false;
}
  
  alert("결제 성공");
  location.href = "/user/purchaseHistory";
} //결제 성공시 실행되는 함수 end
/*================================================================================*/
// Cart.jsp "전체상품 결제하기"
function cartpay3() {
  let cardId= $("#cardNum_NORMAL_sel option:selected").val();              //결제할 카드 아이디
  if(cardId===null || cardId==="") {
      alert("결제할 카드를 선택해주세요");
      return false;
  }
  console.log('1');
  allcheck();
  
  let length = $(".ez-checked").length;
  let arrProductId = new Array();
  $(".ez-check").each(function () {
    arrProductId.push($(this).attr("id"));
  });
  let arrCartId = new Array();
  $(".ez-checked").each(function () {
    arrCartId.push($(this).attr("id"));
  });
  let productamount = document.querySelector(".checkedTotalAmount").textContent; //결제금액
  let saledReqDtoAll = {
    arrProductId: arrProductId, //productId
    arrCartId: arrCartId, // cartId
    length: length,
    productamount: productamount,
    cardId: cardId
  };
  console.log("2");
  success2(saledReqDtoAll);
  
}