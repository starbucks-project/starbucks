package com.project.starbucksproject.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @GetMapping("/test")
    public String test() {
        return "test/test";
    }

    @GetMapping("/mypage")
    public String mypage() {
        return "user/mypage";
    }

    @GetMapping("/cardCharge")
    public String cardCharge() {
        return "user/cardCharge";
    }

    @GetMapping("/cardRegi")
    public String cardRegi() {
        return "user/cardRegi";
    }

    @GetMapping("/inMyCard")
    public String inMyCard() {
        return "user/inMyCard";
    }

    @GetMapping("/purchaseHistory")
    public String purchaseHistory() {
        return "user/purchaseHistory";
    }
}