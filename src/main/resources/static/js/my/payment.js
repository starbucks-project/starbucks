async function myFunction(str) {
    console.log("0");
    alert("내카드: "+ str + " 을 선택하였습니다." );
    let cardId=$("#cardNum_NORMAL option:selected").val();
    console.log("cardId:"+cardId);
    cardInfo(cardId);
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
        let boxEL=document.querySelector(".sel_wrap");
     
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
    boxEL.prepend(popupItem);

    } else {
        alert("cardInfo 뿌리기 실패");
    }
}

async function cardInfo(cardId){
      
  }