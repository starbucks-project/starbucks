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

  // manager
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

}
