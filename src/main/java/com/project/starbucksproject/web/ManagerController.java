package com.project.starbucksproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.starbucksproject.domain.manager.Manager;
import com.project.starbucksproject.domain.manager.ManagerRepository;
import com.project.starbucksproject.domain.product.Product;
import com.project.starbucksproject.domain.product.ProductRepository;
import com.project.starbucksproject.domain.saleditems.SaleditemsRepository;
import com.project.starbucksproject.domain.saleditems.Saleditems;
import com.project.starbucksproject.domain.user.User;
import com.project.starbucksproject.domain.user.UserRepository;
import com.project.starbucksproject.web.dto.UserSearchReqDto;
import com.project.starbucksproject.web.dto.UserSearchRespDto;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ManagerController {

  private final UserRepository userRepository;
  private final ProductRepository productRepository;
  private final ManagerRepository managerRepository;
  private final SaleditemsRepository saledItemsRepository;
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
  public String saledProductForm(Model model, Integer page) {
    if (page == null) {
      page = 0;
    }
    // 총 판매량
    Long amount = managerRepository.mfindAmount();

    Long totalPrice = managerRepository.mTotalprice();
    model.addAttribute("amount", amount);
    model.addAttribute("totalPrice", totalPrice);

    model.addAttribute("saledItemsEntity", saledItemsRepository.findAll(PageRequest.of(page, 5)));

    return "manager/saledProduct";
  }

  // 판매현황 페이지에서 이름 검색 했을 때
  @PostMapping("/manager/saleditemsByName")
  public @ResponseBody UserSearchRespDto<List> saledItemsByName(@RequestBody UserSearchReqDto dto) {
    User userEntity = userRepository.mfindByName(dto.getName());
    int userId = userEntity.getId();

    List<Saleditems> saleditemsEntity = saledItemsRepository.mfindByUsername(userId);

    if (saleditemsEntity != null) {
      return new UserSearchRespDto<>(1, "이름 검색 성공", saleditemsEntity);
    } else {
      return new UserSearchRespDto<>(-1, "이름 검색 실패", saleditemsEntity);
    }
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
    System.out.println("imageFileName : " + imageFileName);
    if (imageFileName == null || imageFileName.equals("")) {
    } else {
      productEntity.setProductImg(imageFileName);
    }
    productEntity.setCategory(product.getCategory());
    productEntity.setProductName(product.getProductName());
    productEntity.setProductNameEng(product.getProductNameEng());
    productEntity.setPrice(product.getPrice());
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
  public String userlistForm(Model model, Integer page) {

    if (page == null) {
      page = 0;
    }

    Model userEntity = model.addAttribute("usersEntity", userRepository.findAll(PageRequest.of(page, 5)));
    
    System.out.println("================\n" + userEntity);

    return "manager/manageUser";
  }

  

  // 회원 관리 페이지에서 이름 검색 했을 때
  @PostMapping("/manager/searchname")
  public @ResponseBody UserSearchRespDto<User> searchUser(@RequestBody UserSearchReqDto dto) {
    User userEntity = userRepository.mfindByName(dto.getName());

    if (userEntity != null) {
      return new UserSearchRespDto<>(1, "사용자 찾기 성공", userEntity);
    } else {
      return new UserSearchRespDto<>(-1, "사용자 찾기 실패", userEntity);
    }
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
      return "redirect:/manager";
    }

  }

  // manager Logout
  @GetMapping("/manager/logout")
  public String managerLogout() {
    session.invalidate();
    return "redirect:/";
  }
}