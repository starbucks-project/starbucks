package com.project.starbucksproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
  @GetMapping("/auth/login")
  public String loginForm() {
    return "auth/loginForm";
  }

  @GetMapping("/auth/manager/login")
  public String managerLoginForm() {
    return "auth/managerLoginForm";
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
                     
}
