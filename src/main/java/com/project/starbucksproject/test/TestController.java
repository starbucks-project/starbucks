package com.project.starbucksproject.test;

import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class TestController {

    private final UserRepository userRepository;

    @GetMapping("/test")
    public String test() {
        return "test/test";
    } 

    @GetMapping("/user/userinfo")
    public String userInfo() {
        return "user/userinfoUpdateForm";
    }


    @GetMapping("/test/paging")
    public @ResponseBody Page<User> page(int page){
        return userRepository.findAll(PageRequest.of(page, 3));
    }
}