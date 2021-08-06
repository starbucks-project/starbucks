(function ($) {
  "use strict";

  /* ========================================================================= */
  /*	Page Preloader
  /* ========================================================================= */

  // window.load = function () {
  // 	document.getElementById('preloader').style.display = 'none';
  // }

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
  $(window).scroll(function () {
    counter();
  });
})(jQuery);

// -----------------------------
//  Drink List
// -----------------------------
$(document).ready(function () {
  $("div.product_list > dl > dd > ul > li").bind("click", function () {
    goUrl = $(this).find("a").attr("href");
    location.href = goUrl;
  });

  // 음료 - 카테고리 별 - 사진으로 보기 & 영양정보로 보기
  $("dl.product_view_tab01 > dt > a:not(.selected)").parent().next().hide();
  $("dl.product_view_tab01 > dt > a").bind("click", function () {
    $("dl.product_view_tab01 > dt > a").removeClass("selected");
    $(this).addClass("selected");
    $("dl.product_view_tab01 > dd").hide();
    $(this).parent().next().show();
    return false;
  });

  // 음료 - 서비스 별 - 사진으로 보기 & 영양정보로 보기
  $("dl.product_view_tab02 > dt > a:not(.selected)").parent().next().hide();
  $("dl.product_view_tab02 > dt > a").bind("click", function () {
    $("dl.product_view_tab02 > dt > a").removeClass("selected");
    $(this).addClass("selected");
    $("dl.product_view_tab02 > dd").hide();
    $(this).parent().next().show();
    return false;
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
  $(".btn_myMenuRegister").on("click", myMenuRegister);
});

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

async function myMenuRegister() {
  event.preventDefault();

  let title = document.querySelector("#title").value;
  let content = document.querySelector("#content").value;

  let saveDto = {
    title: title,
    content: content,
  };

  let response = await fetch("/post", {
    method: "post",
    body: JSON.stringify(saveDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  let parseResponse = await response.text();

  if (parseResponse === "ok") {
    alert("저장 성공");
    location.href = "/";
  } else {
    alert("저장 실패");
    location.href = "/auth/loginForm";
  }
}

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
//  Mymenu Popup
// -----------------------------
