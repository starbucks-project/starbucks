// $(document).ready(function () {

// [나만의 메뉴 팝업]
// $("#btn_show_pop_detail").on("click", function () {
//         console.log("1");
//    			//showPopMyMenu();
//         myMenuDetail();
//    	      });
// [닫기]
// $(".btn_pop_close").on("click", hidePopMyMenu);
// });

/*============================= mymenu 팝업 ================================== */
//팝업 동적 코딩
$(document).ready(function () {
  console.log("mymen1");
  $(".btn_pop_close").on("click", function () {
    console.log("mymen9");
    $(".sArea_pop").attr("aria-hidden", "true").attr("tabindex", "0").fadeOut();
    $(".only_my_dimm")
      .attr("aria-hidden", "true")
      .attr("tabindex", "0")
      .fadeOut();
  });
  //$(".btn_show_pop_detail").on("click", myMenuDetail);
});

let myMenuDetail = async (mymenuId) => {
  console.log("mymen2");
  console.log(mymenuId);
  event.preventDefault();
  let response = await fetch("/user/mymenuPop/" + mymenuId, {
    method: "get",
  });
  console.log("mymen3");
  let parseResponse = await response.json();

  console.log(parseResponse);

  if (parseResponse.code === 1) {
    let boxEL = document.querySelector(".drinkShop_tbl_pagination");
    let outerEL = document.querySelector(".body-inner");
    console.log("mymen4");

    let popupItem = document.createElement("div");
    popupItem.id = "mymenu-pop-" + mymenuId;
    popupItem.className = "sArea_pop";
    popupItem.role = "dialog";
    popupItem.ariaHidden = "false";
    popupItem.tabindex = "0";

    let popupItem2 = document.createElement("div");
    popupItem2.className = "only_my_dimm";
    popupItem2.id = "only_my_dimm";
    popupItem2.ariaHidden = "false";
    popupItem2.tabIndex = "0";

    console.log("mymen5");
    let temp = `
         <p class="btn_pop_close"><a href="javascript:void(0)" class="btn_pop_close" role="button">닫기</a></p>
                                   <section class="sArea_pop_inner">
                                   <!-- 내용 -->
                                   <div id="landing_wrap">
                                    <div class="landing_inner_wrap">
                                     <header class="landing_ttl">
                                       <p class="en">MY FAVORITE DRINK</p>
                                       <h1>${parseResponse.data.productName}</h1>
                                     </header>
                                     <p class="calling_name_ttl">
                                       <img alt="콜링네임" src="/images/calling_name_ttl.png">${parseResponse.msg}
                                     </p>
                                     <p class="landing_comments_date">${parseResponse.data.createDate}</p>
                                     <div class="landing_conts_wrap">
                                       <div class="landing_conts_img">
                                         <img src="/images/${parseResponse.data.category}_list/${parseResponse.data.productImg}">
                                       </div>
                                       <div class="landing_conts_txt">
                                         <dl>
                                           <dt>기본 음료</dt>
                                           <dd>${parseResponse.data.productName}</dd>
                                         </dl>
                                         <div class="btn_bev_info">
                                           <p><a href="/auth/${parseResponse.data.category}_detail/${parseResponse.data.id}">음료 정보</a></p>
                                         </div>
                                       </div>
                                     </div>
                                   </div>
                                 </div>
       `;

    console.log("mymen6");
    popupItem.innerHTML = temp;
    outerEL.append(popupItem2);
    boxEL.append(popupItem);
    $(".btn_pop_close").on("click", hidePopMyMenu);
    console.log("mymen7");
  }
};

/*
   // "나만의 메뉴 자세히보기" 팝업 출력
   function showPopMyMenu() {
     // 레이어 팝업 출력
        console.log("2");
        $(".sArea_pop").show();
        console.log("3");
        $(".only_my_dimm, .sArea_pop").fadeIn();
        console.log("4");
        $(".sArea_pop").attr("aria-hidden","false").attr("tabindex","0").focus(); 
     }
*/

