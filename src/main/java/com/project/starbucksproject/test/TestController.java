package com.project.starbucksproject.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController { 
 
    @GetMapping("/test")
    public String test() {
        return "test/test";
    } 

<<<<<<< HEAD
=======
    @GetMapping("/store")
    public String store() {
        return "auth/store";
    }

    @GetMapping("/mypage")
    public String mypage(){
        return "user/mypage";
    }

    @GetMapping("/cardCharge")
    public String cardCharge(){
        return "user/cardCharge";
    }

    @GetMapping("/cardRegi")
    public String cardRegi(){
        return "user/cardRegi";
    }

    @GetMapping("/inMyCard")
    public String inMyCard(){
        return "user/inMyCard";
    }

    @GetMapping("/purchaseHistory")
    public String purchaseHistory(){
        return "user/purchaseHistory";
    }
>>>>>>> efc7c23a1ed2590899677767a219b70ebfd96cca
}