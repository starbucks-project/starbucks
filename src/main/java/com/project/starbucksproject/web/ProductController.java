package com.project.starbucksproject.web;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.manager.ManagerRepository;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;

import com.project.starbucksproject.domain.user.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ProductController {

  // DI
  //private final UserRepository userRepository;
  //private final HttpSession session;
  private final ProductRepository productRepository;
  //private final ManagerRepository managerRepository;

  @GetMapping("/auth/drink_list")
  public String drinkList(Model model) {
    model.addAttribute("productsEntity", productRepository.mfindAllByCategory("drink"));
    return "auth/drink_list";
  }

  @GetMapping("/auth/drink_detail/{id}")
  public String drinkDetail(@PathVariable int id,Model model) {
    Product productEntity=productRepository.findById(id).get();
    model.addAttribute("productEntity",productEntity);
    return "auth/drink_detail";
  }

  @GetMapping("/auth/food_detail/{id}")
  public String foodDetail(@PathVariable int id,Model model) {
    Product productEntity=productRepository.findById(id).get();
    model.addAttribute("productEntity",productEntity);
    return "auth/food_detail";
  }

  @GetMapping("/auth/product_detail/{id}")
  public String productDetail(@PathVariable int id,Model model) {
    Product productEntity=productRepository.findById(id).get();
    model.addAttribute("productEntity",productEntity);
    return "auth/product_detail";
  }

  @GetMapping("/auth/food_list")
  public String foodList(Model model) {
    model.addAttribute("productsEntity", productRepository.mfindAllByCategory("food"));
    return "auth/food_list";
  }

  @GetMapping("/auth/product_list")
  public String productList(Model model) {
    model.addAttribute("productsEntity", productRepository.mfindAllByCategory("product"));
    return "auth/product_list";
  }
}
