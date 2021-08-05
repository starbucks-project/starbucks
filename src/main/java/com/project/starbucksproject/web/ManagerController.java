package com.project.starbucksproject.web;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.manager.Manager;
import com.project.starbucksproject.domain.manager.ManagerRepository;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.util.MyPath;

import org.springframework.boot.system.SystemProperties;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ManagerController {

<<<<<<< HEAD
=======
  private final ProductRepository productRepository;
>>>>>>> 196c65402ec6053e0ea061fc15fcbf951d4c8a72
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

  @GetMapping("/manager/saledProduct")
  public String saledProductForm() {
    return "manager/saledProduct";
  }

  @GetMapping("/manager/uploadForm")
  public String uploadProductForm() {
    return "manager/uploadProduct";
  }

  // 상품 업로드
  @PostMapping("/manager/upload")
  public String upload(Product product, MultipartFile productImage) {
    System.out.println("=========들어옴=========");
    System.out.println(product);

    UUID uuid = UUID.randomUUID();

    // 저장될 파일 이름
    String imageFileName = uuid + "_"+ productImage.getOriginalFilename();
    // Path imagePath = Paths.get(MyPath.IMAGEPATH + imageFileName);

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
<<<<<<< HEAD
      System.out.println("managerEntity is null");
      return "auth/managerLoginForm";
    } else {
      System.out.println("managerEntity is not null");
=======

      return "auth/managerLoginForm";
    } else {

>>>>>>> 196c65402ec6053e0ea061fc15fcbf951d4c8a72
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
