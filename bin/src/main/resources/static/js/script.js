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
  // [????????? ????????? ??????]
  $("#myDrink").on("click", function () {
    console.log("1");
    showPopMyDrink();
  });

  // [??????]
  $(".btn_close").on("click", hidePopMyDrink);
  //????????? ????????? ??????
  $(".btn_go_my_drink_step3").on("click", goMyDrinkStep3);
  //$(".btn_myMenuRegister").on("click", myMenuRegister);
});

/**=======================
   * =========????????? ?????????========
   ==================================*/

const reader = new FileReader();

reader.onload = (readerEvent) => {
  document
    .querySelector("#img_section")
    .setAttribute("src", readerEvent.target.result);
  //????????? ?????? ???????????? ???????????? img_section??? src ????????? readerEvent??? ???????????? ?????????
};

document
  .querySelector("#upload_file")
  .addEventListener("change", (changeEvent) => {
    //upload_file ??? ????????????????????? ??????

    const imgFile = changeEvent.target.files[0];
    reader.readAsDataURL(imgFile);
    //???????????? ???????????? URL??? reader??? ??????
  });

// -----------------------------
//  Card Register
// -----------------------------

async function cardRegi() {
  event.preventDefault();

  console.log("1");
  let CR2 = document.querySelector("#CR2").value;
  console.log(CR2);
  let CR2_2 = document.querySelector("#CR2_2").value;
  let CR2_3 = document.querySelector("#CR2_3").value;
  let CR2_4 = document.querySelector("#CR2_4").value;
  let cardNum = CR2 + "-" + CR2_2 + "-" + CR2_3 + "-" + CR2_4;

  console.log("3");
  let cardSaveDto = {
    cardName: document.querySelector("#CR1").value,
    cardNum: cardNum,
    pin: document.querySelector("#CR3").value,
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
    alert("???????????? ??????");
    location.href = "/user/inMyCard";
  } else {
    console.log("7");
    alert("???????????? ??????");
  }
}
// -----------------------------
// search by name
// -----------------------------
async function searchByName() {
  alert("sTop");
  event.preventDefault();

  let searchReqDto = {
    name: document.querySelector("#name").value,
    // userId: userId,
  };

  console.log(JSON.stringify(searchReqDto));

  let response = await fetch("/manager/searchname", {
    method: "post",
    body: JSON.stringify(searchReqDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  let parseResponse = await response.json();
  console.log(parseResponse);

  if (parseResponse.code === 1) {
    let userBoxEl = document.querySelector("#notice");
    let userItem = document.createElement("tr");
    // userItem.id = "user-" + parseResponse.data.id;

    console.log(parseResponse.data);

    let temp = `
      
      <td>${parseResponse.data.id}</td>
      <td class="left"><a>${parseResponse.data.name}</a></td>
      <td><a>${parseResponse.data.email}</a></td>
      <td><a>${parseResponse.data.createDate}</a></td>
      <td>0</td>
      
    `;
    userItem.innerHTML = temp;

    userBoxEl.innerHTML = ""; // userBoxEl ??? html ?????? ?????????

    userBoxEl.prepend(userItem);
  } else {
    alert("?????? ????????? ???????????? ???????????? ????????????.");
    location.reload();
  }
}

// -----------------------------
// ???????????? ?????? ??????
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
  console.log(parseResponse);

  if (parseResponse.code === 1) {
    let userBoxEl = document.querySelector("#notice");
    let userItem = document.createElement("tr");
    // userItem.id = "user-" + parseResponse.data.id;

    console.log(parseResponse.data);

    let temp = `
      
      <td>${parseResponse.data.id}</td>
      <td class="left"><a>${parseResponse.data.name}</a></td>
      <td><a>${parseResponse.data.email}</a></td>
      <td><a>${parseResponse.data.createDate}</a></td>
      <td>0</td>
      
    `;
    userItem.innerHTML = temp;

    userBoxEl.innerHTML = ""; // userBoxEl ??? html ?????? ?????????

    <c:forEach var="saledItem" items="${parseResponse.data}">
      userBoxEl.prepend(userItem);
    </c:forEach>;
  } else {
    alert("?????? ????????? ???????????? ???????????? ????????????.");
    location.reload();
  }
}