// "나만의 메뉴 자세히보기" 팝업 닫기
function hidePopMyMenu() {
  console.log("mymen9");
   $(".sArea_pop, .only_my_dimm").attr("aria-hidden", "true").attr("tabindex", "0").fadeOut();
   $(".btn_show_pop_detail > button").focus(); 
}
/*===================================================================*/
//전체 선택 & 선택 삭제  - mymenu page
  //All checkbox
  $("#mAllcheck").on("click",mallcheck);
  function mallcheck() {
    let checkbox = new Array();
    $(".ez-mcheckbox").each(function () {
      checkbox .push($(this).attr("id"));
    });
     //전체선택 체크박스 클릭 
     console.log("5");
     //해당화면에 전체 checkbox들을 체크해준다 
     if($(".ez-mcheckbox.0").attr("class")=="ez-mcheckbox ez-checked 0") { 
           console.log("6");
           for (let i = 0; i <= checkbox.length; i++) {
           $(".ez-mcheckbox."+i).attr("class","ez-mcheckbox"+" "+i).focus();
           }
           console.log("7");
         } else { 
           console.log("8");
          for (let i = 0; i <= checkbox.length; i++) {
          $(".ez-mcheckbox."+i).attr("class","ez-mcheckbox ez-checked"+" "+i).focus(); 
          }
          console.log("8-2");
             } 
   }

   function mcheck(i) {
    //선택 체크박스 클릭 
    console.log("전달받은 값: "+i);
    let mcheckbox=".ez-mcheckbox."+i;
    let mcheckbox_checked="ez-mcheckbox ez-checked"+" "+i;

    let checkbox = new Array();
    $(".ez-mcheckbox").each(function () {
      checkbox .push($(this).attr("id"));
    });
    
    if($(mcheckbox).attr("class")==mcheckbox_checked) { 
          console.log("check2");
          //checkbox들의 체크를 해제시킨다. 
          $(".ez-mcheckbox.0").attr("class","ez-mcheckbox 0").focus();
          $(mcheckbox).attr("class","ez-mcheckbox"+" "+i).focus();
          console.log("check3");
          for (let j = 1; j <= checkbox.length; j++) {
            if($(".ez-mcheckbox."+j).attr("class")=="ez-mcheckbox ez-checked"+" "+j) { 
              $(".ez-mcheckbox.0").attr("class","ez-mcheckbox ez-checked 0").focus(); 
            }//end if
          }//end for
        } else { 
          console.log("check4");
          //checkbox들을 체크해준다 
         $(".ez-mcheckbox.0").attr("class","ez-mcheckbox ez-checked 0").focus(); 
         $(mcheckbox).attr("class",mcheckbox_checked).focus(); 
         console.log("check5");
            } 
  }

 /*===================================================================*/
//전체 선택 & 선택 삭제  - Cart page
  //All checkbox
   $("#Allcheck").on("click",allcheck);

