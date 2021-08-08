package com.project.starbucksproject.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @GetMapping("/test")
    public String test() {
        return "test/test";
    }

    @GetMapping("/user/mypage")
    public String mypage() {
        return "user/mypage";
    }

    @GetMapping("/mymenu_pop")
    public String mymenuPop() {
        return "user/mymenu_popup";
    }

    @GetMapping("/user/cardCharge")
    public String cardCharge() {
        return "user/cardCharge";
    }

    @GetMapping("/user/cardRegi")
    public String cardRegi() {
        return "user/cardRegi";
    }

    @GetMapping("/user/inMyCard")
    public String inMyCard() {
        return "user/inMyCard";
    }

    //@GetMapping("/user/cart")
    //public String cart() {
    //    return "user/Cart";
    //}

    @GetMapping("/user/egift")
    public String eGift() {
        return "user/eGift";
    }

    @GetMapping("/user/purchaseHistory")
    public String purchaseHistory() {
        return "user/purchaseHistory";
    }

    @GetMapping("/user/userinfo")
    public String userInfo() {
        return "user/userinfoUpdateForm";
    }

    @GetMapping("/user/mymenu_re1")
    public String mymenuRegister1() {
        return "user/mymenu_register1";
    }

    @GetMapping("/user/mymenu_re2")
    public String mymenuRegister2() {
        return "user/mymenu_register2";
    }
}