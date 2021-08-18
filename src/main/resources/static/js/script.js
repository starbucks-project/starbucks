(function ($) {
  "use strict";

  /* ========================================================================= */
  /*	Page Preloader
  /* ========================================================================= */

  // window.load = function () {
  // 	document.getElementById('preloader').style.display = 'none';
  // }
});

$(window).on("load", function () {
  $("#preloader").fadeOut("slow", function () {
    $(this).remove();
  });
});

//Hero Slider
$(".hero-slider").slick({
  autoplay: true,
  infinite: true,
  arrows: true,
  prevArrow: "<button type='button' class='prevArrow'></button>",
  nextArrow: "<button type='button' class='nextArrow'></button>",
  dots: false,
  autoplaySpeed: 7000,
  pauseOnFocus: false,
  pauseOnHover: false,
});
$(".hero-slider").slickAnimation();

/* ========================================================================= */
/*	Header Scroll Background Change
  /* ========================================================================= */

$(window).scroll(function () {
  var scroll = $(window).scrollTop();
  //console.log(scroll);
  if (scroll > 200) {
    //console.log('a');
    $(".navigation").addClass("sticky-header");
  } else {
    //console.log('a');
    $(".navigation").removeClass("sticky-header");
  }
});

/* ========================================================================= */
/*	Portfolio Filtering Hook
  /* =========================================================================  */

// filter
setTimeout(function () {
  var containerEl = document.querySelector(".filtr-container");
  var filterizd;
  if (containerEl) {
    filterizd = $(".filtr-container").filterizr({});
  }
}, 500);

/* ========================================================================= */
/*	Testimonial Carousel
  /* =========================================================================  */

//Init the slider
$(".testimonial-slider").slick({
  infinite: true,
  arrows: false,
  autoplay: true,
  autoplaySpeed: 2000,
});

/* ========================================================================= */
/*	Clients Slider Carousel
  /* =========================================================================  */

//Init the slider
$(".clients-logo-slider").slick({
  infinite: true,
  arrows: false,
  autoplay: true,
  autoplaySpeed: 2000,
  slidesToShow: 5,
  slidesToScroll: 1,
});

/* ========================================================================= */
/*	Company Slider Carousel
  /* =========================================================================  */
$(".company-gallery").slick({
  infinite: true,
  arrows: false,
  autoplay: true,
  autoplaySpeed: 2000,
  slidesToShow: 5,
  slidesToScroll: 1,
});

/* ========================================================================= */
/*   Contact Form Validating
  /* ========================================================================= */

$("#contact-form").validate({
  rules: {
    name: {
      required: true,
      minlength: 4,
    },
    email: {
      required: true,
      email: true,
    },
    subject: {
      required: false,
    },
    message: {
      required: true,
    },
  },
  messages: {
    user_name: {
      required: "Come on, you have a name don't you?",
      minlength: "Your name must consist of at least 2 characters",
    },
    email: {
      required: "Please put your email address",
    },
    message: {
      required: "Put some messages here?",
      minlength: "Your name must consist of at least 2 characters",
    },
  },
  submitHandler: function (form) {
    $(form).ajaxSubmit({
      type: "POST",
      data: $(form).serialize(),
      url: "sendmail.php",
      success: function () {
        $("#contact-form #success").fadeIn();
      },
      error: function () {
        $("#contact-form #error").fadeIn();
      },
    });
  },
});

/* ========================================================================= */
/*	On scroll fade/bounce effect
  /* ========================================================================= */
var scroll = new SmoothScroll('a[href*="#"]');

// -----------------------------
//  Count Up
// -----------------------------
function counter() {
  if ($(".counter").length !== 0) {
    var oTop = $(".counter").offset().top - window.innerHeight;
  }
  if ($(window).scrollTop() > oTop) {
    $(".counter").each(function () {
      var $this = $(this),
        countTo = $this.attr("data-count");
      $({
        countNum: $this.text(),
      }).animate(
        {
          countNum: countTo,
        },
        {
          duration: 1000,
          easing: "swing",
          step: function () {
            $this.text(Math.floor(this.countNum));
          },
          complete: function () {
            $this.text(this.countNum);
          },
        }
      );
    });
  }
}
// -----------------------------
//  On Scroll
// -----------------------------
// $(window).scroll(function () {
//   counter();
// })(jQuery);

// -----------------------------
//  Drink List
// -----------------------------

$(document).ready(function () {
  $("div.product_list > dl > dd > ul > li").bind("click", function () {
    goUrl = $(this).find("a").attr("href");
    location.href = goUrl;
  });
});

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
});

/**=======================
   * =========이미지 업로드========
   ==================================*/

const reader = new FileReader();

reader.onload = (readerEvent) => {
  document
    .querySelector("#img_section")
    .setAttribute("src", readerEvent.target.result);
  //파일을 읽는 이벤트가 발생하면 img_section의 src 속성을 readerEvent의 결과물로 대체함
};

document
  .querySelector("#upload_file")
  .addEventListener("change", (changeEvent) => {
    //upload_file 에 이벤트리스너를 장착

    const imgFile = changeEvent.target.files[0];
    reader.readAsDataURL(imgFile);
    //업로드한 이미지의 URL을 reader에 등록
  });