/*
   for (let i = 0; i < checkbox.length; i++) {
     let element = "#check_"+(i+1);

     $(element).on("click",check(i+1));
   }
*/
//   $("#check_1").on("click",check);
//   $("#check_2").on("click",check);

     function allcheck() {
      let checkbox = new Array();
      $(".ez-mcheck").each(function () {
        checkbox .push($(this).attr("id"));
      });
       //전체선택 체크박스 클릭 
       console.log("5");
       //해당화면에 전체 checkbox들을 체크해준다 
       if($(".ez-mcheckbox.0").attr("class")=="ez-mcheckbox ez-checked 0") { 
             console.log("6");
             //해당화면에 모든 checkbox들의 체크를해제시킨다. 
             //$(".ez-mcheckbox.0").attr("class","ez-mcheckbox 0").focus();
             for (let i = 0; i <= checkbox.length; i++) {
             $(".ez-mcheckbox."+i).attr("class","ez-mcheckbox"+" "+i).focus();
             $(".ez-mcheck."+i).attr("class","ez-mcheck"+" "+i).focus();
             }
             total();
             console.log("7");
           } else { 
             console.log("8");
             //해당화면에 전체 checkbox들을 체크해준다 
            //$(".ez-mcheckbox.0").attr("class","ez-mcheckbox ez-checked 0").focus(); 
            for (let i = 0; i <= checkbox.length; i++) {
            $(".ez-mcheckbox."+i).attr("class","ez-mcheckbox ez-checked"+" "+i).focus(); 
            $(".ez-mcheck."+i).attr("class","ez-mcheck ez-check"+" "+i).focus(); 
            }
            total();
            console.log("8-2");
               } 
     }

     function check(i) {
      //선택 체크박스 클릭 
      console.log("전달받은 값: "+i);
      let mcheckbox=".ez-mcheckbox."+i;
      console.log(mcheckbox);
      let mcheckbox_checked="ez-mcheckbox ez-checked"+" "+i;
      console.log(mcheckbox_checked);

      let mcheck=".ez-mcheck."+i;
      let mcheck_checked="ez-mcheck ez-check"+" "+i;
      
      if($(mcheckbox).attr("class")==mcheckbox_checked) { 
            console.log("check2");
            //checkbox들의 체크를 해제시킨다. 
            $(".ez-mcheckbox.0").attr("class","ez-mcheckbox 0").focus();
            $(mcheckbox).attr("class","ez-mcheckbox"+" "+i).focus();
            $(mcheck).attr("class","ez-mcheck"+" "+i).focus();
            total();
            console.log("check3");
          } else { 
            console.log("check4");
            //checkbox들을 체크해준다 
           $(".ez-mcheckbox.0").attr("class","ez-mcheckbox ez-checked 0").focus(); 
           $(mcheckbox).attr("class",mcheckbox_checked).focus(); 
           $(mcheck).attr("class",mcheck_checked).focus(); 
           total();
           console.log("check5");
              } 
    }

      //$(".ez-mcheck").attr('class').change(total());

  // 나만의 음료 [부분선택]
	

    
    //선택된 항목에 대한 총합계(Cart.jsp기능)
    function total(){
      let arrProductprice = new Array();
       $(".ez-check").each(function() {
            arrProductprice.push($(this).attr('name'));
        });
      let sum=0;
      arrProductprice.forEach(element => {
        element=parseInt(element);
        sum+=element;
      });
      console.log(sum);
      $(".checkedTotalAmount").text(sum);
    }

   $(".chkAll checkbox").on("click",function(){ 
       //전체선택 체크박스 클릭 
       console.log("9");
       //해당화면에 전체 checkbox들을 체크해준다 
       $(".ez-mcheckbox").attr("class","ez-mcheckbox ez-checked").focus(); 
       console.log("10");
     });

/*=============================mymenu 삭제하기================================== */
  //mymenu 삭제하기   
  async function deleteMymenu(){
      console.log("delete 1");
      //let mymenuEL = document.querySelector("#my-menu-"+commentId);
      let length=$(".ez-checked").length;
      let arr = new Array();
      $(".ez-checked").each(function() {
          arr.push($(this).attr('id'));
      });
      
      let mymenuDelReqDto = {
  arr: arr,
  length: length
  };

      console.log(length);
      console.log("delete 2");
      if(length === 1 || length === 0) {
          alert("선택된 글이 없습니다");
      } else {
          console.log("delete 3");
          console.log(mymenuDelReqDto);
          console.log(JSON.stringify(mymenuDelReqDto));
          let response = await fetch("/user/mymenuDel", {
              method: "delete",
              body: JSON.stringify(mymenuDelReqDto),
        headers: {
      "Content-Type": "application/json; charset=utf-8"
        }
          });
          
          let parseResponse = await response.text();
          console.log(parseResponse);    
          if(parseResponse === "ok"){
              alert("삭제성공");
              location.reload();
              //let deleteEL = document.querySelector("#reply-"+commentId);
              //deleteEL.remove();
              //console.log(deleteEL);
          } else {
              alert("삭제실패");
          }
          
      }
  }

/*============================= cart 삭제하기 ================================== */
//cart 삭제하기   
async function deleteCart(){
  console.log("delete 1");
  let length=$(".ez-checked").length;
  let arr = new Array();
  $(".ez-checked").each(function() {
      arr.push($(this).attr('id'));
  });
  
  let cartDelReqDto = {
       arr: arr,
        length: length
        };

  console.log(length);
  console.log("delete 2");
  if(length === 1 || length === 0) {
      alert("선택된 글이 없습니다");
  } else {
      console.log("delete 3");
      console.log(cartDelReqDto);
      console.log(JSON.stringify(cartDelReqDto));
      let response = await fetch("/user/cartDel", {
          method: "delete",
          body: JSON.stringify(cartDelReqDto),
    headers: {
  "Content-Type": "application/json; charset=utf-8"
    }
      });
      
      let parseResponse = await response.text();
      console.log(parseResponse);    
      if(parseResponse === "ok"){
          alert("삭제성공");
          location.reload();
      } else {
          alert("삭제실패");
      }
      
  }
}