package com.project.starbucksproject.web;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.manager.Manager;
import com.project.starbucksproject.domain.manager.ManagerRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class UserController {

  // DI
  private final UserRepository userRepository;
  private final HttpSession session;
  private final ManagerRepository managerRepository;

  @GetMapping("/auth/login")
  public String loginForm() {
    return "auth/loginForm";
  }

  @GetMapping("/auth/manager/loginform")
  public String managerLoginForm() {
    return "auth/managerLoginForm";
  }

  @GetMapping("/menu")
  public String menu() {
    return "auth/menu";
  }

  @GetMapping("/store")
  public String store() {
    return "auth/store";
  }

  @GetMapping("/auth/store_map")
  public String storeMap() {
    return "auth/store_map";
  }

  @GetMapping("/auth/store_drive")
  public String storeDrive() {
    return "auth/store_drive";
  }

  @GetMapping("/auth/store_reserve")
  public String storeReserve() {
    return "auth/store_reserve";
  }

  @GetMapping("/auth/drink_list")
  public String drinkList() {
    return "auth/drink_list";
  }

  @GetMapping("/auth/drink_detail")
  public String drinkDetail() {
    return "auth/drink_detail";
  }

  // 로그인
  @PostMapping("/user/login")
  public @ResponseBody String login(@RequestBody User user) {
    // String name = user.getNickname();
    // String nickname = user.getNickname();
    // String email = user.getEmail();
    // String birthday = user.getBirth();

    User userEntity = userRepository.mfindByemail(user.getEmail());

    if (userEntity == null) {
      user.setName(user.getNickname());
      User principal = userRepository.save(user); // id:1, name: "정용주", nickname:"정용주", email:ssar@daum.com,
                                                  // createDate:// 자동
      session.setAttribute("principal", principal);
    } else {
      session.setAttribute("principal", userEntity);
    }

    return "OK";
  }

  @GetMapping("user/logout")
  public String logout() {
    session.invalidate();
    return "redirect:/";
  }

  
}
