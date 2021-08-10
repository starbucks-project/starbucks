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

//팝업 동적 코딩
$(document).ready(function () {
    console.log("mymen1");
     $(".btn_pop_close").on("click", function() {
        console.log("mymen9");
        $(".sArea_pop").attr("aria-hidden", "true").attr("tabindex", "0").fadeOut();
        $(".only_my_dimm").attr("aria-hidden", "true").attr("tabindex", "0").fadeOut();
     }
     );
     //$(".btn_show_pop_detail").on("click", myMenuDetail);
     
  });
 
 let myMenuDetail = async (mymenuId) => {
 console.log("mymen2");
 console.log(mymenuId);
 event.preventDefault();
 let response = await fetch(("/user/mymenuPop/"+mymenuId), {
   method: "get"
 });
 console.log("mymen3");
 let parseResponse = await response.json();
 
 console.log(parseResponse);
 
        if(parseResponse.code === 1){
            let boxEL=document.querySelector(".drinkShop_tbl_pagination");
            let outerEL=document.querySelector(".body-inner");
        console.log("mymen4");
         
        let popupItem = document.createElement("div");
        popupItem.id = "mymenu-pop-"+mymenuId;
        popupItem.className = "sArea_pop";
       popupItem.role="dialog";
       popupItem.ariaHidden="false";
       popupItem.tabindex="0";

       let popupItem2 = document.createElement("div");
        popupItem2.className = "only_my_dimm";
        popupItem2.id = "only_my_dimm";
        popupItem2.ariaHidden="false";
        popupItem2.tabIndex="0";
        
       console.log("mymen5");
       let temp =`
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
                                       <img alt="콜링네임" src="/images/calling_name_ttl.png">닉네임 '콜드브루'
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
 }
 
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

     //전체 선택 & 선택 삭제
        //All checkbox
         $("#Allcheck").on("click",function(){ 
             //전체선택 체크박스 클릭 
             console.log("5");
             //해당화면에 전체 checkbox들을 체크해준다 
             if($(".ez-mcheckbox").attr("class")=="ez-mcheckbox ez-checked") { 
                   console.log("6");
                   //해당화면에 모든 checkbox들의 체크를해제시킨다. 
                   $(".ez-mcheckbox").attr("class","ez-mcheckbox").focus(); 
                   console.log("7");
                 } else { 
                   console.log("8");
                   //해당화면에 전체 checkbox들을 체크해준다 
                  $(".ez-mcheckbox").attr("class","ez-mcheckbox ez-checked").focus(); 
                     } 
           });
 
         $(".chkAll checkbox").on("click",function(){ 
             //전체선택 체크박스 클릭 
             console.log("9");
             //해당화면에 전체 checkbox들을 체크해준다 
             $(".ez-mcheckbox").attr("class","ez-mcheckbox ez-checked").focus(); 
             console.log("10");
           });

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
