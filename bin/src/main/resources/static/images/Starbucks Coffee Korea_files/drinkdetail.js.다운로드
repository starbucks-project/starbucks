// -----------------------------
//  Drink Detail
// -----------------------------
$(document).ready(function () {
    // [나만의 음료로 등록]
    $("#myDrink").on("click", function () {
      console.log("1");
      showPopMyDrink();
    });
  
    // [닫기]
    $(".btn_close").on("click", hidePopMyDrink);
    //나만의 메뉴에 등록
    $(".btn_go_my_drink_step3").on("click", goMyDrinkStep3);
    //$(".btn_myMenuRegister").on("click", myMenuRegister);
    //$(".cartSave").on("click", cartSave);
  });
  /*
  async function cartSave(productId) {
    console.log("productId:"+productId);
  
    let response = await fetch("/user/cartSave/"+productId, {
      method: "post"
    });

    console.log("2");
    let parseResponse = await response.text();
    
    console.log(parseResponse);
    
      if (parseResponse.code === 1) {
        alert("장바구니 담기 성공");
        //history.back();
        location.href = "/auth/drink_detail/"+parseResponse.data.products.id;
      } else {
        alert("저장 실패");
      }
  }
  */
 
  // "나만의 음료로 등록" 팝업 출력
  function showPopMyDrink() {
    // 레이어 팝업 출력
    $(".my_drink_step2").show();
    $(".only_my_drink2").hide();
    $(".only_my_dimm, .only_my_drink").fadeIn();
    $(".only_my_drink")
      .attr("aria-hidden", "false")
      .attr("tabindex", "0")
      .focus();
  }
  
  // "나만의 음료로 등록" 팝업 닫기
  function hidePopMyDrink() {
    $(".only_my_dimm , .only_my_drink , .only_my_drink2")
      .attr("aria-hidden", "true")
      .attr("tabindex", "0")
      .fadeOut();
    $(".myDrink > a").focus();
  }
  
  // "나만의 음료에 등록" 팝업 출력
  function goMyDrinkStep3() {
    console.log("6");
    $(".only_my_drink")
      .attr("aria-hidden", "true")
      .attr("tabindex", "-1")
      .fadeOut();
    console.log("7");
    $(".only_my_drink2")
      .attr("aria-hidden", "false")
      .attr("tabindex", "0")
      .fadeIn();
    console.log("8");
    $("#nickname").focus();
    console.log("9");
  }
  
  let myMenuRegister = async (productId) => {
  
    event.preventDefault();
  
    console.log("productId:"+productId);
  
  let MymenuSaveReqDto = {
    proNickname: document.querySelector("#nickname").value,
    productId: productId
  };
  
  let response = await fetch("/user/mymenuRegi", {
    method: "post",
    body: JSON.stringify(MymenuSaveReqDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8"
    }
  });
  console.log("2");
  let parseResponse = await response.json();
  
  console.log(parseResponse);
  
    if (parseResponse.code === 1) {
      alert("저장 성공");
      //history.back();
      location.href = "/auth/"+parseResponse.data.products.category+"_detail/"+parseResponse.data.products.id;
    } else {
      alert("저장 실패");
      location.href="/auth/login";
    }
  
  }
  