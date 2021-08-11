async function myFunction(str) {
  console.log("0");
  alert("내카드: " + str + " 을 선택하였습니다.");
  let cardId = $("#cardNum_NORMAL option:selected").val();
  console.log("cardId:" + cardId);
  cardInfo(cardId);
  console.log("1");

  console.log("2");

  let response = await fetch("/user/cardInfo/" + cardId, {
    method: "get",
  });

  console.log("3");
  let parseResponse = await response.json();

  console.log(parseResponse);

  if (parseResponse.code === 1) {
    console.log("4");
    let boxEL = document.querySelector(".sel_wrap");

    let popupItem = document.createElement("div");
    popupItem.className = "user_card_wrap";

    let temp = `
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
    boxEL.prepend(popupItem);
  } else {
    alert("cardInfo 뿌리기 실패");
  }
}

/*======================================================*/
function chargepay() {
  const IMP = window.IMP; // 생략해도 괜찮습니다.
  IMP.init("imp68218098"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  let merchantuid = $("#cardNum_NORMAL option:selected").val();
  let produtname = $("#cardNum_NORMAL option:selected").text();
  let productamount = document.querySelector(".charge").value; //결제금액

  let price;
  // IMP.request_pay(param, callback) 호출
  // 변수화
  IMP.request_pay(
    {
      // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: merchantuid, // 상품 PK
      name: produtname + " 카드 충전",
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

/*=================================================================================================*/

function egiftpay() {
  const IMP = window.IMP; // 생략해도 괜찮습니다.
  IMP.init("imp68218098"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  //   let merchantuid = $("#cardNum_NORMAL option:selected").val();
  let productamount = document.querySelector("#price").value;

  let price;
  // IMP.request_pay(param, callback) 호출
  // 변수화
  IMP.request_pay(
    {
      // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "111", // 상품 PK
      name: "e-gift",
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
    applyNum: ""
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
        console.log("결제 실패");
        console.log(rsp);
        // 결제 실패 시 로직,
        alert("결제를 실패했습니다.");
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
