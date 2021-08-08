package com.project.starbucksproject.web;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.manager.Manager;
import com.project.starbucksproject.domain.manager.ManagerRepository;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ManagerController {

  private final UserRepository userRepository;
  private final ProductRepository productRepository;
  private final ManagerRepository managerRepository;
  private final HttpSession session;

  @GetMapping("/manager")
  public String managerHome(Model model) {
    model.addAttribute("productsEntity", productRepository.findAll());

    return "manager/managerHome";
  }

  // 상품 상세보기 페이지로 이동
  @GetMapping("/manager/detail/{id}")
  public String productDetailForm(@PathVariable int id, Model model) {
    Product productEntity = productRepository.findById(id).get();
    model.addAttribute("productEntity", productEntity);

    return "manager/productDetail";
  }

  // 상품 판매 현황 페이지로 이동
  @GetMapping("/manager/saledProduct")
  public String saledProductForm() {
    return "manager/saledProduct";
  }

  // 상품 수정 페이지로 이동
  @GetMapping("/manager/product/{id}")
  public String updateForm(@PathVariable int id, Model model) {
    Product productEntity = productRepository.findById(id).get();
    model.addAttribute("productEntity", productEntity);

    return "manager/updateProduct";
  }

  // 수정 완료 후 상품 상세보기 페이지로 이동
  @PostMapping("/manager/product/{id}")
  public String update(@PathVariable int id, Product product, MultipartFile productImage) {
    Product productEntity = productRepository.findById(id).get();

    String imageFileName = productImage.getOriginalFilename();
    productEntity.setCategory(product.getCategory());
    productEntity.setProductImg(imageFileName);
    productEntity.setProductName(product.getProductName());
    productEntity.setProductNameEng(product.getProductNameEng());
    productEntity.setProductInfo(product.getProductInfo());
    productEntity.setKcal(product.getKcal());
    productEntity.setSaturatedFat(product.getSaturatedFat());
    productEntity.setProtein(product.getProtein());
    productEntity.setNatrium(product.getNatrium());
    productEntity.setSugar(product.getSugar());
    productEntity.setCaffeine(product.getCaffeine());

    productRepository.save(productEntity);

    return "redirect:/manager/detail/{id}";
  }

  // 회원 관리 페이지 이동
  @GetMapping("/manager/userlist")
  public String userlistForm(Model model) {
    model.addAttribute("usersEntity", userRepository.findAll());
    return "manager/manageUser";
  }

  // 회원 관리 페이지에서 이름 검색 했을 때
  @PostMapping("/manager/{name}")
  public String searchUser(@PathVariable String name, Model model) {
    User userEntity = userRepository.mfindByName(name);

    return "redirect:/manager/userlist";
  }

  // 상품 등록 페이지 이동
  @GetMapping("/manager/uploadForm")
  public String uploadProductForm() {
    return "manager/uploadProduct";
  }

  // 상품 업로드
  @PostMapping("/manager/upload")
  public String upload(Product product, MultipartFile productImage) {

    System.out.println(product);

    // 저장될 파일 이름
    String imageFileName = productImage.getOriginalFilename();

    product.setProductImg(imageFileName);

    Product productEntity = productRepository.save(product);
    if (productEntity == null) {
      System.out.println("productEntity is null");
    } else {
      System.out.println(productEntity);
    }

    return "redirect:/manager";
  }

  // manager Login
  @PostMapping("/manager/login")
  public String managerLogin(Manager manager) {
    Manager managerEntity = managerRepository.mLogin(manager.getManagerId(), manager.getManagerPw());

    if (managerEntity == null) {
      System.out.println("managerEntity is null");

      return "auth/managerLoginForm";
    } else {

      session.setAttribute("managerPrincipal", managerEntity);
      return "manager/managerHome";
    }

  }

  // manager Logout
  @GetMapping("/manager/logout")
  public String managerLogout() {
    session.invalidate();
    return "redirect:/";
  }
}
