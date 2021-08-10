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

async function cardInfo(cardId) {}
function chargepay() {
  const IMP = window.IMP; // 생략해도 괜찮습니다.
  IMP.init("imp68218098"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

  let buyername = document.querySelector("#principalname").value;
  let buyeremail = document.querySelector("#principalemail").value;
  let buyertel = document.querySelector("#principaltel").value;

  let merchantuid = $("#cardNum_NORMAL option:selected").val();
  let produtname = $("#cardNum_NORMAL option:selected").text();
  let productamount = document.querySelector(".charge").value;

  // IMP.request_pay(param, callback) 호출
  // 변수화
  IMP.request_pay(
    {
      // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: merchantuid, // 상품 PK
      name: produtname + " 카드 충전",
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
