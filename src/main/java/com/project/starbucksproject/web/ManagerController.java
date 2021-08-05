package com.project.starbucksproject.web;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.manager.Manager;
import com.project.starbucksproject.domain.manager.ManagerRepository;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ManagerController {

  private final ManagerRepository managerRepository;
  private final HttpSession session;

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

  @GetMapping("/manager/uploadForm")
  public String uploadProductForm() {
    return "manager/uploadProduct";
  }

  @GetMapping("/manager/saledProduct")
  public String saledProductForm() {
    return "manager/saledProduct";
  }

  // manager Login
  @PostMapping("/manager/login")
  public String managerLogin(Manager manager) {
    Manager managerEntity = managerRepository.mLogin(manager.getManagerId(), manager.getManagerPw());

    if (managerEntity == null) {
      System.out.println("managerEntity is null");
      return "auth/managerLoginForm";
    } else {
      System.out.println("managerEntity is not null");
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
