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

    @GetMapping("/user/cardCharge")
    public String cardCharge() {
        return "user/cardCharge";
    }

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

}