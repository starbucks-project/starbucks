package com.project.starbucksproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.card.Card;
import com.project.starbucksproject.domain.card.CardRepository;
import com.project.starbucksproject.domain.manager.ManagerRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
  private final CardRepository cardRepository;

  // 로그인 페이지
  @GetMapping("/auth/login")
  public String loginForm() {
    return "auth/loginForm";
  }

  // 매니저 로그인 페이지
  @GetMapping("/auth/manager/loginform")
  public String managerLoginForm() {
    return "auth/managerLoginForm";
  }

  // 메뉴 페이지
  @GetMapping("/menu")
  public String menu() {
    return "auth/menu";
  }

  // 스토어 페이지
  @GetMapping("/store")
  public String store() {
    return "auth/store";
  }

  // 지도 페이지
  @GetMapping("/auth/store_map")
  public String storeMap() {
    return "auth/store_map";
  }

  // 드라이브 스루 페이지
  @GetMapping("/auth/store_drive")
  public String storeDrive() {
    return "auth/store_drive";
  }

  // 리저브 매장 페이지
  @GetMapping("/auth/store_reserve")
  public String storeReserve() {
    return "auth/store_reserve";
  }

  // 로그인
  @PostMapping("/user/login")
  public @ResponseBody String login(@RequestBody User user) {

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
    // System.out.println(session.getAttribute("principal"));
    User userEntity = (User) session.getAttribute("principal");

    // 로그인 안되어 있다면 메인 페이지로 이동
    if (userEntity == null) {
      return "/";
    }

    session.invalidate();
    // System.out.println(session.getAttribute("principal"));
    return "redirect:/";
  }

  @GetMapping("user/userinfo/{id}")
  public String userinfo(@PathVariable int id, Model model) {
    User userEntity = userRepository.findById(id).get();
    User loginedUser = (User) session.getAttribute("principal");
    int loginedId = loginedUser.getId();
    if (id != loginedId) {
      return "/auth/login";
    }
    model.addAttribute("userEntity", userEntity);

    return "/user/userinfoUpdateForm";
  }

  @GetMapping("/user/mypage")
  public String myPageForm(Model model) {
    User principal = (User) session.getAttribute("principal");
    if (principal == null) {
<<<<<<< HEAD
      return "redirect:/auth/login";
=======
      return "auth/login";
>>>>>>> 60d3a190aaf4563449544e76fcbb7917afd60954
    }
    int userid = principal.getId();

    List<Card> cardsEntity = cardRepository.mfindByAlluserId(userid);
    model.addAttribute("cardsEntity", cardsEntity);
    return "user/mypage";
  }

  @PostMapping("user/userinfo/{id}")
  public String userinfoUpdate(@PathVariable int id, User user) {
    User userEntity = userRepository.findById(id).get();
    User loginedUser = (User) session.getAttribute("principal");
    int loginedId = loginedUser.getId();
    if (id != loginedId) {
      return "auth/login";
    }
    userEntity.setName(user.getName());
    userEntity.setYear(user.getYear());
    userEntity.setMonth(user.getMonth());
    userEntity.setDate(user.getDate());
    userEntity.setNickname(user.getNickname());
    userEntity.setPhoneNum(user.getPhoneNum());

    System.out.println(userEntity);
    userRepository.save(userEntity);
    session.setAttribute("principal", userEntity);

    return "redirect:/user/mypage";
  }

}
