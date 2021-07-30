package com.project.starbucksproject.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @GetMapping("/test")
    public String test() {
        return "test/test";
    }

    @GetMapping("/store")
    public String store() {
        return "auth/store";
    }
}