// -----------------------------
//  Card Register
// -----------------------------

async function cardRegi() {
  event.preventDefault();
  alert("cardRegi");
  console.log("1");
  let cardName = document.querySelector("#CR1").value;

  let CR2 = document.querySelector("#CR2").value;
  let CR2_2 = document.querySelector("#CR2_2").value;
  let CR2_3 = document.querySelector("#CR2_3").value;
  let CR2_4 = document.querySelector("#CR2_4").value;
  let numRegExp = /^[0-9]{4}$/; //pin번호 유효성 검사
  if (!numRegExp.test(CR2)) {
    alert("번호는 각각 4자리로 입력해야합니다!");
    form.CR2.focus();
    return false;
  }
  if (!numRegExp.test(CR2_2)) {
    alert("번호는 각각 4자리로 입력해야합니다!");
    form.CR2_2.focus();
    return false;
  }
  if (!numRegExp.test(CR2_3)) {
    alert("번호는 각각 4자리로 입력해야합니다!");
    form.CR2_3.focus();
    return false;
  }
  if (!numRegExp.test(CR2_4)) {
    alert("번호는 각각 4자리로 입력해야합니다!");
    form.CR2_4.focus();
    return false;
  }

  let cardNum = CR2 + "-" + CR2_2 + "-" + CR2_3 + "-" + CR2_4;

  let pin = document.querySelector("#CR3").value;
  let pinRegExp = /^[0-9]{8}$/; //pin번호 유효성 검사
  if (!pinRegExp.test(pin)) {
    alert("pin번호는 8자리로 입력해야합니다!");
    //form.pin.value = "";
    form.pin.focus();
    return false;
  }

  console.log("3");
  let cardSaveDto = {
    cardName: cardName,
    cardNum: cardNum,
    pin: pin,
  };

  console.log("4");
  let response = await fetch("/user/cardRegi", {
    method: "post",
    body: JSON.stringify(cardSaveDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  console.log("5");
  let parseResponse = await response.text();

  if (parseResponse === "ok") {
    console.log("6");
    alert("카드저장 성공");
    location.href = "/user/inMyCard";
  } else {
    console.log("7");
    alert("카드저장 실패");
  }
}

// -----------------------------
// 판매현황 이름 검색
// -----------------------------
async function saledItemByName() {
  event.preventDefault();

  let searchReqDto = {
    name: document.querySelector("#name").value,
    // userId: userId,
  };

  console.log(JSON.stringify(searchReqDto));

  let response = await fetch("/manager/saleditemsByName", {
    method: "post",
    body: JSON.stringify(searchReqDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  let parseResponse = await response.json();
  console.log(1, parseResponse);

  if (parseResponse.code === 1) {
    let userBoxEl = document.querySelector("#notice");
    console.log(parseResponse.data);

    let saleditems = parseResponse.data;

    userBoxEl.innerHTML = ""; // userBoxEl 안 html 태그 날리기

    saleditems.forEach((saled) => {
      let userItem = document.createElement("tr");
      let temp = `
      <td>${saled.id}</td>     
      <td>${saled.user.name}</td>
      <td class="left"><a>${saled.product.productName}</a></td>     
      <td>${saled.date}</td>     
      <td>${saled.product.price}</td> 
      <td>1</td>    
    `;

      userItem.innerHTML = temp;
      userBoxEl.prepend(userItem);
    });
  } else if (parseResponse.code == -1) {
    alert("해당 이름의 사용자가 존재하지 않습니다.");
    location.reload();
  } else if (parseResponse.code == 0) {
    alert("세션이 만료되었습니다. 다시 로그인 해주세요.");
    location.href = "/auth/manager/loginform";
  }
}

// ===========================
// category search
// ===========================
async function categorySearch() {
  event.preventDefault();

  let categoryDto = {
    category: document.querySelector("#category").value,
  };

  console.log(JSON.stringify(categoryDto));

  let respCategory = await fetch("/manager/searchCategory", {
    method: "post",
    body: JSON.stringify(categoryDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  let parseRespCategory = await respCategory.json();
  console.log(parseRespCategory);

  if (parseRespCategory.code == 1) {
    let itemBoxEL = document.querySelector("#notice");
    console.log(parseRespCategory.data);
    itemBoxEL.innerHTML = "";

    let itemsByCategory = parseRespCategory.data;

    itemsByCategory.forEach((items) => {
      let itemLine = document.createElement("tr");
      let innerLine = `
      <td>${items.id}</td>     
      <td>${items.user.name}</td>
      <td class="left"><a>${items.product.productName}</a></td>     
      <td>${items.date}</td>     
      <td>${items.product.price}</td> 
      <td>1</td>  
      `;

      itemLine.innerHTML = innerLine;
      itemBoxEL.prepend(itemLine);
    });
  } else if (parseRespCategory.code == -1) {
    alert("해당 카테고리 제품이 없습니다.");
    location.reload();
  } else {
    alert("세션이 만료되었습니다. 다시 로그인해주세요.");
    location.href = "/auth/manager/loginform";
  }
}
