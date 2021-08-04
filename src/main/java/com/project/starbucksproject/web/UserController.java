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
    String nickname = user.getNickname();
    String email = user.getEmail();
    String birthday = user.getBirth();

    if (userRepository.mfindByemail(email) == null) {
      userRepository.save(user);
    }
    User userEntity = userRepository.mfindByemail(email);
    session.setAttribute("principal", userEntity);

    return "OK";
  }

  @GetMapping("/manager")
  public String managerHome() {
    return "manager/managerHome";
  }

  @GetMapping("/manager/userlist")
  public String userlistForm() {
    return "manager/manageUser";
  }

  @GetMapping("/manager/detail")
  public String productDetailForm() {
    return "manager/productDetail";
  }

  @GetMapping("/manager/updateForm")
  public String updateProductForm() {
    return "manager/uploadProduct";
  }

  @GetMapping("/manager/saledProduct")
  public String saledProductForm() {
    return "manager/saledProduct";
  }

  // manager Login
  @PostMapping("/manager/login")
  public String managerLogin(Manager manager) {
    Manager managerEntity = managerRepository.mMangerLogin(manager.getManagerId(), manager.getManagerPw());

    if (managerEntity == null) {
      return "auth/managerLogin";
    } else {
      session.setAttribute("managerPrincipal", managerEntity);
      return "manager/managerHome";
    }

  }

  @GetMapping("/manager/logout")
  public String managerLogout() {
    session.invalidate();
    return "redirect:/";
  }
}
