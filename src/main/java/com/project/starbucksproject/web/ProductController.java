package com.project.starbucksproject.web;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.manager.Manager;
import com.project.starbucksproject.domain.manager.ManagerRepository;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ProductController {

  // DI
  private final UserRepository userRepository;
  private final HttpSession session;
  private final ProductRepository productRepository;
  private final ManagerRepository managerRepository;

  @GetMapping("/auth/drink_list")
  public String drinkList(Model model) {
    model.addAttribute("productsEntity", productRepository.findAll());
    return "auth/drink_list";
  }

  @GetMapping("/auth/drink_detail")
  public String drinkDetail() {
    return "auth/drink_detail";
  }

}
